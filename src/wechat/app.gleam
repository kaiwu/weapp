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
  delay d: Int,
  with o: JsObject,
  callback cb: WechatResultCallback,
) -> Int

/// global function `clearTimeout(...)`
///
@external(javascript, "../wechat_ffi.mjs", "clear_timeout")
pub fn clear_timeout(id id: Int) -> Nil

/// global function `setInterval(...)`
///
@external(javascript, "../wechat_ffi.mjs", "set_interval")
pub fn set_interval(
  delay d: Int,
  with o: JsObject,
  callback cb: WechatResultCallback,
) -> Int

/// global function `clearInterval(...)`
///
@external(javascript, "../wechat_ffi.mjs", "clear_interval")
pub fn clear_interval(id id: Int) -> Nil

/// global function `encodeURIComponent`
///
@external(javascript, "../wechat_ffi.mjs", "encode_uri_component")
pub fn encode_uri_component(uri: String) -> String

/// global function `decodeURIComponent`
///
/// This preserves the global function's throwing behavior for malformed escape
/// sequences. Use `safe_decode_uri_component` when fallback behavior is wanted.
///
@external(javascript, "../wechat_ffi.mjs", "decode_uri_component")
pub fn decode_uri_component(uri: String) -> String

/// Decode a URI component, returning malformed escape sequences unchanged.
///
@external(javascript, "../wechat_ffi.mjs", "safe_decode_uri_component")
pub fn safe_decode_uri_component(uri: String) -> String

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

/// `wx.getDeviceBenchmarkInfo`
/// Get device performance benchmark info
///
@external(javascript, "../wechat_ffi.mjs", "getDeviceBenchmarkInfo")
pub fn get_device_benchmark_info(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getSkylineInfo`
/// Check if Skyline rendering engine is supported
///
@external(javascript, "../wechat_ffi.mjs", "getSkylineInfo")
pub fn get_skyline_info(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getSkylineInfoSync`
/// Check if Skyline rendering engine is supported (sync)
///
@external(javascript, "../wechat_ffi.mjs", "getSkylineInfoSync")
pub fn get_skyline_info_sync() -> JsObject

/// `wx.getRendererUserAgent`
/// Get Webview renderer UserAgent string
///
@external(javascript, "../wechat_ffi.mjs", "getRendererUserAgent")
pub fn get_renderer_user_agent(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.openSystemBluetoothSetting`
/// Open system Bluetooth settings page (Android only)
///
@external(javascript, "../wechat_ffi.mjs", "openSystemBluetoothSetting")
pub fn open_system_bluetooth_setting(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.openAppAuthorizeSetting`
/// Open app authorization settings page
///
@external(javascript, "../wechat_ffi.mjs", "openAppAuthorizeSetting")
pub fn open_app_authorize_setting(
  complete cb: WechatCallback,
) -> Promise(WechatResult)
