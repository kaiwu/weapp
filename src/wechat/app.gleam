import wechat/object.{type JsObject}

pub type App

@external(javascript, "../wechat_ffi.mjs", "get_app")
pub fn get_app() -> JsObject
