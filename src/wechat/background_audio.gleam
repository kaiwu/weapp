//// background_audio module provides background audio API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/)
////

import wechat/object.{type JsObject}

/// `wx.getBackgroundAudioManager`
/// Get global unique background audio manager
///
@external(javascript, "../wechat_media_ffi.mjs", "getBackgroundAudioManager")
pub fn get_background_audio_manager() -> JsObject

/// `BackgroundAudioManager.play`
/// Play audio
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerPlay")
pub fn background_audio_manager_play(bam: JsObject) -> Nil

/// `BackgroundAudioManager.pause`
/// Pause audio
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerPause")
pub fn background_audio_manager_pause(bam: JsObject) -> Nil

/// `BackgroundAudioManager.stop`
/// Stop audio
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerStop")
pub fn background_audio_manager_stop(bam: JsObject) -> Nil

/// `BackgroundAudioManager.seek`
/// Jump to the specified position
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerSeek")
pub fn background_audio_manager_seek(bam: JsObject, position p: Float) -> Nil

/// `BackgroundAudioManager.onCanplay`
/// Listen for canplay event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnCanplay")
pub fn background_audio_manager_on_canplay(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onEnded`
/// Listen for ended event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnEnded")
pub fn background_audio_manager_on_ended(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onError`
/// Listen for error event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnError")
pub fn background_audio_manager_on_error(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onNext`
/// Listen for next event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnNext")
pub fn background_audio_manager_on_next(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onPause`
/// Listen for pause event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnPause")
pub fn background_audio_manager_on_pause(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onPlay`
/// Listen for play event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnPlay")
pub fn background_audio_manager_on_play(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onPrev`
/// Listen for prev event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnPrev")
pub fn background_audio_manager_on_prev(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onSeeked`
/// Listen for seeked event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnSeeked")
pub fn background_audio_manager_on_seeked(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onSeeking`
/// Listen for seeking event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnSeeking")
pub fn background_audio_manager_on_seeking(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onStop`
/// Listen for stop event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnStop")
pub fn background_audio_manager_on_stop(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onTimeUpdate`
/// Listen for time update event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnTimeUpdate")
pub fn background_audio_manager_on_time_update(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.onWaiting`
/// Listen for waiting event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOnWaiting")
pub fn background_audio_manager_on_waiting(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offCanplay`
/// Cancel listening for canplay event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffCanplay")
pub fn background_audio_manager_off_canplay(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offEnded`
/// Cancel listening for ended event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffEnded")
pub fn background_audio_manager_off_ended(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offError`
/// Cancel listening for error event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffError")
pub fn background_audio_manager_off_error(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offNext`
/// Cancel listening for next event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffNext")
pub fn background_audio_manager_off_next(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offPause`
/// Cancel listening for pause event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffPause")
pub fn background_audio_manager_off_pause(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offPlay`
/// Cancel listening for play event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffPlay")
pub fn background_audio_manager_off_play(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offPrev`
/// Cancel listening for prev event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffPrev")
pub fn background_audio_manager_off_prev(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offSeeked`
/// Cancel listening for seeked event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffSeeked")
pub fn background_audio_manager_off_seeked(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offSeeking`
/// Cancel listening for seeking event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffSeeking")
pub fn background_audio_manager_off_seeking(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offStop`
/// Cancel listening for stop event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffStop")
pub fn background_audio_manager_off_stop(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offTimeUpdate`
/// Cancel listening for time update event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffTimeUpdate")
pub fn background_audio_manager_off_time_update(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil

/// `BackgroundAudioManager.offWaiting`
/// Cancel listening for waiting event
///
@external(javascript, "../wechat_media_ffi.mjs", "backgroundAudioManagerOffWaiting")
pub fn background_audio_manager_off_waiting(
  bam: JsObject,
  callback cb: fn(JsObject) -> Nil,
) -> Nil
