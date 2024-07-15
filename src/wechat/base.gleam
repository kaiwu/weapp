import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatResult, type WechatCallback}

@external(javascript, "../wechat_base_ffi.mjs", "login")
pub fn login(complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "checkSession")
pub fn check_session(complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "setStorage")
pub fn set_storage(key k: String, value v:JsObject, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "getStorage")
pub fn get_storage(key k: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "removeStorage")
pub fn remove_storage(key k: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "saveFile")
pub fn save_file(path p: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "openDocument")
pub fn open_document(path p: String, of t: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "uploadFile")
pub fn upload_file(to url: String, path p: String, header h: JsObject, form f: JsObject, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "getSystemInfo")
pub fn get_system_info(complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "getSetting")
pub fn get_setting(subscriptions s: Bool, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "setClipboardData")
pub fn set_clipboard(data d: JsObject, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "setNavigationBarTitle")
pub fn set_navigation_bar(title t: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "vibrateShort")
pub fn vibrate_short(of t: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "showTabbar")
pub fn show_tabbar(animation a: Bool, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "hideTabbar")
pub fn hide_tabbar(animation a: Bool, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "showLoading")
pub fn show_loading(title t: String, mask m:Bool, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "hideLoading")
pub fn hide_loading(complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "showToast")
pub fn show_toast(title t: String, icon i:String, mask m:Bool, duration d:Int, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "switchTab")
pub fn switch_tab(to url: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "reLaunch")
pub fn relaunch(to url: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "navigateTo")
pub fn navigate_to(to url: String, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "navigateBack")
pub fn navigate_back(by delta: Int, complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "getPrivacySetting")
pub fn get_privacy_setting(complete cb: WechatCallback) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "getPrivacyContract")
pub fn get_privacy_contract(complete cb: WechatCallback) -> Promise(WechatResult)

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

@external(javascript, "../wechat_base_ffi.mjs", "requestPayment")
fn wx_request_payment(o: JsObject) -> Promise(WechatResult)

pub fn request_payment(
  time_stamp t: String,
  nonce_str n: String,
  pkg p: String,
  sign_type s: String,
  pay_sign ps: String,
  complete cb: fn() -> Nil
) -> Promise(WechatResult) {
  object.literal(
    [#("timeStamp", t),
    #("nonceStr", n),
    #("package", p),
    #("signType", s),
    #("paySign", ps)],
  )
  |> object.set("complete", cb)
  |> wx_request_payment
}

