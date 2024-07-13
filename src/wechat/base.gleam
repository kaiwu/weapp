import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject}

@external(javascript, "../wechat_base_ffi.mjs", "switchTab")
pub fn switch_tab(o: JsObject) -> Promise(Nil)

@external(javascript, "../wechat_base_ffi.mjs", "reLaunch")
pub fn relaunch(o: JsObject) -> Promise(Nil)

@external(javascript, "../wechat_base_ffi.mjs", "navigateTo")
pub fn navigate_to(o: JsObject) -> Promise(Nil)

@external(javascript, "../wechat_base_ffi.mjs", "navigateBack")
pub fn navigate_back(o: JsObject) -> Promise(Nil)
