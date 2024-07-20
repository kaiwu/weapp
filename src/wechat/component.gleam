//// component module provides miniprogram `component` bindings
//// details in [wechat document](https://developer.weixin.qq.com) 
////

import wechat/object.{type JsObject}

/// SelectorQuery type
///
pub type SelectorQuery

/// component constructor `Component({...})`
///
@external(javascript, "../wechat_ffi.mjs", "run_component")
pub fn run_component(o: JsObject) -> Nil

/// `component.selectComponent()` for the specified component
/// 
@external(javascript, "../wechat_ffi.mjs", "select_component")
pub fn select_component(component c: JsObject, selector s: String) -> JsObject
