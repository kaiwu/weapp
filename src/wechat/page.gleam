import gleam/javascript/array.{type Array}
import wechat/object.{type JsObject}

pub type Page

@external(javascript, "../wechat_ffi.mjs", "get_current_pages")
pub fn get_current_pages() -> Array(JsObject)
