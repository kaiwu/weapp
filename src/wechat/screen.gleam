//// screen module provides screen API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/device/screen/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatResultCallback, type WechatCallback, type WechatResult}

/// `wx.setScreenBrightness`
/// Set screen brightness
///
@external(javascript, "../wechat_device_ffi.mjs", "setScreenBrightness")
pub fn set_screen_brightness(
  value v: Float,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getScreenBrightness`
/// Get screen brightness
///
@external(javascript, "../wechat_device_ffi.mjs", "getScreenBrightness")
pub fn get_screen_brightness(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setKeepScreenOn`
/// Set keep screen on
///
@external(javascript, "../wechat_device_ffi.mjs", "setKeepScreenOn")
pub fn set_keep_screen_on(
  keep_on k: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onUserCaptureScreen`
/// Listen for user capture screen event
///
@external(javascript, "../wechat_device_ffi.mjs", "onUserCaptureScreen")
pub fn on_user_capture_screen(callback cb: WechatResultCallback) -> Nil

/// `wx.offUserCaptureScreen`
/// Remove user capture screen listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offUserCaptureScreen")
pub fn off_user_capture_screen(callback cb: WechatResultCallback) -> Nil
