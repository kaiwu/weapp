//// performance module provides performance monitoring API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/performance/)
////

import wechat/object.{type JsObject}

/// `wx.getPerformance`
/// Get the performance object
///
@external(javascript, "../wechat_base_ffi.mjs", "getPerformance")
pub fn get_performance() -> JsObject

/// `wx.reportPerformance`
/// Report custom performance metrics
///
@external(javascript, "../wechat_base_ffi.mjs", "reportPerformance")
pub fn report_performance(
  name n: String,
  duration d: Int,
  options o: JsObject,
) -> Nil

/// `Performance.now`
/// Get current timestamp in milliseconds
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceNow")
pub fn now(perf: JsObject) -> Float

/// `Performance.getEntries`
/// Get all performance entries
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceGetEntries")
pub fn get_entries(perf: JsObject) -> JsObject

/// `Performance.getEntriesByType`
/// Get performance entries by type
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceGetEntriesByType")
pub fn get_entries_by_type(perf: JsObject, entry_type t: String) -> JsObject

/// `Performance.getEntriesByName`
/// Get performance entries by name
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceGetEntriesByName")
pub fn get_entries_by_name(perf: JsObject, name n: String) -> JsObject

/// `Performance.mark`
/// Create a performance mark
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceMark")
pub fn mark(perf: JsObject, name n: String) -> Nil

/// `Performance.measure`
/// Measure performance between marks
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceMeasure")
pub fn measure(
  perf: JsObject,
  measure_name m: String,
  start_mark s: String,
  end_mark e: String,
) -> Nil

/// `Performance.clearMarks`
/// Clear performance marks
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceClearMarks")
pub fn clear_marks(perf: JsObject, name n: String) -> Nil

/// `Performance.clearMeasures`
/// Clear performance measures
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceClearMeasures")
pub fn clear_measures(perf: JsObject, name n: String) -> Nil

/// `Performance.createObserver`
/// Create a performance observer
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceCreateObserver")
pub fn create_observer(
  perf: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> JsObject

/// `PerformanceObserver.disconnect`
/// Disconnect performance observer
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceObserverDisconnect")
pub fn observer_disconnect(observer: JsObject) -> Nil

/// `PerformanceObserver.observe`
/// Observe performance entries
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceObserverObserve")
pub fn observer_observe(observer: JsObject, options o: JsObject) -> Nil

/// `Performance.setBufferSize`
/// Set performance buffer size
///
@external(javascript, "../wechat_performance_ffi.mjs", "performanceSetBufferSize")
pub fn set_buffer_size(perf: JsObject, size s: Int) -> Nil

/// `wx.requestIdleCallback`
/// Request idle callback
///
@external(javascript, "../wechat_base_ffi.mjs", "requestIdleCallback")
pub fn request_idle_callback(
  callback cb: fn(JsObject) -> Nil,
  options o: JsObject,
) -> Int

/// `wx.cancelIdleCallback`
/// Cancel idle callback
///
@external(javascript, "../wechat_base_ffi.mjs", "cancelIdleCallback")
pub fn cancel_idle_callback(handle h: Int) -> Nil
