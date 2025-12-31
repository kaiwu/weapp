//// worker module provides Worker API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/worker/)
////

import wechat/object.{type JsObject}

/// `wx.createWorker`
/// Create a worker thread
///
@external(javascript, "../wechat_base_ffi.mjs", "createWorker")
pub fn create_worker(script_path sp: String) -> JsObject

/// `Worker.getCameraFrameData`
/// Get camera frame data in worker
///
@external(javascript, "../wechat_base_ffi.mjs", "workerGetCameraFrameData")
pub fn worker_get_camera_frame_data(worker: JsObject) -> JsObject

/// `Worker.onError`
/// Listen for worker error events
///
@external(javascript, "../wechat_base_ffi.mjs", "workerOnError")
pub fn worker_on_error(
  worker: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `Worker.onMessage`
/// Listen for worker messages
///
@external(javascript, "../wechat_base_ffi.mjs", "workerOnMessage")
pub fn worker_on_message(
  worker: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `Worker.onProcessKilled`
/// Listen for worker process killed events
///
@external(javascript, "../wechat_base_ffi.mjs", "workerOnProcessKilled")
pub fn worker_on_process_killed(
  worker: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `Worker.postMessage`
/// Send message to worker
///
@external(javascript, "../wechat_base_ffi.mjs", "workerPostMessage")
pub fn worker_post_message(
  worker: JsObject,
  message m: JsObject,
  transfer tl: JsObject,
) -> Nil

/// `Worker.terminate`
/// Terminate worker
///
@external(javascript, "../wechat_base_ffi.mjs", "workerTerminate")
pub fn worker_terminate(worker: JsObject) -> Nil

/// `Worker.testOnProcessKilled`
/// Test worker process killed event
///
@external(javascript, "../wechat_base_ffi.mjs", "workerTestOnProcessKilled")
pub fn worker_test_on_process_killed(worker: JsObject) -> Nil
