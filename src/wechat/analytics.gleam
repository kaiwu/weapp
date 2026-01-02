//// analytics module provides analytics API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/data-analysis/)
////

import wechat/object.{type JsObject}

/// `wx.reportEvent`
/// Report event
///
@external(javascript, "../wechat_base_ffi.mjs", "reportEvent")
pub fn report_event(name n: String, data d: JsObject, opts o: JsObject) -> Nil

/// `wx.reportMonitor`
/// Report monitor
///
@external(javascript, "../wechat_base_ffi.mjs", "reportMonitor")
pub fn report_monitor(name n: String, value v: String, opts o: JsObject) -> Nil

/// `wx.reportAnalytics`
/// Report analytics data
///
@external(javascript, "../wechat_base_ffi.mjs", "reportAnalytics")
pub fn report_analytics(event_id n: String, data d: JsObject) -> Nil

/// `wx.getExptInfoSync`
/// Get experimental information synchronously
///
@external(javascript, "../wechat_base_ffi.mjs", "getExptInfoSync")
pub fn get_expt_info_sync() -> JsObject
