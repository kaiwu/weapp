//// payment module provides payment API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/payment/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// GlobalPayment type
///
pub type GlobalPayment

/// `wx.createGlobalPayment`
/// Create global payment
///
@external(javascript, "../wechat_base_ffi.mjs", "createGlobalPayment")
pub fn create_global_payment() -> GlobalPayment

/// `wx.requestCommonPayment`
/// Request common payment
///
@external(javascript, "../wechat_base_ffi.mjs", "requestCommonPayment")
pub fn request_common_payment(
  payment_order o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// GlobalPayment.openMethodPicker
///
@external(javascript, "../wechat_base_ffi.mjs", "globalPaymentOpenMethodPicker")
pub fn global_payment_open_method_picker(ctx gp: GlobalPayment) -> Nil

/// GlobalPayment.requestGlobalPayment
///
@external(javascript, "../wechat_base_ffi.mjs", "globalPaymentRequestGlobalPayment")
pub fn global_payment_request(ctx gp: GlobalPayment, order o: JsObject) -> Nil

/// GlobalPayment.abort
///
@external(javascript, "../wechat_base_ffi.mjs", "globalPaymentAbort")
pub fn global_payment_abort(ctx gp: GlobalPayment) -> Nil
