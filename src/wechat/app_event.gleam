//// app_event module provides app lifecycle event bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/base/app-event/)
////

import wechat/object.{type JsObject}

/// `wx.onAppShow`
/// Listen for app show
///
@external(javascript, "../wechat_base_ffi.mjs", "onAppShow")
pub fn on_app_show(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onAppHide`
/// Listen for app hide
///
@external(javascript, "../wechat_base_ffi.mjs", "onAppHide")
pub fn on_app_hide(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onError`
/// Listen for errors
///
@external(javascript, "../wechat_base_ffi.mjs", "onError")
pub fn on_error(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onAudioInterruptionBegin`
/// Listen for audio interruption begin
///
@external(javascript, "../wechat_base_ffi.mjs", "onAudioInterruptionBegin")
pub fn on_audio_interruption_begin(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onAudioInterruptionEnd`
/// Listen for audio interruption end
///
@external(javascript, "../wechat_base_ffi.mjs", "onAudioInterruptionEnd")
pub fn on_audio_interruption_end(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onThemeChange`
/// Listen for theme change
///
@external(javascript, "../wechat_base_ffi.mjs", "onThemeChange")
pub fn on_theme_change(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onPageNotFound`
/// Listen for page not found
///
@external(javascript, "../wechat_base_ffi.mjs", "onPageNotFound")
pub fn on_page_not_found(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onUnhandledRejection`
/// Listen for unhandled promise rejection
///
@external(javascript, "../wechat_base_ffi.mjs", "onUnhandledRejection")
pub fn on_unhandled_rejection(callback cb: fn(JsObject) -> Nil) -> Nil

/// `wx.onLazyLoadError`
/// Listen for lazy load error
///
@external(javascript, "../wechat_base_ffi.mjs", "onLazyLoadError")
pub fn on_lazy_load_error(callback cb: fn(JsObject) -> Nil) -> Nil
