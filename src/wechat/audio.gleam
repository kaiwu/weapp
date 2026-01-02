//// audio module provides audio API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{
  type JsObject, type WechatCallback, type WechatResult,
  type WechatResultCallback,
}

/// InnerAudioContext type
///
pub type InnerAudioContext

/// `wx.createInnerAudioContext`
/// Create inner audio context
///
@external(javascript, "../wechat_media_ffi.mjs", "createInnerAudioContext")
pub fn create_inner_audio_context() -> InnerAudioContext

/// `wx.getAvailableAudioSources`
/// Get available audio input sources
///
@external(javascript, "../wechat_media_ffi.mjs", "getAvailableAudioSources")
pub fn get_available_audio_sources(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setInnerAudioOption`
/// Set InnerAudioContext options globally
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioOption")
pub fn set_inner_audio_option(
  mix_with_others mwo: Bool,
  obey_mute_switch oms: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.playVoice`
/// Play voice
///
@external(javascript, "../wechat_media_ffi.mjs", "playVoiceAsync")
pub fn play_voice(
  file_path fp: String,
  duration d: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.pauseVoice`
/// Pause voice
///
@external(javascript, "../wechat_media_ffi.mjs", "pauseVoiceAsync")
pub fn pause_voice(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.stopVoice`
/// Stop voice
///
@external(javascript, "../wechat_media_ffi.mjs", "stopVoiceAsync")
pub fn stop_voice(complete cb: WechatCallback) -> Promise(WechatResult)

/// AudioContext type
///
pub type AudioContext

/// `wx.createAudioContext`
/// Create audio context
///
@external(javascript, "../wechat_media_ffi.mjs", "createAudioContext")
pub fn create_audio_context(id s: String) -> AudioContext

/// InnerAudioContext.setSrc
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioSrc")
pub fn set_inner_audio_src(ctx: InnerAudioContext, src s: String) -> Nil

/// InnerAudioContext.setStartTime
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioStartTime")
pub fn set_inner_audio_start_time(
  ctx: InnerAudioContext,
  start_time st: Float,
) -> Nil

/// InnerAudioContext.setAutoplay
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioAutoplay")
pub fn set_inner_audio_autoplay(ctx: InnerAudioContext, autoplay a: Bool) -> Nil

/// InnerAudioContext.setLoop
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioLoop")
pub fn set_inner_audio_loop(ctx: InnerAudioContext, loop l: Bool) -> Nil

/// InnerAudioContext.setObeyMuteSwitch
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioObeyMuteSwitch")
pub fn set_inner_audio_obey_mute_switch(
  ctx: InnerAudioContext,
  obey o: Bool,
) -> Nil

/// InnerAudioContext.setVolume
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioVolume")
pub fn set_inner_audio_volume(ctx: InnerAudioContext, volume v: Float) -> Nil

/// InnerAudioContext.setPlaybackRate
///
@external(javascript, "../wechat_media_ffi.mjs", "setInnerAudioPlaybackRate")
pub fn set_inner_audio_playback_rate(
  ctx: InnerAudioContext,
  rate r: Float,
) -> Nil

/// InnerAudioContext.getDuration
///
@external(javascript, "../wechat_media_ffi.mjs", "getInnerAudioDuration")
pub fn get_inner_audio_duration(ctx: InnerAudioContext) -> Float

/// InnerAudioContext.getCurrentTime
///
@external(javascript, "../wechat_media_ffi.mjs", "getInnerAudioCurrentTime")
pub fn get_inner_audio_current_time(ctx: InnerAudioContext) -> Float

/// InnerAudioContext.getPaused
///
@external(javascript, "../wechat_media_ffi.mjs", "getInnerAudioPaused")
pub fn get_inner_audio_paused(ctx: InnerAudioContext) -> Bool

/// InnerAudioContext.getBuffered
///
@external(javascript, "../wechat_media_ffi.mjs", "getInnerAudioBuffered")
pub fn get_inner_audio_buffered(ctx: InnerAudioContext) -> Float

/// InnerAudioContext.play
///
@external(javascript, "../wechat_media_ffi.mjs", "innerAudioPlay")
pub fn inner_audio_play(ctx: InnerAudioContext) -> Nil

/// InnerAudioContext.pause
///
@external(javascript, "../wechat_media_ffi.mjs", "innerAudioPause")
pub fn inner_audio_pause(ctx: InnerAudioContext) -> Nil

/// InnerAudioContext.stop
///
@external(javascript, "../wechat_media_ffi.mjs", "innerAudioStop")
pub fn inner_audio_stop(ctx: InnerAudioContext) -> Nil

/// InnerAudioContext.seek
///
@external(javascript, "../wechat_media_ffi.mjs", "innerAudioSeek")
pub fn inner_audio_seek(ctx: InnerAudioContext, position p: Float) -> Nil

/// InnerAudioContext.destroy
///
@external(javascript, "../wechat_media_ffi.mjs", "innerAudioDestroy")
pub fn inner_audio_destroy(ctx: InnerAudioContext) -> Nil

/// AudioContext.setSrc
///
@external(javascript, "../wechat_media_ffi.mjs", "setAudioSrc")
pub fn set_audio_src(ctx: AudioContext, src s: String) -> Nil

/// AudioContext.play
///
@external(javascript, "../wechat_media_ffi.mjs", "audioPlay")
pub fn audio_play(ctx: AudioContext) -> Nil

/// AudioContext.pause
///
@external(javascript, "../wechat_media_ffi.mjs", "audioPause")
pub fn audio_pause(ctx: AudioContext) -> Nil

/// AudioContext.seek
///
@external(javascript, "../wechat_media_ffi.mjs", "audioSeek")
pub fn audio_seek(ctx: AudioContext, position p: Float) -> Nil

/// InnerAudioContext.onPlay
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioPlay")
pub fn on_inner_audio_play(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.onPause
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioPause")
pub fn on_inner_audio_pause(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.onStop
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioStop")
pub fn on_inner_audio_stop(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.onEnded
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioEnded")
pub fn on_inner_audio_ended(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.onError
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioError")
pub fn on_inner_audio_error(
  ctx: InnerAudioContext,
  cb: WechatResultCallback,
) -> Nil

/// InnerAudioContext.onTimeUpdate
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioTimeUpdate")
pub fn on_inner_audio_time_update(
  ctx: InnerAudioContext,
  cb: WechatResultCallback,
) -> Nil

/// InnerAudioContext.onCanplay
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioCanplay")
pub fn on_inner_audio_canplay(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.onWaiting
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioWaiting")
pub fn on_inner_audio_waiting(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.onSeeking
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioSeeking")
pub fn on_inner_audio_seeking(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.onSeeked
///
@external(javascript, "../wechat_media_ffi.mjs", "onInnerAudioSeeked")
pub fn on_inner_audio_seeked(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.offPlay
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioPlay")
pub fn off_inner_audio_play(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.offPause
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioPause")
pub fn off_inner_audio_pause(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.offStop
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioStop")
pub fn off_inner_audio_stop(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.offEnded
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioEnded")
pub fn off_inner_audio_ended(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// InnerAudioContext.offError
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioError")
pub fn off_inner_audio_error(
  ctx: InnerAudioContext,
  cb: WechatResultCallback,
) -> Nil

/// InnerAudioContext.offTimeUpdate
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioTimeUpdate")
pub fn off_inner_audio_time_update(
  ctx: InnerAudioContext,
  cb: WechatResultCallback,
) -> Nil

/// InnerAudioContext.offCanplay
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioCanplay")
pub fn off_inner_audio_canplay(
  ctx: InnerAudioContext,
  cb: WechatCallback,
) -> Nil

/// InnerAudioContext.offWaiting
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioWaiting")
pub fn off_inner_audio_waiting(
  ctx: InnerAudioContext,
  cb: WechatCallback,
) -> Nil

/// InnerAudioContext.offSeeking
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioSeeking")
pub fn off_inner_audio_seeking(
  ctx: InnerAudioContext,
  cb: WechatCallback,
) -> Nil

/// InnerAudioContext.offSeeked
///
@external(javascript, "../wechat_media_ffi.mjs", "offInnerAudioSeeked")
pub fn off_inner_audio_seeked(ctx: InnerAudioContext, cb: WechatCallback) -> Nil

/// WebAudioContext type
///
pub type WebAudioContext

/// `wx.createWebAudioContext`
/// Create WebAudio context
///
@external(javascript, "../wechat_media_ffi.mjs", "createWebAudioContext")
pub fn create_web_audio_context() -> WebAudioContext

/// `WebAudioContext.createAnalyser`
/// Create analyser node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateAnalyser")
pub fn web_audio_create_analyser(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createBiquadFilter`
/// Create biquad filter node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateBiquadFilter")
pub fn web_audio_create_biquad_filter(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createBuffer`
/// Create audio buffer
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateBuffer")
pub fn web_audio_create_buffer(
  wac: WebAudioContext,
  num_channels nc: Int,
  length l: Int,
  sample_rate sr: Float,
) -> JsObject

/// `WebAudioContext.createBufferSource`
/// Create buffer source node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateBufferSource")
pub fn web_audio_create_buffer_source(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createChannelMerger`
/// Create channel merger node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateChannelMerger")
pub fn web_audio_create_channel_merger(
  wac: WebAudioContext,
  inputs i: Int,
) -> JsObject

/// `WebAudioContext.createChannelSplitter`
/// Create channel splitter node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateChannelSplitter")
pub fn web_audio_create_channel_splitter(
  wac: WebAudioContext,
  outputs o: Int,
) -> JsObject

/// `WebAudioContext.createConstantSource`
/// Create constant source node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateConstantSource")
pub fn web_audio_create_constant_source(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createDelay`
/// Create delay node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateDelay")
pub fn web_audio_create_delay(
  wac: WebAudioContext,
  max_delay md: Float,
) -> JsObject

/// `WebAudioContext.createDynamicsCompressor`
/// Create dynamics compressor node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateDynamicsCompressor")
pub fn web_audio_create_dynamics_compressor(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createGain`
/// Create gain node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateGain")
pub fn web_audio_create_gain(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createIIRFilter`
/// Create IIR filter node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateIIRFilter")
pub fn web_audio_create_iir_filter(
  wac: WebAudioContext,
  feedforward ff: JsObject,
  feedback fb: JsObject,
) -> JsObject

/// `WebAudioContext.createOscillator`
/// Create oscillator node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateOscillator")
pub fn web_audio_create_oscillator(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createPanner`
/// Create panner node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreatePanner")
pub fn web_audio_create_panner(wac: WebAudioContext) -> JsObject

/// `WebAudioContext.createPeriodicWave`
/// Create periodic wave
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreatePeriodicWave")
pub fn web_audio_create_periodic_wave(
  wac: WebAudioContext,
  options o: JsObject,
) -> JsObject

/// `WebAudioContext.createScriptProcessor`
/// Create script processor node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateScriptProcessor")
pub fn web_audio_create_script_processor(
  wac: WebAudioContext,
  buffer_size bs: Int,
  num_inputs ni: Int,
  num_outputs no: Int,
) -> JsObject

/// `WebAudioContext.createWaveShaper`
/// Create wave shaper node
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioCreateWaveShaper")
pub fn web_audio_create_wave_shaper(
  wac: WebAudioContext,
  curve c: JsObject,
) -> JsObject

/// `WebAudioContext.decodeAudioData`
/// Decode audio data
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioDecodeAudioData")
pub fn web_audio_decode_audio_data(
  wac: WebAudioContext,
  array_buffer ab: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `WebAudioContext.close`
/// Close WebAudio context
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioClose")
pub fn web_audio_close(wac: WebAudioContext) -> Nil

/// `WebAudioContext.resume`
/// Resume WebAudio context
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioResume")
pub fn web_audio_resume(wac: WebAudioContext) -> Nil

/// `WebAudioContext.suspend`
/// Suspend WebAudio context
///
@external(javascript, "../wechat_media_ffi.mjs", "webAudioSuspend")
pub fn web_audio_suspend(wac: WebAudioContext) -> Nil
