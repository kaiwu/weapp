//// app module provides miniprogram `app` bindings
//// it also includes a few global utility functions
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/en/dev/framework/)
////

import wechat/object.{type JsObject}

/// global function `getApp()`
///
@external(javascript, "../wechat_ffi.mjs", "get_app")
pub fn get_app() -> JsObject

/// app constructor `App({...})`
/// the main entry point for miniprogram
///
@external(javascript, "../wechat_ffi.mjs", "run_app")
pub fn run_app(o: JsObject) -> Nil

/// global function `setTimeout(...)`
///
@external(javascript, "../wechat_ffi.mjs", "set_timeout")
pub fn set_timeout(
  callback cb: fn(JsObject) -> Nil,
  delay d: Int,
  with o: JsObject,
) -> Int

/// global function `clearTimeout(...)`
///
@external(javascript, "../wechat_ffi.mjs", "clear_timeout")
pub fn clear_timeout(id id: Int) -> Nil

/// global function `setInterval(...)`
///
@external(javascript, "../wechat_ffi.mjs", "set_interval")
pub fn set_interval(
  callback cb: fn(JsObject) -> Nil,
  delay d: Int,
  with o: JsObject,
) -> Int

/// global function `clearInterval(...)`
///
@external(javascript, "../wechat_ffi.mjs", "clear_interval")
pub fn clear_interval(id id: Int) -> Nil

/// global function `decodeURIComponent`
///
@external(javascript, "../wechat_ffi.mjs", "decode_uri_component")
pub fn decode_uri_component(uri: String) -> JsObject
