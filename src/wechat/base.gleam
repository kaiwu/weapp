import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatResult, type WechatCallback}

@external(javascript, "../wechat_base_ffi.mjs", "switchTab")
pub fn switch_tab(url: String, cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "reLaunch")
pub fn relaunch(url: String, cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "navigateTo")
pub fn navigate_to(url: String, cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "navigateBack")
pub fn navigate_back(delta: Int, cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "request")
fn wx_request(o: JsObject) -> Promise(WechatResult)

pub fn request(
  method m: String,
  url u: String,
  header h: JsObject,
  data d: JsObject,
  complete cb: fn() -> Nil
) -> Promise(WechatResult) {
  object.literal([#("method", m), #("url", u)])
  |> object.merge(object.literal([#("header", h), #("data", d)]))
  |> object.set("complete", cb)
  |> wx_request
}
