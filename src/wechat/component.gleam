import wechat/object.{type JsObject}

pub type SelectorQuery

@external(javascript, "../wechat_ffi.mjs", "run_component")
pub fn run_component(o: JsObject) -> Nil

@external(javascript, "../wechat_ffi.mjs", "select_component")
pub fn select_component(component c: JsObject, selector s: String) -> JsObject
