//// battery module provides battery API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/device/battery/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatResultCallback, type WechatCallback, type WechatResult}

/// `wx.getBatteryInfo`
/// Get battery info
///
@external(javascript, "../wechat_device_ffi.mjs", "getBatteryInfo")
pub fn get_battery_info(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.onBatteryInfoChange`
/// Listen for battery changes
///
@external(javascript, "../wechat_device_ffi.mjs", "onBatteryInfoChange")
pub fn on_battery_info_change(callback cb: WechatResultCallback) -> Nil
