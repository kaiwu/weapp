import gleam/dynamic.{type Dynamic, type DecodeErrors, type Decoder}
import gleam/list
import gleam/result
import gleam/string
import gleam/dict.{type Dict}

pub type JsObject {
  JsObject
}

pub type WechatError {
  NilError(n: Nil)
  WechatError(e: String)
  WechatDecodeError(es: DecodeErrors)
}

pub type WechatResult = Result(JsObject, WechatError)
pub type WechatCallback = fn() -> Nil

@external(javascript, "../wechat_ffi.mjs", "obj_new")
pub fn new() -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_stringify")
pub fn stringify() -> String

@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn dynamic(o: JsObject) -> Dynamic

@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn dict(o: JsObject) -> Dict(String, JsObject)

@external(javascript, "../wechat_ffi.mjs", "obj_get")
pub fn path(o: JsObject, k: k) -> Result(JsObject, WechatError)

pub fn exist(o: JsObject, k: k) -> Bool {
  path(o, k)
  |> result.is_ok
}

pub fn paths(o: JsObject, path p: String) -> Result(JsObject, WechatError) {
    string.split(p, ".")
    |> list.try_fold(o, fn(xo, xp) { path(xo, xp) })
}

pub fn get(o: JsObject, k: k) -> Result(Dynamic, WechatError) {
    path(o, k)
    |> result.map(dynamic)
}

pub fn get_kv(o: JsObject, key k: String) -> Result(JsObject, WechatError) {
    dict(o)
    |> dict.get(k)
    |> result.map_error(NilError(_))
}

@external(javascript, "../wechat_ffi.mjs", "obj_set")
pub fn set(o: JsObject, k: k, v: v) -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_assign")
pub fn merge(o: JsObject, n: JsObject) -> JsObject

pub fn literal(ls: List(#(k, v))) -> JsObject {
  list.fold(ls, new(), fn(o, p) {set(o, p.0, p.1)}) 
}

pub fn int(o: Dynamic) -> Result(Int, WechatError) {
  dynamic.int(o)
  |> result.map_error(WechatDecodeError(_))
}

pub fn float(o: Dynamic) -> Result(Float, WechatError) {
  dynamic.float(o)
  |> result.map_error(WechatDecodeError(_))
}

pub fn bool(o: Dynamic) -> Result(Bool, WechatError) {
  dynamic.bool(o)
  |> result.map_error(WechatDecodeError(_))
}

pub fn string(o: Dynamic) -> Result(String, WechatError) {
  dynamic.string(o)
  |> result.map_error(WechatDecodeError(_))
}

pub fn field(o: Dynamic, name a: name, of b: Decoder(t)) -> Result(t, WechatError) {
  dynamic.field(a, b)(o)
  |> result.map_error(WechatDecodeError(_))
}

pub fn list(o: Dynamic, of f: fn(Dynamic) -> Result(t, DecodeErrors)) -> Result(List(t), WechatError) {
  dynamic.list(f)(o)
  |> result.map_error(WechatDecodeError(_))
}
