import gleam/dynamic.{type Dynamic}
import gleam/list

pub type JsObject {
  JsObject
}

@external(javascript, "../wechat_ffi.mjs", "obj_new")
pub fn new() -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_get")
pub fn get(o: JsObject, k: k) -> Result(Dynamic, Nil)

@external(javascript, "../wechat_ffi.mjs", "obj_set")
pub fn set(o: JsObject, k: k, v: v) -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_assign")
pub fn merge(o: JsObject, n: JsObject) -> JsObject

pub fn literal(ls: List(#(k, v))) -> JsObject {
  list.fold(ls, new(), fn(o, p) {set(o, p.0, p.1)}) 
}
