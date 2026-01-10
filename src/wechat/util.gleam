import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatError}

/// flatten result(promise(result(a, e)), e)
///
pub fn flatten(r: Result(Promise(Result(a, e)), e)) -> Promise(Result(a, e)) {
  case r {
    Ok(p) -> p
    Error(x) -> promise.resolve(Error(x))
  }
}

/// ignore empty promise
///
pub fn ignore() -> Promise(Result(JsObject, WechatError)) {
  promise.resolve(Ok(object.new()))
}

/// bind f to o
///
@external(javascript, "../wechat_ffi.mjs", "bind")
pub fn bind(f: f, o: JsObject) -> f

/// drain every side effect
///
pub fn drain(_: a) -> Nil {
  Nil
}
