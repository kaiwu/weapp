//// open module provides open API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/open-api/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// `wx.chooseAddress`
/// Choose address
///
@external(javascript, "../wechat_base_ffi.mjs", "chooseAddress")
pub fn choose_address(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getUserProfile`
/// Get user profile
///
@external(javascript, "../wechat_base_ffi.mjs", "getUserProfile")
pub fn get_user_profile(
  desc d: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getUserInfo`
/// Get user info
///
@external(javascript, "../wechat_base_ffi.mjs", "getUserInfo")
pub fn get_user_info(
  with_credentials wc: Bool,
  lang l: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.requestSubscribeMessage`
/// Request subscribe message
///
@external(javascript, "../wechat_base_ffi.mjs", "requestSubscribeMessage")
pub fn request_subscribe_message(
  tmpl_ids t: List(#(String, String)),
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.authorize`
/// Authorize
///
@external(javascript, "../wechat_base_ffi.mjs", "authorize")
pub fn authorize(
  scope s: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.openSetting`
/// Open setting
///
@external(javascript, "../wechat_base_ffi.mjs", "openSetting")
pub fn open_setting(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.makePhoneCall`
/// Make phone call
///
@external(javascript, "../wechat_base_ffi.mjs", "makePhoneCall")
pub fn make_phone_call(
  phone_number pn: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.navigateToMiniProgram`
/// Navigate to mini program
///
@external(javascript, "../wechat_base_ffi.mjs", "navigateToMiniProgram")
pub fn navigate_to_mini_program(
  app_id a: String,
  path p: String,
  extra_data ed: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.navigateBackMiniProgram`
/// Navigate back mini program
///
@external(javascript, "../wechat_base_ffi.mjs", "navigateBackMiniProgram")
pub fn navigate_back_mini_program(
  extra_data ed: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.exitMiniProgram`
/// Exit mini program
///
@external(javascript, "../wechat_base_ffi.mjs", "exitMiniProgram")
pub fn exit_mini_program(complete cb: WechatCallback) -> Promise(WechatResult)

/// Calendar & Contact
///
/// `wx.addPhoneRepeatCalendar`
/// Add repeat calendar event
///
@external(javascript, "../wechat_base_ffi.mjs", "addPhoneRepeatCalendar")
pub fn add_phone_repeat_calendar(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.addPhoneCalendar`
/// Add calendar event
///
@external(javascript, "../wechat_base_ffi.mjs", "addPhoneCalendar")
pub fn add_phone_calendar(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.chooseContact`
/// Choose contact from address book
///
@external(javascript, "../wechat_base_ffi.mjs", "chooseContact")
pub fn choose_contact(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.addPhoneContact`
/// Add contact to address book
///
@external(javascript, "../wechat_base_ffi.mjs", "addPhoneContact")
pub fn add_phone_contact(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.sendSms`
/// Send SMS
///
@external(javascript, "../wechat_base_ffi.mjs", "sendSms")
pub fn send_sms(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)
