//// component module provides miniprogram `component` bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/en/dev/framework/)
////

import gleam/list
import wechat/object.{type JsObject}

/// SelectorQuery type
///
pub type SelectorQuery

pub type Property {
  IntProperty(name: String, value: Int)
  NumberProperty(name: String, value: Float)
  BooleanProperty(name: String, value: Bool)
  StringProperty(name: String, value: String)
  ObjectProperty(name: String, value: JsObject)
  ArrayProperty(name: String, value: JsObject)
  // o.values
}

@external(javascript, "../wechat_component_ffi.mjs", "to_object")
fn to_obj(n: String, t: String, v: v) -> JsObject

@external(javascript, "../wechat_component_ffi.mjs", "array_to_object")
fn array_to_obj(n: String, v: v) -> JsObject

/// property to object
///
pub fn to_object(p: Property) -> JsObject {
  case p {
    IntProperty(n, v) -> to_obj(n, "Number", v)
    NumberProperty(n, v) -> to_obj(n, "Number", v)
    BooleanProperty(n, v) -> to_obj(n, "Boolean", v)
    StringProperty(n, v) -> to_obj(n, "String", v)
    ObjectProperty(n, v) -> to_obj(n, "Object", v)
    ArrayProperty(n, v) -> array_to_obj(n, v)
  }
}

/// properties to object
pub fn to_properties(ps: List(Property)) -> JsObject {
  list.fold(ps, object.new(), fn(o, p) { object.merge(o, to_object(p)) })
}

/// component constructor `Component({...})`
///
@external(javascript, "../wechat_component_ffi.mjs", "run_component")
pub fn run_component(o: JsObject) -> Nil

/// `component.selectComponent()` for the specified component
/// 
@external(javascript, "../wechat_component_ffi.mjs", "select_component")
pub fn select_component(component c: JsObject, selector s: String) -> JsObject
