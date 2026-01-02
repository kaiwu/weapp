//// share module provides sharing API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/share/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{
  type WechatCallback, type WechatResult, type WechatResultCallback,
}

/// `wx.updateShareMenu`
/// Update share menu
///
@external(javascript, "../wechat_ui_ffi.mjs", "updateShareMenu")
pub fn update_share_menu(
  with_share_ticket wst: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.showShareMenu`
/// Show share menu
///
@external(javascript, "../wechat_ui_ffi.mjs", "showShareMenu")
pub fn show_share_menu(
  with_share_ticket wst: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.hideShareMenu`
/// Hide share menu
///
@external(javascript, "../wechat_ui_ffi.mjs", "hideShareMenu")
pub fn hide_share_menu(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getShareInfo`
/// Get share info
///
@external(javascript, "../wechat_ui_ffi.mjs", "getShareInfo")
pub fn get_share_info(
  share_ticket st: String,
  timeout t: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.shareAppMessage`
/// Share app message
///
@external(javascript, "../wechat_ui_ffi.mjs", "shareAppMessage")
pub fn share_app_message(
  title t: String,
  path p: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onShareAppMessage`
/// Listen for share app message
///
@external(javascript, "../wechat_ui_ffi.mjs", "onShareAppMessage")
pub fn on_share_app_message(callback cb: WechatResultCallback) -> Nil

/// `wx.offShareAppMessage`
/// Remove share app message listener
///
@external(javascript, "../wechat_ui_ffi.mjs", "offShareAppMessage")
pub fn off_share_app_message(callback cb: WechatResultCallback) -> Nil

/// Phase 14: Share Advanced
///
/// `wx.showShareImageMenu`
/// Opens share image menu for sharing to chat/friends/album/download
///
@external(javascript, "../wechat_ui_ffi.mjs", "showShareImageMenu")
pub fn show_share_image_menu(
  path p: String,
  type_name t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.shareVideoMessage`
/// Shares video to chat
///
@external(javascript, "../wechat_ui_ffi.mjs", "shareVideoMessage")
pub fn share_video_message(
  src s: String,
  file_path fp: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.shareToOfficialAccount`
/// Shares article to Official Account for publication
///
@external(javascript, "../wechat_ui_ffi.mjs", "shareToOfficialAccount")
pub fn share_to_official_account(
  article_url au: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.shareFileMessage`
/// Shares file to chat
///
@external(javascript, "../wechat_ui_ffi.mjs", "shareFileMessage")
pub fn share_file_message(
  file_path fp: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onCopyUrl`
/// Listen for copy URL events
///
@external(javascript, "../wechat_ui_ffi.mjs", "onCopyUrl")
pub fn on_copy_url(callback cb: WechatResultCallback) -> Nil

/// `wx.offCopyUrl`
/// Remove copy URL event listener
///
@external(javascript, "../wechat_ui_ffi.mjs", "offCopyUrl")
pub fn off_copy_url(callback cb: WechatResultCallback) -> Nil

/// `wx.authPrivateMessage`
/// Authenticate private message with share ticket
///
@external(javascript, "../wechat_ui_ffi.mjs", "authPrivateMessage")
pub fn auth_private_message(
  share_ticket st: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)
