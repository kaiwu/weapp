import gleam/dynamic.{type Dynamic, type DecodeErrors, type Decoder}
import gleam/list
import gleam/result
import gleam/string

pub type JsObject {
  JsObject
}

pub type WechatError {
  NilError(n: Nil)
  WechatError(e: String)
  WechatDecodeError(es: DecodeErrors)
}

@external(javascript, "../wechat_ffi.mjs", "obj_new")
pub fn new() -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_dynamic")
pub fn dynamic(o: JsObject) -> Dynamic

@external(javascript, "../wechat_ffi.mjs", "obj_get")
pub fn path(o: JsObject, k: k) -> Result(JsObject, WechatError)

pub fn paths(o: JsObject, path p: String) -> Result(JsObject, WechatError) {
    string.split(p, ".")
    |> list.try_fold(o, fn(xo, xp) { path(xo, xp) })
}

pub fn get(o: JsObject, k: k) -> Result(Dynamic, WechatError) {
    path(o, k)
    |> result.map(dynamic)
}

@external(javascript, "../wechat_ffi.mjs", "obj_set")
pub fn set(o: JsObject, k: k, v: v) -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_assign")
pub fn merge(o: JsObject, n: JsObject) -> JsObject

pub fn literal(ls: List(#(k, v))) -> JsObject {
  list.fold(ls, new(), fn(o, p) {set(o, p.0, p.1)}) 
}

pub fn int(o: Dynamic) -> Result(Int, WechatError) {
  case dynamic.int(o) {
    Ok(i) -> Ok(i)
    Error([f, ..t]) -> Error(WechatDecodeError([f, ..t]))
    Error([]) -> Error(WechatError(""))
  }
}

pub fn bool(o: Dynamic) -> Result(Bool, WechatError) {
  case dynamic.bool(o) {
    Ok(i) -> Ok(i)
    Error([f, ..t]) -> Error(WechatDecodeError([f, ..t]))
    Error([]) -> Error(WechatError(""))
  }
}

pub fn string(o: Dynamic) -> Result(String, WechatError) {
  case dynamic.string(o) {
    Ok(i) -> Ok(i)
    Error([f, ..t]) -> Error(WechatDecodeError([f, ..t]))
    Error([]) -> Error(WechatError(""))
  }
}

pub fn field(o: Dynamic, name a: name, of b: Decoder(t)) -> Result(t, WechatError) {
   case dynamic.field(a, b)(o) {
     Ok(x) -> Ok(x)
     Error([f, ..t]) -> Error(WechatDecodeError([f, ..t]))
     Error([]) -> Error(WechatError(""))
   }
}

pub fn list(o: Dynamic, of f: fn(Dynamic) -> Result(t, DecodeErrors)) -> Result(List(t), WechatError) {
   case dynamic.list(f)(o) {
     Ok(x) -> Ok(x)
     Error([f, ..t]) -> Error(WechatDecodeError([f, ..t]))
     Error([]) -> Error(WechatError(""))
   }
}
