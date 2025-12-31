//// location module provides location API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/location/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatCallback, type WechatResult}

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
