//// media module provides media API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/media/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{
  type JsObject, type WechatCallback, type WechatResult,
  type WechatResultCallback,
}

/// MediaRecorder type for screen recording
///
pub type MediaRecorder

/// LivePlayer type for live streaming playback
///
pub type LivePlayer

/// LivePusher type for live streaming
///
pub type LivePusher

/// `wx.chooseImage`
/// Select pictures from local album or take photos with camera
///
@external(javascript, "../wechat_media_ffi.mjs", "chooseImage")
pub fn choose_image(
  count c: Int,
  size_type st: List(String),
  source_type s: List(String),
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.previewImage`
/// Preview images within the current page
///
@external(javascript, "../wechat_media_ffi.mjs", "previewImage")
pub fn preview_image(
  urls u: List(String),
  current c: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getImageInfo`
/// Get image information
///
@external(javascript, "../wechat_media_ffi.mjs", "getImageInfo")
pub fn get_image_info(
  src s: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.saveImageToPhotosAlbum`
/// Save image to system album
///
@external(javascript, "../wechat_media_ffi.mjs", "saveImageToPhotosAlbum")
pub fn save_image_to_photos_album(
  file_path fp: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.compressImage`
/// Compress image
///
@external(javascript, "../wechat_media_ffi.mjs", "compressImage")
pub fn compress_image(
  src s: String,
  quality q: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.chooseMessageFile`
/// Select file from client session
///
@external(javascript, "../wechat_media_ffi.mjs", "chooseMessageFile")
pub fn choose_message_file(
  count c: Int,
  file_type t: String,
  extension e: List(String),
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// MediaRecorder - Screen Recording
///
/// `wx.getMediaRecorder`
/// Get media recorder instance
///
@external(javascript, "../wechat_media_ffi.mjs", "getMediaRecorder")
pub fn get_media_recorder() -> MediaRecorder

/// `MediaRecorder.start`
/// Start recording
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaRecorderStart")
pub fn media_recorder_start(
  recorder: MediaRecorder,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MediaRecorder.pause`
/// Pause recording
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaRecorderPause")
pub fn media_recorder_pause(
  recorder: MediaRecorder,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MediaRecorder.resume`
/// Resume recording
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaRecorderResume")
pub fn media_recorder_resume(
  recorder: MediaRecorder,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MediaRecorder.stop`
/// Stop recording
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaRecorderStop")
pub fn media_recorder_stop(
  recorder: MediaRecorder,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MediaRecorder.requestFrame`
/// Request frame
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaRecorderRequestFrame")
pub fn media_recorder_request_frame(recorder: MediaRecorder) -> JsObject

/// `MediaRecorder.on`
/// Listen for recorder events
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaRecorderOn")
pub fn media_recorder_on(
  recorder: MediaRecorder,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// `MediaRecorder.off`
/// Cancel listening for recorder events
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaRecorderOff")
pub fn media_recorder_off(
  recorder: MediaRecorder,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// LivePlayer - Live Streaming Playback
///
/// `wx.createLivePlayerContext`
/// Create live player context
///
@external(javascript, "../wechat_media_ffi.mjs", "createLivePlayerContext")
pub fn create_live_player_context(id s: String) -> LivePlayer

/// `LivePlayer.play`
/// Play live stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerPlay")
pub fn live_player_play(player: LivePlayer) -> Nil

/// `LivePlayer.stop`
/// Stop live stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerStop")
pub fn live_player_stop(player: LivePlayer) -> Nil

/// `LivePlayer.mute`
/// Mute live stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerMute")
pub fn live_player_mute(player: LivePlayer, m: Bool) -> Nil

/// `LivePlayer.requestFullScreen`
/// Request full screen
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerRequestFullScreen")
pub fn live_player_request_full_screen(
  player: LivePlayer,
  direction d: Int,
) -> Nil

/// `LivePlayer.exitFullScreen`
/// Exit full screen
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerExitFullScreen")
pub fn live_player_exit_full_screen(player: LivePlayer) -> Nil

/// `LivePlayer.snapshot`
/// Take snapshot
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerSnapshot")
pub fn live_player_snapshot(
  player: LivePlayer,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `LivePlayer.on`
/// Listen for live player events
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerOn")
pub fn live_player_on(
  player: LivePlayer,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// `LivePlayer.off`
/// Cancel listening for live player events
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerOff")
pub fn live_player_off(
  player: LivePlayer,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// LivePlayer.exitBackgroundPlayback
/// Exit background audio playback mode
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerExitBackgroundPlayback")
pub fn live_player_exit_background_playback(player: LivePlayer) -> Nil

/// LivePlayer.exitCasting
/// Exit casting
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerExitCasting")
pub fn live_player_exit_casting(player: LivePlayer) -> Nil

/// LivePlayer.exitPictureInPicture
/// Exit picture-in-picture
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerExitPictureInPicture")
pub fn live_player_exit_picture_in_picture(player: LivePlayer) -> Nil

/// LivePlayer.reconnectCasting
/// Reconnect casting device
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerReconnectCasting")
pub fn live_player_reconnect_casting(player: LivePlayer) -> Nil

/// LivePlayer.startCasting
/// Start casting
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerStartCasting")
pub fn live_player_start_casting(player: LivePlayer) -> Nil

/// LivePlayer.switchCasting
/// Switch casting device
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerSwitchCasting")
pub fn live_player_switch_casting(player: LivePlayer) -> Nil

/// LivePlayer.resume
/// Resume live stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePlayerResume")
pub fn live_player_resume(player: LivePlayer) -> Nil

/// LivePusher - Live Streaming
///
/// `wx.createLivePusherContext`
/// Create live pusher context
///
@external(javascript, "../wechat_media_ffi.mjs", "createLivePusherContext")
pub fn create_live_pusher_context(id s: String) -> LivePusher

/// `LivePusher.start`
/// Start push stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherStart")
pub fn live_pusher_start(pusher: LivePusher) -> Nil

/// `LivePusher.stop`
/// Stop push stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherStop")
pub fn live_pusher_stop(pusher: LivePusher) -> Nil

/// `LivePusher.pause`
/// Pause push stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherPause")
pub fn live_pusher_pause(pusher: LivePusher) -> Nil

/// `LivePusher.resume`
/// Resume push stream
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherResume")
pub fn live_pusher_resume(pusher: LivePusher) -> Nil

/// `LivePusher.switchCamera`
/// Switch camera
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherSwitchCamera")
pub fn live_pusher_switch_camera(pusher: LivePusher) -> Nil

/// `LivePusher.snapshot`
/// Take snapshot
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherSnapshot")
pub fn live_pusher_snapshot(
  pusher: LivePusher,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `LivePusher.on`
/// Listen for live pusher events
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherOn")
pub fn live_pusher_on(
  pusher: LivePusher,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// `LivePusher.off`
/// Cancel listening for live pusher events
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherOff")
pub fn live_pusher_off(
  pusher: LivePusher,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// LivePusher.pauseBGM
/// Pause background music
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherPauseBGM")
pub fn live_pusher_pause_bgm(pusher: LivePusher) -> Nil

/// LivePusher.playBGM
/// Play background music
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherPlayBGM")
pub fn live_pusher_play_bgm(pusher: LivePusher) -> Nil

/// LivePusher.resumeBGM
/// Resume background music
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherResumeBGM")
pub fn live_pusher_resume_bgm(pusher: LivePusher) -> Nil

/// LivePusher.stopBGM
/// Stop background music
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherStopBGM")
pub fn live_pusher_stop_bgm(pusher: LivePusher) -> Nil

/// LivePusher.setBGMVolume
/// Set background music volume
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherSetBGMVolume")
pub fn live_pusher_set_bgm_volume(pusher: LivePusher, volume v: Float) -> Nil

/// LivePusher.setMICVolume
/// Set microphone volume
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherSetMICVolume")
pub fn live_pusher_set_mic_volume(pusher: LivePusher, volume v: Float) -> Nil

/// LivePusher.setZoom
/// Set zoom level
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherSetZoom")
pub fn live_pusher_set_zoom(pusher: LivePusher, zoom z: Float) -> Nil

/// LivePusher.getMaxZoom
/// Get maximum zoom level
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherGetMaxZoom")
pub fn live_pusher_get_max_zoom(
  pusher: LivePusher,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// LivePusher.applyFilter
/// Apply filter effect
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherApplyFilter")
pub fn live_pusher_apply_filter(pusher: LivePusher, filter f: JsObject) -> Nil

/// LivePusher.clearFilters
/// Clear all filters
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherClearFilters")
pub fn live_pusher_clear_filters(pusher: LivePusher) -> Nil

/// LivePusher.applyBlusherStickMakeup
/// Apply blusher makeup
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherApplyBlusherStickMakeup")
pub fn live_pusher_apply_blusher_stick_makeup(
  pusher: LivePusher,
  makeup m: JsObject,
) -> Nil

/// LivePusher.applyEyeBrowMakeup
/// Apply eyebrow makeup
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherApplyEyeBrowMakeup")
pub fn live_pusher_apply_eye_brow_makeup(
  pusher: LivePusher,
  makeup m: JsObject,
) -> Nil

/// LivePusher.applyEyeShadowMakeup
/// Apply eye shadow makeup
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherApplyEyeShadowMakeup")
pub fn live_pusher_apply_eye_shadow_makeup(
  pusher: LivePusher,
  makeup m: JsObject,
) -> Nil

/// LivePusher.applyFaceContourMakeup
/// Apply face contour makeup
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherApplyFaceContourMakeup")
pub fn live_pusher_apply_face_contour_makeup(
  pusher: LivePusher,
  makeup m: JsObject,
) -> Nil

/// LivePusher.applyLipStickMakeup
/// Apply lipstick makeup
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherApplyLipStickMakeup")
pub fn live_pusher_apply_lip_stick_makeup(
  pusher: LivePusher,
  makeup m: JsObject,
) -> Nil

/// LivePusher.clearMakeups
/// Clear all makeup
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherClearMakeups")
pub fn live_pusher_clear_makeups(pusher: LivePusher) -> Nil

/// LivePusher.applySticker
/// Apply sticker effect
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherApplySticker")
pub fn live_pusher_apply_sticker(pusher: LivePusher, sticker s: JsObject) -> Nil

/// LivePusher.clearStickers
/// Clear all stickers
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherClearStickers")
pub fn live_pusher_clear_stickers(pusher: LivePusher) -> Nil

/// LivePusher.createOffscreenCanvas
/// Create offscreen canvas
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherCreateOffscreenCanvas")
pub fn live_pusher_create_offscreen_canvas(pusher: LivePusher) -> JsObject

/// LivePusher.exitPictureInPicture
/// Exit picture-in-picture
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherExitPictureInPicture")
pub fn live_pusher_exit_picture_in_picture(pusher: LivePusher) -> Nil

/// LivePusher.onCustomRendererEvent
/// Listen for custom renderer events
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherOnCustomRendererEvent")
pub fn live_pusher_on_custom_renderer_event(
  pusher: LivePusher,
  callback cb: WechatResultCallback,
) -> Nil

/// LivePusher.sendMessage
/// Send SEI message
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherSendMessage")
pub fn live_pusher_send_message(pusher: LivePusher, message m: JsObject) -> Nil

/// LivePusher.startPreview
/// Start camera preview
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherStartPreview")
pub fn live_pusher_start_preview(pusher: LivePusher) -> Nil

/// LivePusher.stopPreview
/// Stop camera preview
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherStopPreview")
pub fn live_pusher_stop_preview(pusher: LivePusher) -> Nil

/// LivePusher.toggleTorch
/// Toggle torch
///
@external(javascript, "../wechat_media_ffi.mjs", "livePusherToggleTorch")
pub fn live_pusher_toggle_torch(pusher: LivePusher) -> Nil

/// MediaContainer - 音视频合成
///
/// MediaContainer type for audio/video composition
///
pub type MediaContainer

/// MediaTrack type for media track
///
pub type MediaTrack

/// `wx.createMediaContainer`
/// Create media container for audio/video composition
///
@external(javascript, "../wechat_media_ffi.mjs", "createMediaContainer")
pub fn create_media_container(options o: JsObject) -> MediaContainer

/// MediaContainer.addTrack
/// Add audio or video track to container
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaContainerAddTrack")
pub fn media_container_add_track(
  container: MediaContainer,
  track: MediaTrack,
) -> Nil

/// MediaContainer.destroy
/// Destroy container and release resources
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaContainerDestroy")
pub fn media_container_destroy(container: MediaContainer) -> Nil

/// MediaContainer.export
/// Merge tracks in container and export as video file
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaContainerExport")
pub fn media_container_export(
  container: MediaContainer,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// MediaContainer.extractDataSource
/// Extract and separate tracks from video source
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaContainerExtractDataSource")
pub fn media_container_extract_data_source(
  container: MediaContainer,
  source s: JsObject,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// MediaContainer.removeTrack
/// Remove audio or video track from container
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaContainerRemoveTrack")
pub fn media_container_remove_track(
  container: MediaContainer,
  track: MediaTrack,
) -> Nil

/// VideoDecoder - 视频解码器
///
/// VideoDecoder type
///
pub type VideoDecoder

/// `wx.createVideoDecoder`
/// Create video decoder for frame-by-frame decoding
///
@external(javascript, "../wechat_media_ffi.mjs", "createVideoDecoder")
pub fn create_video_decoder(options o: JsObject) -> VideoDecoder

/// VideoDecoder.getFrameData
/// Get next frame of decoded data
///
@external(javascript, "../wechat_media_ffi.mjs", "videoDecoderGetFrameData")
pub fn video_decoder_get_frame_data(
  decoder: VideoDecoder,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// VideoDecoder.off
/// Cancel listener
///
@external(javascript, "../wechat_media_ffi.mjs", "videoDecoderOff")
pub fn video_decoder_off(
  decoder: VideoDecoder,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// VideoDecoder.on
/// Register listener
///
@external(javascript, "../wechat_media_ffi.mjs", "videoDecoderOn")
pub fn video_decoder_on(
  decoder: VideoDecoder,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// VideoDecoder.remove
/// Remove decoder
///
@external(javascript, "../wechat_media_ffi.mjs", "videoDecoderRemove")
pub fn video_decoder_remove(decoder: VideoDecoder) -> Nil

/// VideoDecoder.seek
/// Seek to specific time point
///
@external(javascript, "../wechat_media_ffi.mjs", "videoDecoderSeek")
pub fn video_decoder_seek(decoder: VideoDecoder, time t: Int) -> Nil

/// VideoDecoder.start
/// Start decoding
///
@external(javascript, "../wechat_media_ffi.mjs", "videoDecoderStart")
pub fn video_decoder_start(decoder: VideoDecoder) -> Nil

/// VideoDecoder.stop
/// Stop decoding
///
@external(javascript, "../wechat_media_ffi.mjs", "videoDecoderStop")
pub fn video_decoder_stop(decoder: VideoDecoder) -> Nil

/// Voice (旧音频API)
///
/// `wx.stopVoice`
/// Stop playing voice
///
@external(javascript, "../wechat_media_ffi.mjs", "stopVoice")
pub fn stop_voice() -> Nil

/// `wx.playVoice`
/// Start playing voice
///
@external(javascript, "../wechat_media_ffi.mjs", "playVoice")
pub fn play_voice() -> Nil

/// `wx.pauseVoice`
/// Pause playing voice
///
@external(javascript, "../wechat_media_ffi.mjs", "pauseVoice")
pub fn pause_voice() -> Nil

/// AudioContext type
///
pub type AudioContext

/// `wx.createAudioContext`
/// Create audio context
///
@external(javascript, "../wechat_media_ffi.mjs", "createAudioContext")
pub fn create_audio_context(id s: String) -> AudioContext

/// AudioContext.pause
/// Pause audio
///
@external(javascript, "../wechat_media_ffi.mjs", "audioContextPause")
pub fn audio_context_pause(ctx: AudioContext) -> Nil

/// AudioContext.play
/// Play audio
///
@external(javascript, "../wechat_media_ffi.mjs", "audioContextPlay")
pub fn audio_context_play(ctx: AudioContext) -> Nil

/// AudioContext.seek
/// Seek to position
///
@external(javascript, "../wechat_media_ffi.mjs", "audioContextSeek")
pub fn audio_context_seek(ctx: AudioContext, position p: Float) -> Nil

/// AudioContext.setSrc
/// Set audio source
///
@external(javascript, "../wechat_media_ffi.mjs", "audioContextSetSrc")
pub fn audio_context_set_src(ctx: AudioContext, src s: String) -> Nil

/// MediaAudioPlayer - 媒体音频播放器
///
/// MediaAudioPlayer type
///
pub type MediaAudioPlayer

/// `wx.createMediaAudioPlayer`
/// Create media audio player
///
@external(javascript, "../wechat_media_ffi.mjs", "createMediaAudioPlayer")
pub fn create_media_audio_player() -> MediaAudioPlayer

/// MediaAudioPlayer.addAudioSource
/// Add audio source
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaAudioPlayerAddAudioSource")
pub fn media_audio_player_add_audio_source(
  player: MediaAudioPlayer,
  source s: JsObject,
) -> Nil

/// MediaAudioPlayer.destroy
/// Destroy player
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaAudioPlayerDestroy")
pub fn media_audio_player_destroy(player: MediaAudioPlayer) -> Nil

/// MediaAudioPlayer.removeAudioSource
/// Remove audio source
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaAudioPlayerRemoveAudioSource")
pub fn media_audio_player_remove_audio_source(
  player: MediaAudioPlayer,
  source s: JsObject,
) -> Nil

/// MediaAudioPlayer.start
/// Start player
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaAudioPlayerStart")
pub fn media_audio_player_start(player: MediaAudioPlayer) -> Nil

/// MediaAudioPlayer.stop
/// Stop player
///
@external(javascript, "../wechat_media_ffi.mjs", "mediaAudioPlayerStop")
pub fn media_audio_player_stop(player: MediaAudioPlayer) -> Nil

/// Video Editing
///
/// `wx.editImage`
/// Edit image
///
@external(javascript, "../wechat_media_ffi.mjs", "editImage")
pub fn edit_image(
  src s: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.cropImage`
/// Crop image
///
@external(javascript, "../wechat_media_ffi.mjs", "cropImage")
pub fn crop_image(
  src s: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.compressVideo`
/// Compress video
///
@external(javascript, "../wechat_media_ffi.mjs", "compressVideo")
pub fn compress_video(
  src s: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.openVideoEditor`
/// Open video editor
///
@external(javascript, "../wechat_media_ffi.mjs", "openVideoEditor")
pub fn open_video_editor(
  src s: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.saveVideoToPhotosAlbum`
/// Save video to photos album
///
@external(javascript, "../wechat_media_ffi.mjs", "saveVideoToPhotosAlbum")
pub fn save_video_to_photos_album(
  file_path fp: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.chooseVideo`
/// Choose video
///
@external(javascript, "../wechat_media_ffi.mjs", "chooseVideo")
pub fn choose_video(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.chooseMedia`
/// Choose media (image or video)
///
@external(javascript, "../wechat_media_ffi.mjs", "chooseMedia")
pub fn choose_media(
  count c: Int,
  media_type mt: String,
  source_type st: String,
  max_duration md: Int,
  camera ca: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getVideoInfo`
/// Get video info
///
@external(javascript, "../wechat_media_ffi.mjs", "getVideoInfo")
pub fn get_video_info(
  src s: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.checkDeviceSupportHevc`
/// Check device HEVC support
///
@external(javascript, "../wechat_media_ffi.mjs", "checkDeviceSupportHevc")
pub fn check_device_support_hevc(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.previewMedia`
/// Preview media (image or video)
///
@external(javascript, "../wechat_media_ffi.mjs", "previewMedia")
pub fn preview_media(
  urls u: List(String),
  current c: String,
  show_menu sm: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)
