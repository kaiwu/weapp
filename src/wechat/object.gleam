
pub type JsObject {
  JsObject
}

@external(javascript, "../wechat_ffi.mjs", "obj_new")
pub fn new() -> Result(JsObject, Nil)

@external(javascript, "../wechat_ffi.mjs", "obj_get")
pub fn get(o: JsObject, k: k) -> Result(JsObject, Nil)

@external(javascript, "../wechat_ffi.mjs", "obj_set")
pub fn set(o: JsObject, k: k, v: v) -> Result(JsObject, Nil)

