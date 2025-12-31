//// video module provides video API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/media/video/)
////

/// VideoContext type
///
pub type VideoContext

/// `wx.createVideoContext`
/// Create video context
///
@external(javascript, "../wechat_media_ffi.mjs", "createVideoContext")
pub fn create_video_context(id s: String) -> VideoContext

/// VideoContext.play
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextPlay")
pub fn video_play(ctx vc: VideoContext) -> Nil

/// VideoContext.pause
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextPause")
pub fn video_pause(ctx vc: VideoContext) -> Nil

/// VideoContext.stop
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextStop")
pub fn video_stop(ctx vc: VideoContext) -> Nil

/// VideoContext.seek
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextSeek")
pub fn video_seek(ctx vc: VideoContext, position p: Float) -> Nil

/// VideoContext.playbackRate
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextPlaybackRate")
pub fn video_playback_rate(ctx vc: VideoContext, rate r: Float) -> Nil

/// VideoContext.requestFullScreen
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextRequestFullScreen")
pub fn video_request_full_screen(ctx vc: VideoContext) -> Nil

/// VideoContext.exitFullScreen
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextExitFullScreen")
pub fn video_exit_full_screen(ctx vc: VideoContext) -> Nil

/// VideoContext.requestBackgroundPlayback
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextRequestBackgroundPlayback")
pub fn video_request_background_playback(ctx vc: VideoContext) -> Nil

/// VideoContext.exitBackgroundPlayback
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextExitBackgroundPlayback")
pub fn video_exit_background_playback(ctx vc: VideoContext) -> Nil

/// VideoContext.showStatusBar
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextShowStatusBar")
pub fn video_show_status_bar(ctx vc: VideoContext, show s: Bool) -> Nil

/// VideoContext.hideStatusBar
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextHideStatusBar")
pub fn video_hide_status_bar(ctx vc: VideoContext) -> Nil

/// VideoContext.sendDanmu
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextSendDanmu")
pub fn video_send_danmu(
  ctx vc: VideoContext,
  text t: String,
  color c: String,
) -> Nil

/// VideoContext.exitCasting
/// Exit casting
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextExitCasting")
pub fn video_exit_casting(ctx vc: VideoContext) -> Nil

/// VideoContext.exitPictureInPicture
/// Exit picture-in-picture
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextExitPictureInPicture")
pub fn video_exit_picture_in_picture(ctx vc: VideoContext) -> Nil

/// VideoContext.reconnectCasting
/// Reconnect casting device
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextReconnectCasting")
pub fn video_reconnect_casting(ctx vc: VideoContext) -> Nil

/// VideoContext.startCasting
/// Start casting
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextStartCasting")
pub fn video_start_casting(ctx vc: VideoContext) -> Nil

/// VideoContext.switchCasting
/// Switch casting device
///
@external(javascript, "../wechat_media_ffi.mjs", "videoContextSwitchCasting")
pub fn video_switch_casting(ctx vc: VideoContext) -> Nil
