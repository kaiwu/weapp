//// base module provides frequently used miniprogram APIs
//// extend them as much as one needs, all wechat bindings
//// are asynchronous and returns a Promise
////

import gleam/int
import gleam/javascript/promise.{type Promise}
import gleam/list
import gleam/result
import gleam/string
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// `wx.login`
///
@external(javascript, "../wechat_base_ffi.mjs", "login")
pub fn login(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.checkSession`
///
@external(javascript, "../wechat_base_ffi.mjs", "checkSession")
pub fn check_session(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.setStorage`
///
@external(javascript, "../wechat_base_ffi.mjs", "setStorage")
pub fn set_storage(
  key k: String,
  value v: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getStorage`
///
@external(javascript, "../wechat_base_ffi.mjs", "getStorage")
pub fn get_storage(
  key k: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.removeStorage`
///
@external(javascript, "../wechat_base_ffi.mjs", "removeStorage")
pub fn remove_storage(
  key k: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.saveFile`
///
@external(javascript, "../wechat_base_ffi.mjs", "saveFile")
pub fn save_file(
  path p: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.openDocument`
///
@external(javascript, "../wechat_base_ffi.mjs", "openDocument")
pub fn open_document(
  path p: String,
  of t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.uploadFile`
///
@external(javascript, "../wechat_base_ffi.mjs", "uploadFile")
pub fn upload_file(
  to url: String,
  path p: String,
  header h: JsObject,
  form f: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getSystemInfo`
///
@external(javascript, "../wechat_base_ffi.mjs", "getSystemInfo")
pub fn get_system_info(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getSetting`
///
@external(javascript, "../wechat_base_ffi.mjs", "getSetting")
pub fn get_setting(
  subscriptions s: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setClipboardData`
///
@external(javascript, "../wechat_base_ffi.mjs", "setClipboardData")
pub fn set_clipboard(
  data d: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setNavigationBarTitle`
///
@external(javascript, "../wechat_base_ffi.mjs", "setNavigationBarTitle")
pub fn set_navigation_bar(
  title t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.vibrateShort`
///
@external(javascript, "../wechat_base_ffi.mjs", "vibrateShort")
pub fn vibrate_short(
  of t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.showTabbar`
///
@external(javascript, "../wechat_base_ffi.mjs", "showTabbar")
pub fn show_tabbar(
  animation a: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.hideTabbar`
///
@external(javascript, "../wechat_base_ffi.mjs", "hideTabbar")
pub fn hide_tabbar(
  animation a: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.showLoading`
///
@external(javascript, "../wechat_base_ffi.mjs", "showLoading")
pub fn show_loading(
  title t: String,
  mask m: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.hideLoading`
///
@external(javascript, "../wechat_base_ffi.mjs", "hideLoading")
pub fn hide_loading(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.showToast`
///
@external(javascript, "../wechat_base_ffi.mjs", "showToast")
pub fn show_toast(
  title t: String,
  icon i: String,
  mask m: Bool,
  duration d: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.switchTab`
///
@external(javascript, "../wechat_base_ffi.mjs", "switchTab")
pub fn switch_tab(
  to url: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.reLaunch`
///
@external(javascript, "../wechat_base_ffi.mjs", "reLaunch")
pub fn relaunch(
  to url: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.navigateTo`
///
@external(javascript, "../wechat_base_ffi.mjs", "navigateTo")
pub fn navigate_to(
  to url: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.navigateBack`
///
@external(javascript, "../wechat_base_ffi.mjs", "navigateBack")
pub fn navigate_back(
  by delta: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getPrivacySetting`
///
@external(javascript, "../wechat_base_ffi.mjs", "getPrivacySetting")
pub fn get_privacy_setting(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getPrivacyContract`
///
@external(javascript, "../wechat_base_ffi.mjs", "getPrivacyContract")
pub fn get_privacy_contract(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

@external(javascript, "../wechat_base_ffi.mjs", "request")
fn wx_request(o: JsObject) -> Promise(WechatResult)

/// `wx.request`
///
pub fn request(
  method m: String,
  url u: String,
  header h: JsObject,
  data d: JsObject,
  complete cb: fn() -> Nil,
) -> Promise(WechatResult) {
  object.literal([#("method", m), #("url", u)])
  |> object.merge(object.literal([#("header", h), #("data", d)]))
  |> object.set("complete", cb)
  |> wx_request
}

@external(javascript, "../wechat_base_ffi.mjs", "requestPayment")
fn wx_request_payment(o: JsObject) -> Promise(WechatResult)

/// `wx.requestPayment`
///
pub fn request_payment(
  time_stamp t: String,
  nonce_str n: String,
  pkg p: String,
  sign_type s: String,
  pay_sign ps: String,
  complete cb: fn() -> Nil,
) -> Promise(WechatResult) {
  object.literal([
    #("timeStamp", t),
    #("nonceStr", n),
    #("package", p),
    #("signType", s),
    #("paySign", ps),
  ])
  |> object.set("complete", cb)
  |> wx_request_payment
}

fn to_int(s: String) -> Int {
  int.parse(s)
  |> result.unwrap(0)
}

/// utility function convert string to wechat payment
///
/// # Examples
/// 
/// ```gleam
/// > to_payment("2.9")
/// 290
///
/// > to_payment("129.013")
/// 12901
/// ```
pub fn to_payment(p: String) -> Int {
  let t3 =
    string.to_graphemes(p)
    |> list.fold(#(0, 0, 0), fn(t, c) {
      let i = to_int(c)
      case c {
        "." -> #(t.0, t.1, 1)
        "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ->
          case t {
            #(a, b, 0) -> #(a * 10 + i, b, 0)
            #(a, b, 1) -> #(a, b * 10 + i, 2)
            #(a, b, 2) -> #(a, b * 10 + i, 3)
            _ -> t
          }
        _ -> t
      }
    })

  case t3.2 {
    2 -> t3.0 * 100 + t3.1 * 10
    _ -> t3.0 * 100 + t3.1
  }
}

/// javascript Date object
///
pub type Date

/// get timestamp of `Date`
///
@external(javascript, "../wechat_base_ffi.mjs", "now")
pub fn now() -> Date

/// utility function to convert `Date` to local YYYY-MM-DD
/// asynchronous, a test is written as showcase
///
@external(javascript, "../wechat_base_ffi.mjs", "ymd")
pub fn ymd(d: Date) -> Promise(WechatResult)
