import gleam/dynamic.{type Dynamic, type DecodeErrors, type Decoder}
import gleam/list
import gleam/result
import gleam/string
import gleam/json.{type Json}
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
pub fn stringify(o: JsObject) -> String

@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn dynamic(o: JsObject) -> Dynamic

@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn dict(o: JsObject) -> Dict(String, JsObject)

@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn json(o: JsObject) -> Json

@external(javascript, "../wechat_ffi.mjs", "obj_get")
pub fn path(o: JsObject, k: k) -> Result(JsObject, WechatError)

@external(javascript, "../wechat_ffi.mjs", "obj_call")
pub fn call(o: JsObject, k: k) -> Result(JsObject, WechatError)

pub fn exist(o: JsObject, k: k) -> Bool {
  path(o, k)
  |> result.is_ok
}

pub fn paths(o: JsObject, path p: String) -> Result(JsObject, WechatError) {
    string.split(p, ".")
    |> list.try_fold(o, fn(xo, xp) { path(xo, xp) })
}

pub fn get(o: JsObject, k: k) -> Result(JsObject, WechatError) {
    path(o, k)
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

pub fn int(o: JsObject) -> Result(Int, WechatError) {
  o
  |> dynamic
  |> dynamic.int
  |> result.map_error(WechatDecodeError(_))
}

pub fn float(o: JsObject) -> Result(Float, WechatError) {
  o
  |> dynamic
  |> dynamic.float
  |> result.map_error(WechatDecodeError(_))
}

pub fn bool(o: JsObject) -> Result(Bool, WechatError) {
  o
  |> dynamic
  |> dynamic.bool
  |> result.map_error(WechatDecodeError(_))
}

pub fn string(o: JsObject) -> Result(String, WechatError) {
  o
  |> dynamic
  |> dynamic.string
  |> result.map_error(WechatDecodeError(_))
}

pub fn field(o: JsObject, name a: name, of b: Decoder(t)) -> Result(t, WechatError) {
  o
  |> dynamic
  |> dynamic.field(a, b)
  |> result.map_error(WechatDecodeError(_))
}

pub fn list(o: JsObject, of f: fn(Dynamic) -> Result(t, DecodeErrors)) -> Result(List(t), WechatError) {
  o
  |> dynamic
  |> dynamic.list(f)
  |> result.map_error(WechatDecodeError(_))
}
