pub type JsObject {
  JsObject
  AppObject(
    global_data: JsObject,
    on_lunch: JsFunction1,
    on_show: JsFunction1,
    on_hide: fn() -> Nil,
    on_error: fn(String) -> Nil,
    on_page_not_found: JsFunction1,
    on_unhandled_rejection: JsFunction1,
    on_theme_change: JsFunction1,
  )

  PageObject(
    data: JsObject,
  )
}

pub type JsFunction1 = fn(JsObject) -> Nil
