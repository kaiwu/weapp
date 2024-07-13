import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatError}

@external(javascript, "../wechat_base_ffi.mjs", "switchTab")
pub fn switch_tab(o: JsObject) -> Promise(Nil)

@external(javascript, "../wechat_base_ffi.mjs", "reLaunch")
pub fn relaunch(o: JsObject) -> Promise(Nil)

@external(javascript, "../wechat_base_ffi.mjs", "navigateTo")
pub fn navigate_to(o: JsObject) -> Promise(Nil)

@external(javascript, "../wechat_base_ffi.mjs", "navigateBack")
pub fn navigate_back(o: JsObject) -> Promise(Nil)

@external(javascript, "../wechat_base_ffi.mjs", "request")
fn wx_request(o: JsObject) -> Promise(Result(JsObject, WechatError))

pub fn request(
  method m: String,
  url u: String,
  header h: JsObject,
  data d: JsObject,
  complete cb: fn() -> Nil
) -> Promise(Result(JsObject, WechatError)) {
  object.literal([#("method", m), #("url", u)])
  |> object.merge(object.literal([#("header", h), #("data", d)]))
  |> object.set("complete", cb)
  |> wx_request
}
