import wechat/object.{type JsObject}

pub type App

@external(javascript, "../wechat_ffi.mjs", "get_app")
pub fn get_app() -> JsObject

@external(javascript, "../wechat_ffi.mjs", "set_timeout")
pub fn set_timeout(callback cb: fn(JsObject) -> Nil, delay d: Int, with o: JsObject) -> Int

@external(javascript, "../wechat_ffi.mjs", "clear_timeout")
pub fn clear_timeout(id id: Int) -> Nil

@external(javascript, "../wechat_ffi.mjs", "set_interval")
pub fn set_interval(callback cb: fn(JsObject) -> Nil, delay d: Int, with o: JsObject) -> Int

@external(javascript, "../wechat_ffi.mjs", "clear_interval")
pub fn clear_interval(id id: Int) -> Nil

@external(javascript, "../wechat_ffi.mjs", "decode_uri_component")
pub fn decode_uri_component(uri: String) -> JsObject
