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
