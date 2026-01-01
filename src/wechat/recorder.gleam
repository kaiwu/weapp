//// recorder module provides recorder manager API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/media/recorder/)
////

import wechat/object.{type JsObject, type WechatResultCallback}

/// RecorderManager type
///
pub type RecorderManager

/// `wx.getRecorderManager`
/// Get recorder manager
///
@external(javascript, "../wechat_media_ffi.mjs", "getRecorderManager")
pub fn get_recorder_manager() -> RecorderManager

/// `RecorderManager.start`
/// Start recording
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerStart")
pub fn recorder_start(rm: RecorderManager, options: JsObject) -> Nil

/// `RecorderManager.pause`
/// Pause recording
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerPause")
pub fn recorder_pause(rm: RecorderManager) -> Nil

/// `RecorderManager.resume`
/// Resume recording
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerResume")
pub fn recorder_resume(rm: RecorderManager) -> Nil

/// `RecorderManager.stop`
/// Stop recording
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerStop")
pub fn recorder_stop(rm: RecorderManager) -> Nil

/// `RecorderManager.onStart`
/// Listen for recording start event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnStart")
pub fn recorder_on_start(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil

/// `RecorderManager.onStop`
/// Listen for recording stop event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnStop")
pub fn recorder_on_stop(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil

/// `RecorderManager.onPause`
/// Listen for recording pause event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnPause")
pub fn recorder_on_pause(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil

/// `RecorderManager.onResume`
/// Listen for recording resume event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnResume")
pub fn recorder_on_resume(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil

/// `RecorderManager.onError`
/// Listen for recording error event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnError")
pub fn recorder_on_error(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil

/// `RecorderManager.onFrameRecorded`
/// Listen for frame recorded event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnFrameRecorded")
pub fn recorder_on_frame_recorded(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil

/// `RecorderManager.onInterruptionBegin`
/// Listen for recording interruption begin event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnInterruptionBegin")
pub fn recorder_on_interruption_begin(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil

/// `RecorderManager.onInterruptionEnd`
/// Listen for recording interruption end event
///
@external(javascript, "../wechat_media_ffi.mjs", "recorderManagerOnInterruptionEnd")
pub fn recorder_on_interruption_end(
  rm: RecorderManager,
  callback: WechatResultCallback,
) -> Nil
