//// camera module provides camera context API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/media/camera/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// CameraContext type
///
pub type CameraContext

/// CameraFrameListener type
///
pub type CameraFrameListener

/// `wx.createCameraContext`
/// Create camera context
///
@external(javascript, "../wechat_media_ffi.mjs", "createCameraContext")
pub fn create_camera_context() -> CameraContext

/// `CameraContext.startRecord`
/// Start recording video
///
@external(javascript, "../wechat_media_ffi.mjs", "cameraContextStartRecord")
pub fn camera_start_record(
  ctx cc: CameraContext,
  timeout t: Int,
  selfie_mirror sm: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CameraContext.stopRecord`
/// Stop recording video
///
@external(javascript, "../wechat_media_ffi.mjs", "cameraContextStopRecord")
pub fn camera_stop_record(
  ctx cc: CameraContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CameraContext.takePhoto`
/// Take a photo
///
@external(javascript, "../wechat_media_ffi.mjs", "cameraContextTakePhoto")
pub fn camera_take_photo(
  ctx cc: CameraContext,
  quality q: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CameraContext.setZoom`
/// Set camera zoom level
///
@external(javascript, "../wechat_media_ffi.mjs", "cameraContextSetZoom")
pub fn camera_set_zoom(ctx cc: CameraContext, zoom z: Float) -> Nil

/// `CameraContext.onCameraFrame`
/// Listen for camera frame updates
///
@external(javascript, "../wechat_media_ffi.mjs", "cameraContextOnCameraFrame")
pub fn camera_on_frame(
  ctx cc: CameraContext,
  callback cb: fn(JsObject) -> CameraFrameListener,
) -> CameraFrameListener

/// `CameraFrameListener.start`
/// Start listening for camera frames
///
@external(javascript, "../wechat_media_ffi.mjs", "cameraFrameListenerStart")
pub fn camera_frame_listener_start(listener: CameraFrameListener) -> Nil

/// `CameraFrameListener.stop`
/// Stop listening for camera frames
///
@external(javascript, "../wechat_media_ffi.mjs", "cameraFrameListenerStop")
pub fn camera_frame_listener_stop(listener: CameraFrameListener) -> Nil
