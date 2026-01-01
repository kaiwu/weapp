//// app module provides miniprogram `app` bindings
//// it also includes a few global utility functions
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/en/dev/framework/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{
  type JsObject, type WechatCallback, type WechatResult,
  type WechatResultCallback,
}

/// `wx.getAppBaseInfo`
/// Get app base info (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getAppBaseInfo")
pub fn get_app_base_info() -> JsObject

/// `wx.getSystemInfo`
/// Get system information (async)
///
@external(javascript, "../wechat_ffi.mjs", "getSystemInfo")
pub fn get_system_info(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getSystemInfoSync`
/// Get system information (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getSystemInfoSync")
pub fn get_system_info_sync() -> JsObject

/// `wx.getSystemInfoAsync`
/// Get system information (async without callback)
///
@external(javascript, "../wechat_ffi.mjs", "getSystemInfoAsync")
pub fn get_system_info_async(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getSystemSetting`
/// Get system settings (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getSystemSetting")
pub fn get_system_setting() -> JsObject

/// `wx.getDeviceInfo`
/// Get device info (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getDeviceInfo")
pub fn get_device_info() -> JsObject

/// `wx.getWindowInfo`
/// Get window info (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getWindowInfo")
pub fn get_window_info() -> JsObject

/// `wx.getAppAuthorizeSetting`
/// Get app authorize setting (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getAppAuthorizeSetting")
pub fn get_app_authorize_setting() -> JsObject

/// `wx.getAccountInfoSync`
/// Get account info (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getAccountInfoSync")
pub fn get_account_info_sync() -> JsObject

/// `wx.getLaunchOptionsSync`
/// Get launch options (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getLaunchOptionsSync")
pub fn get_launch_options_sync() -> JsObject

/// `wx.getEnterOptionsSync`
/// Get enter options (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getEnterOptionsSync")
pub fn get_enter_options_sync() -> JsObject

/// global function `getApp()`
///
@external(javascript, "../wechat_ffi.mjs", "get_app")
pub fn get_app() -> JsObject

/// app constructor `App({...})`
/// the main entry point for miniprogram
///
@external(javascript, "../wechat_ffi.mjs", "run_app")
pub fn run_app(o: JsObject) -> Nil

/// global function `setTimeout(...)`
///
@external(javascript, "../wechat_ffi.mjs", "set_timeout")
pub fn set_timeout(
  callback cb: WechatResultCallback,
  delay d: Int,
  with o: JsObject,
) -> Int

/// global function `clearTimeout(...)`
///
@external(javascript, "../wechat_ffi.mjs", "clear_timeout")
pub fn clear_timeout(id id: Int) -> Nil

/// global function `setInterval(...)`
///
@external(javascript, "../wechat_ffi.mjs", "set_interval")
pub fn set_interval(
  callback cb: WechatResultCallback,
  delay d: Int,
  with o: JsObject,
) -> Int

/// global function `clearInterval(...)`
///
@external(javascript, "../wechat_ffi.mjs", "clear_interval")
pub fn clear_interval(id id: Int) -> Nil

/// global function `decodeURIComponent`
///
@external(javascript, "../wechat_ffi.mjs", "decode_uri_component")
pub fn decode_uri_component(uri: String) -> JsObject

/// `wx.canIUse`
/// Check if API is available
///
@external(javascript, "../wechat_ffi.mjs", "canIUse")
pub fn can_i_use(schema: String) -> Bool

/// `wx.base64ToArrayBuffer`
/// Convert base64 string to ArrayBuffer
///
@external(javascript, "../wechat_ffi.mjs", "base64ToArrayBuffer")
pub fn base64_to_array_buffer(base64: String) -> JsObject

/// `wx.arrayBufferToBase64`
/// Convert ArrayBuffer to base64 string
///
@external(javascript, "../wechat_ffi.mjs", "arrayBufferToBase64")
pub fn array_buffer_to_base64(buffer: JsObject) -> String
