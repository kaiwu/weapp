//// keyboard module provides keyboard API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/device/keyboard/)
////

import wechat/object.{type JsObject}

/// `wx.hideKeyboard`
/// Hide keyboard
///
@external(javascript, "../wechat_device_ffi.mjs", "hideKeyboard")
pub fn hide_keyboard() -> Nil

/// `wx.getSelectedTextRange`
/// Get selected text range
///
@external(javascript, "../wechat_device_ffi.mjs", "getSelectedTextRange")
pub fn get_selected_text_range() -> JsObject

/// `wx.onKeyboardHeightChange`
/// Listen for keyboard height change
///
@external(javascript, "../wechat_device_ffi.mjs", "onKeyboardHeightChange")
pub fn on_keyboard_height_change(callback cb: fn(JsObject) -> Nil) -> Nil
