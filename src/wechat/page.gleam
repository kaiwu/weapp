import gleam/javascript/array.{type Array}
import gleam/dynamic.{type Dynamic}

pub type Page

@external(javascript, "../wechat_ffi.mjs", "get_current_pages")
pub fn get_current_pages() -> Array(Dynamic)
