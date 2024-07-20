//// object module provides core javascript object model
//// it is like a `gleam/json` object with functions
////
//// # Examples
////
//// ```gleam
//// > object.literal([#("s", "a string"), #("ss", "another string")])
//// > |> object.set("i", 42)
//// > |> object.set("f", fn(i) { i + 1 })
//// ```
////
//// is exactly like
////
//// ```js
//// {
////   s: 'a string',
////   ss: 'another string',
////   i: 42,
////   f(i) { i + 1 }
//// }
//// ```
////

import gleam/dict.{type Dict}
import gleam/dynamic.{type DecodeErrors, type Decoder, type Dynamic}
import gleam/json.{type Json}
import gleam/list
import gleam/result
import gleam/string

/// JsObject models a javascript object
///
pub type JsObject {
  JsObject
}

/// error constructors
///
pub type WechatError {
  NilError(n: Nil)
  WechatError(e: String)
  WechatDecodeError(es: DecodeErrors)
}

/// most APIs returns either this
/// or a Promise of this type
///
pub type WechatResult =
  Result(JsObject, WechatError)

/// most simple callbacks are of this type
///
pub type WechatCallback =
  fn() -> Nil

/// constructor of an empty javascript object
///
@external(javascript, "../wechat_ffi.mjs", "obj_new")
pub fn new() -> JsObject

/// `JSON.stringify` for the javascript object
///
@external(javascript, "../wechat_ffi.mjs", "obj_stringify")
pub fn stringify(o: JsObject) -> String

/// convert to `gleam/dynamic`
///
@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn dynamic(o: JsObject) -> Dynamic

/// convert to `gleam/dict`
///
@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn dict(o: JsObject) -> Dict(String, JsObject)

/// convert to `gleam/json`
///
@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn json(o: JsObject) -> Json

/// retrieve a sub javascript object by key `k`
///
@external(javascript, "../wechat_ffi.mjs", "obj_get")
pub fn path(o: JsObject, k: k) -> Result(JsObject, WechatError)

/// execute synchronously with prameter `v` if this object is a function
///
@external(javascript, "../wechat_ffi.mjs", "obj_call")
pub fn call(o: JsObject, v: v) -> Result(JsObject, WechatError)

/// check if a key `k` exists
///
pub fn exist(o: JsObject, k: k) -> Bool {
  path(o, k)
  |> result.is_ok
}

/// retrive recursively the sub javascript object by path
///
/// # Examples
///
/// ```gleam
///
/// let f = fn(x) { x + 1 }
/// let b = object.literal([#("a", f)])
/// object.literal([#("b", b)])
/// |> object.paths("b.a")
/// |> result.map(type_of)
/// |> should.equal(Ok(javascript.FunctionType))
///
/// ```
///
pub fn paths(o: JsObject, path p: String) -> Result(JsObject, WechatError) {
  string.split(p, ".")
  |> list.try_fold(o, fn(xo, xp) { path(xo, xp) })
}

/// alias for `path`
///
pub fn get(o: JsObject, k: k) -> Result(JsObject, WechatError) {
  path(o, k)
}

/// retrive a sub javascript object by key `k`
/// as if it were a `dict(String, JsObject)`
///
pub fn get_kv(o: JsObject, key k: String) -> Result(JsObject, WechatError) {
  dict(o)
  |> dict.get(k)
  |> result.map_error(NilError(_))
}

/// set a key `k` with value `v`
///
/// # Examples
///
/// ```gleam
///
/// object.new()
/// |> object.set("a", 1)
/// |> object.get("a")
/// |> result.try(object.int)
/// |> should.equal(Ok(1))
///
/// ```
///
@external(javascript, "../wechat_ffi.mjs", "obj_set")
pub fn set(o: JsObject, k: k, v: v) -> JsObject

/// merge two javascript objects
///
@external(javascript, "../wechat_ffi.mjs", "obj_assign")
pub fn merge(o: JsObject, n: JsObject) -> JsObject

/// convenient constructor if the `(k, v)` pairs are of same type
/// since gleam is strongly typed
///
pub fn literal(ls: List(#(k, v))) -> JsObject {
  list.fold(ls, new(), fn(o, p) { set(o, p.0, p.1) })
}

/// convert to int with `gleam/dynamic`
///
pub fn int(o: JsObject) -> Result(Int, WechatError) {
  o
  |> dynamic
  |> dynamic.int
  |> result.map_error(WechatDecodeError(_))
}

/// convert to float with `gleam/dynamic`
///
pub fn float(o: JsObject) -> Result(Float, WechatError) {
  o
  |> dynamic
  |> dynamic.float
  |> result.map_error(WechatDecodeError(_))
}

/// convert to bool with `gleam/dynamic`
///
pub fn bool(o: JsObject) -> Result(Bool, WechatError) {
  o
  |> dynamic
  |> dynamic.bool
  |> result.map_error(WechatDecodeError(_))
}

/// convert to string with `gleam/dynamic`
///
pub fn string(o: JsObject) -> Result(String, WechatError) {
  o
  |> dynamic
  |> dynamic.string
  |> result.map_error(WechatDecodeError(_))
}

/// retrieve and convert a sub object with key `a` of type `t`
/// using the decoder of type `Decoder(t)`, thanks to `gleam/dynamic`
///
pub fn field(
  o: JsObject,
  name a: name,
  of b: Decoder(t),
) -> Result(t, WechatError) {
  o
  |> dynamic
  |> dynamic.field(a, b)
  |> result.map_error(WechatDecodeError(_))
}

/// convert to `list(t)` with `gleam/dynamic`
///
pub fn list(
  o: JsObject,
  of f: fn(Dynamic) -> Result(t, DecodeErrors),
) -> Result(List(t), WechatError) {
  o
  |> dynamic
  |> dynamic.list(f)
  |> result.map_error(WechatDecodeError(_))
}
