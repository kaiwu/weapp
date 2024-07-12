import gleam/dynamic.{type Dynamic}

pub type JsFunction1 =
  fn(JsObject) -> Nil

pub type Callback = JsFunction1

pub type JsObject {
  JsObject
}

@external(javascript, "../wechat_ffi.mjs", "obj_new")
pub fn new() -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_get")
pub fn get(o: JsObject, k: k) -> Result(Dynamic, Nil)

@external(javascript, "../wechat_ffi.mjs", "obj_set")
pub fn set(o: JsObject, k: k, v: v) -> JsObject

@external(javascript, "../wechat_ffi.mjs", "obj_assign")
pub fn merge(o: JsObject, n: JsObject) -> JsObject

fn lit(o: JsObject, ls: List(#(k, v))) -> JsObject {
  case ls {
    [] -> o
    [f, ..t] -> lit(set(o, f.0, f.1), t)
  }
}

pub fn literal(ls: List(#(k, v))) -> JsObject {
  new()
  |> lit(ls)
}
