import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject}

/// flatten result(promise(result(a, e)), e)
///
pub fn flatten(r: Result(Promise(Result(a, e)), e)) -> Promise(Result(a, e)) {
  case r {
    Ok(p) -> p
    Error(x) -> promise.resolve(Error(x))
  }
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

/// drain and echo every side effect
///
pub fn drain_echo(a: a) -> Nil {
  echo a
  Nil
}
