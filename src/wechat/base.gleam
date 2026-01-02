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

/// `wx.clearStorage`
///
@external(javascript, "../wechat_base_ffi.mjs", "clearStorage")
pub fn clear_storage(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getStorageInfo`
///
@external(javascript, "../wechat_base_ffi.mjs", "getStorageInfo")
pub fn get_storage_info(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.saveFile`
///
@external(javascript, "../wechat_base_ffi.mjs", "saveFile")
pub fn save_file(
  path p: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getFileInfo`
///
@external(javascript, "../wechat_base_ffi.mjs", "getFileInfo")
pub fn get_file_info(
  path p: String,
  digest_algorithm a: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getSavedFileList`
///
@external(javascript, "../wechat_base_ffi.mjs", "getSavedFileList")
pub fn get_saved_file_list(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.removeSavedFile`
///
@external(javascript, "../wechat_base_ffi.mjs", "removeSavedFile")
pub fn remove_saved_file(
  file_path fp: String,
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

/// wx.getSystemInfo is duplicated to keep backward compatibility
@external(javascript, "../wechat_ffi.mjs", "getSystemInfo")
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

/// `wx.getClipboardData`
///
@external(javascript, "../wechat_base_ffi.mjs", "getClipboardData")
pub fn get_clipboard(complete cb: WechatCallback) -> Promise(WechatResult)

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

/// `wx.vibrateLong`
///
@external(javascript, "../wechat_base_ffi.mjs", "vibrateLong")
pub fn vibrate_long(complete cb: WechatCallback) -> Promise(WechatResult)

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

/// `wx.redirectTo`
/// Redirect to page in app, closing current page
///
@external(javascript, "../wechat_base_ffi.mjs", "redirectTo")
pub fn redirect_to(
  to url: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.rewriteRoute`
/// Rewrite route with new parameters
///
@external(javascript, "../wechat_base_ffi.mjs", "rewriteRoute")
pub fn rewrite_route(
  options o: JsObject,
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
/// Simplified request using object builder pattern
/// For more control, use wechat/network.request() which accepts explicit parameters
///
pub fn request(
  method m: String,
  url u: String,
  header h: JsObject,
  data d: JsObject,
  complete cb: WechatCallback,
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
  complete cb: WechatCallback,
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

/// `wx.chooseContact`
/// Select a contact from the phone book
///
@external(javascript, "../wechat_base_ffi.mjs", "chooseContact")
pub fn choose_contact(
  phone_number p: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.addPhoneContact`
/// Add a contact to the phone book
///
@external(javascript, "../wechat_base_ffi.mjs", "addPhoneContact")
pub fn add_phone_contact(
  first_name f: String,
  mobile_phone_number mp: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.scanCode`
/// Scan the QR code
///
@external(javascript, "../wechat_base_ffi.mjs", "scanCode")
pub fn scan_code(
  scan_type st: List(String),
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getUpdateManager`
/// Get update manager for app updates
///
@external(javascript, "../wechat_base_ffi.mjs", "getUpdateManager")
pub fn get_update_manager() -> JsObject

/// `UpdateManager.applyUpdate`
/// Apply the update and restart
///
@external(javascript, "../wechat_base_ffi.mjs", "updateManagerApplyUpdate")
pub fn update_manager_apply_update(um: JsObject) -> Nil

/// `UpdateManager.onCheckForUpdate`
/// Listen for update check event
///
@external(javascript, "../wechat_base_ffi.mjs", "updateManagerOnCheckForUpdate")
pub fn update_manager_on_check_for_update(
  um: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `UpdateManager.onUpdateFailed`
/// Listen for update failed event
///
@external(javascript, "../wechat_base_ffi.mjs", "updateManagerOnUpdateFailed")
pub fn update_manager_on_update_failed(
  um: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `UpdateManager.onUpdateReady`
/// Listen for update ready event
///
@external(javascript, "../wechat_base_ffi.mjs", "updateManagerOnUpdateReady")
pub fn update_manager_on_update_ready(
  um: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// Encryption (Random)
///
/// `wx.getRandomValues`
/// Get cryptographically secure random numbers
///
@external(javascript, "../wechat_base_ffi.mjs", "getRandomValues")
pub fn get_random_values(length l: Int) -> JsObject

/// Background Fetch
///
/// `wx.setBackgroundFetchToken`
/// Set background fetch token
///
@external(javascript, "../wechat_base_ffi.mjs", "setBackgroundFetchToken")
pub fn set_background_fetch_token(token t: String) -> Nil

/// `wx.onBackgroundFetchData`
/// Listen for background fetch data event
///
@external(javascript, "../wechat_base_ffi.mjs", "onBackgroundFetchData")
pub fn on_background_fetch_data(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.getBackgroundFetchToken`
/// Get background fetch token
///
@external(javascript, "../wechat_base_ffi.mjs", "getBackgroundFetchToken")
pub fn get_background_fetch_token(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getBackgroundFetchData`
/// Get background fetch data
///
@external(javascript, "../wechat_base_ffi.mjs", "getBackgroundFetchData")
pub fn get_background_fetch_data(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// Subpackage Pre-download
///
/// `wx.preDownloadSubpackage`
/// Pre-download subpackage
///
@external(javascript, "../wechat_base_ffi.mjs", "preDownloadSubpackage")
pub fn pre_download_subpackage(root_dir rd: String, name n: String) -> JsObject

/// User Crypto Manager
///
/// `wx.getUserCryptoManager`
/// Get user crypto manager
///
@external(javascript, "../wechat_base_ffi.mjs", "getUserCryptoManager")
pub fn get_user_crypto_manager() -> JsObject

/// UserCryptoManager.getLatestUserKey
/// Get latest user key
///
@external(javascript, "../wechat_base_ffi.mjs", "userCryptoManagerGetLatestUserKey")
pub fn user_crypto_manager_get_latest_user_key(
  manager m: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// UserCryptoManager.getRandomValues
/// Get random values from crypto manager
///
@external(javascript, "../wechat_base_ffi.mjs", "userCryptoManagerGetRandomValues")
pub fn user_crypto_manager_get_random_values(
  manager m: JsObject,
  length l: Int,
) -> JsObject

/// Custom Router
///
/// `wx.router`
/// Get custom router
///
@external(javascript, "../wechat_base_ffi.mjs", "getRouter")
pub fn get_router() -> JsObject

/// Router.addRouteBuilder
/// Add route builder
///
@external(javascript, "../wechat_base_ffi.mjs", "routerAddRouteBuilder")
pub fn router_add_route_builder(
  router r: JsObject,
  name n: String,
  builder b: JsObject,
) -> Nil

/// Router.getRouteContext
/// Get route context
///
@external(javascript, "../wechat_base_ffi.mjs", "routerGetRouteContext")
pub fn router_get_route_context(router r: JsObject) -> JsObject

/// Router.removeRouteBuilder
/// Remove route builder
///
@external(javascript, "../wechat_base_ffi.mjs", "routerRemoveRouteBuilder")
pub fn router_remove_route_builder(router r: JsObject, name n: String) -> Nil

/// App Event Off Listeners
///
/// `wx.offAppShow`
/// Remove app show listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offAppShow")
pub fn off_app_show(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offAppHide`
/// Remove app hide listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offAppHide")
pub fn off_app_hide(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offError`
/// Remove error listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offError")
pub fn off_error(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offThemeChange`
/// Remove theme change listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offThemeChange")
pub fn off_theme_change(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offPageNotFound`
/// Remove page not found listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offPageNotFound")
pub fn off_page_not_found(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offUnhandledRejection`
/// Remove unhandled rejection listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offUnhandledRejection")
pub fn off_unhandled_rejection(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offLazyLoadError`
/// Remove lazy load error listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offLazyLoadError")
pub fn off_lazy_load_error(callback cb: fn(JsObject) -> Nil) -> Nil
