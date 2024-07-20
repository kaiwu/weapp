//// page module provides miniprogram `page` bindings
//// details in [wechat document](https://developer.weixin.qq.com) 
////

import gleam/javascript/array.{type Array}
import gleam/javascript/promise.{type Promise}
import gleam/result
import wechat/object.{type JsObject, type WechatResult}

/// page constructor `Page({...})`
/// 
@external(javascript, "../wechat_ffi.mjs", "run_page")
pub fn run_page(o: JsObject) -> Nil

/// global function `getCurrentPages()`
///
@external(javascript, "../wechat_ffi.mjs", "get_current_pages")
pub fn get_current_pages() -> Array(JsObject)

/// get the current page
///
pub fn current_page() -> JsObject {
  let ps = get_current_pages()

  array.get(ps, array.size(ps) - 1)
  |> result.unwrap(object.new())
}

/// get `data` of render layer for the current page
///
pub fn get_data(index: Int) -> WechatResult {
  let ps = get_current_pages()
  case array.get(ps, array.size(ps) - index - 1) {
    Ok(p) -> object.path(p, "data")
    Error(_) -> Error(object.WechatError("no such page"))
  }
}

/// set `data` of render layer for the specified page
/// aysnc, returns Promise
///
@external(javascript, "../wechat_ffi.mjs", "set_data")
pub fn set_data(
  page p: JsObject,
  data d: JsObject,
  callback f: fn() -> Nil,
) -> Promise(WechatResult)

/// `page.selectComponent()` for the specified page
///
@external(javascript, "../wechat_ffi.mjs", "select_component")
pub fn select_component(page p: JsObject, component c: String) -> JsObject

/// page utility function `page.route()`
///
@external(javascript, "../wechat_ffi.mjs", "page_route")
pub fn route(page p: JsObject) -> String
