import gleam/javascript/array.{type Array}
import wechat/object.{type JsObject, type WechatError}

pub type Page

@external(javascript, "../wechat_ffi.mjs", "get_current_pages")
pub fn get_current_pages() -> Array(JsObject)

pub fn get_data(index: Int) -> Result(JsObject, WechatError) {
  let ps = get_current_pages()
  case array.get(ps, array.size(ps) - index - 1) {
      Ok(p) -> object.path(p, "data")
      Error(_) -> Error(object.WechatError("no such page"))
  }
}
