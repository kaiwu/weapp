import wechat/payment

pub fn payment_test() {
  let _ = payment.create_global_payment
  let _ = payment.request_common_payment
  let _ = payment.global_payment_open_method_picker
  let _ = payment.global_payment_request
  let _ = payment.global_payment_abort
}
