//// location module provides location API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/location/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// `wx.getLocation`
/// Get current geographic location
///
@external(javascript, "../wechat_base_ffi.mjs", "getLocation")
pub fn get_location(
  altitude a: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.chooseLocation`
/// Open map to select location
///
@external(javascript, "../wechat_base_ffi.mjs", "chooseLocation")
pub fn choose_location(
  latitude lat: Float,
  longitude lon: Float,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.openLocation`
/// Use built-in map to view location
///
@external(javascript, "../wechat_base_ffi.mjs", "openLocation")
pub fn open_location(
  latitude lat: Float,
  longitude lon: Float,
  scale s: Int,
  name n: String,
  address a: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// Phase 20: Location Advanced
///
/// `wx.startLocationUpdate`
/// Enable mini-program to receive location messages when in foreground
///
@external(javascript, "../wechat_base_ffi.mjs", "startLocationUpdate")
pub fn start_location_update(
  of_type t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.startLocationUpdateBackground`
/// Enable mini-program to receive location messages in foreground and background
///
@external(javascript, "../wechat_base_ffi.mjs", "startLocationUpdateBackground")
pub fn start_location_update_background(
  of_type t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.stopLocationUpdate`
/// Stop listening for real-time location changes
///
@external(javascript, "../wechat_base_ffi.mjs", "stopLocationUpdate")
pub fn stop_location_update(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onLocationChange`
/// Listen for location change events
///
@external(javascript, "../wechat_base_ffi.mjs", "onLocationChange")
pub fn on_location_change(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offLocationChange`
/// Remove location change event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offLocationChange")
pub fn off_location_change(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onLocationChangeError`
/// Listen for location change error events
///
@external(javascript, "../wechat_base_ffi.mjs", "onLocationChangeError")
pub fn on_location_change_error(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.offLocationChangeError`
/// Remove location change error event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "offLocationChangeError")
pub fn off_location_change_error(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.getFuzzyLocation`
/// Get approximate location without requiring user authorization
///
@external(javascript, "../wechat_base_ffi.mjs", "getFuzzyLocation")
pub fn get_fuzzy_location(
  of_type t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.choosePoi`
/// Open POI selection page for user to select nearby point of interest
///
@external(javascript, "../wechat_base_ffi.mjs", "choosePoi")
pub fn choose_poi(
  latitude lat: Float,
  longitude lon: Float,
  complete cb: WechatCallback,
) -> Promise(WechatResult)
