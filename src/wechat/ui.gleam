//// ui module provides UI category bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/ui/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// `wx.showModal`
/// Display a modal dialog
///
@external(javascript, "../wechat_ui_ffi.mjs", "showModal")
pub fn show_modal(
  title t: String,
  content c: String,
  show_cancel sc: Bool,
  cancel_text clt: String,
  cancel_color cc: String,
  confirm_text ct: String,
  confirm_color cf: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.showActionSheet`
/// Display an action sheet
///
@external(javascript, "../wechat_ui_ffi.mjs", "showActionSheet")
pub fn show_action_sheet(
  item_list il: List(String),
  item_color icolor: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.hideToast`
/// Hide the message prompt box
///
@external(javascript, "../wechat_ui_ffi.mjs", "hideToast")
pub fn hide_toast(
  no_conflict nc: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.enableAlertBeforeUnload`
/// Enable alert before page unload
///
@external(javascript, "../wechat_ui_ffi.mjs", "enableAlertBeforeUnload")
pub fn enable_alert_before_unload(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.disableAlertBeforeUnload`
/// Disable alert before page unload
///
@external(javascript, "../wechat_ui_ffi.mjs", "disableAlertBeforeUnload")
pub fn disable_alert_before_unload(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.showNavigationBarLoading`
/// Show navigation bar loading animation on the current page
///
@external(javascript, "../wechat_ui_ffi.mjs", "showNavigationBarLoading")
pub fn show_navigation_bar_loading(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setNavigationBarColor`
/// Set page navigation bar color
///
@external(javascript, "../wechat_ui_ffi.mjs", "setNavigationBarColor")
pub fn set_navigation_bar_color(
  front_color fc: String,
  background_color bc: String,
  animation ani: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.hideNavigationBarLoading`
/// Hide navigation bar loading animation on the current page
///
@external(javascript, "../wechat_ui_ffi.mjs", "hideNavigationBarLoading")
pub fn hide_navigation_bar_loading(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.hideHomeButton`
/// Hide home button
///
@external(javascript, "../wechat_ui_ffi.mjs", "hideHomeButton")
pub fn hide_home_button(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.setBackgroundTextStyle`
/// Set pull-down background font and loading icon style
///
@external(javascript, "../wechat_ui_ffi.mjs", "setBackgroundTextStyle")
pub fn set_background_text_style(
  text_style ts: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setBackgroundColor`
/// Set window background color
///
@external(javascript, "../wechat_ui_ffi.mjs", "setBackgroundColor")
pub fn set_background_color(
  background_color bc: String,
  background_color_top bct: String,
  background_color_bottom bcb: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.showTabBarRedDot`
/// Show red dot on tabBar item
///
@external(javascript, "../wechat_ui_ffi.mjs", "showTabBarRedDot")
pub fn show_tab_bar_red_dot(
  index i: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setTabBarStyle`
/// Set tabBar style
///
@external(javascript, "../wechat_ui_ffi.mjs", "setTabBarStyle")
pub fn set_tab_bar_style(
  color c: String,
  selected_color sc: String,
  background_color bc: String,
  border_style bs: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setTabBarItem`
/// Set tabBar item content
///
@external(javascript, "../wechat_ui_ffi.mjs", "setTabBarItem")
pub fn set_tab_bar_item(
  index i: Int,
  text t: String,
  icon_path ip: String,
  selected_icon_path sip: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.setTabBarBadge`
/// Set tabBar badge text
///
@external(javascript, "../wechat_ui_ffi.mjs", "setTabBarBadge")
pub fn set_tab_bar_badge(
  index i: Int,
  text t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.removeTabBarBadge`
/// Remove tabBar badge text
///
@external(javascript, "../wechat_ui_ffi.mjs", "removeTabBarBadge")
pub fn remove_tab_bar_badge(
  index i: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.hideTabBarRedDot`
/// Hide tabBar red dot
///
@external(javascript, "../wechat_ui_ffi.mjs", "hideTabBarRedDot")
pub fn hide_tab_bar_red_dot(
  index i: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.stopPullDownRefresh`
/// Stop pull-down refresh
///
@external(javascript, "../wechat_ui_ffi.mjs", "stopPullDownRefresh")
pub fn stop_pull_down_refresh(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.startPullDownRefresh`
/// Start pull-down refresh
///
@external(javascript, "../wechat_ui_ffi.mjs", "startPullDownRefresh")
pub fn start_pull_down_refresh(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// Font description for loadFontFace
pub type DescFontFace {
  DescFontFace(style: String, weight: String, variant: String)
}

/// `wx.loadFontFace`
/// Load custom font
///
@external(javascript, "../wechat_ui_ffi.mjs", "loadFontFace")
pub fn load_font_face(
  family f: String,
  source s: String,
  global g: Bool,
  scopes sc: List(#(String, Bool)),
  desc d: DescFontFace,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.loadBuiltInFontFace`
/// Load built-in font
///
@external(javascript, "../wechat_ui_ffi.mjs", "loadBuiltInFontFace")
pub fn load_built_in_font_face(
  family f: String,
  source s: String,
  global g: Bool,
  scopes sc: List(#(String, Bool)),
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.createAnimation`
/// Create an animation instance
///
@external(javascript, "../wechat_ui_ffi.mjs", "createAnimation")
pub fn create_animation(options o: JsObject) -> JsObject

/// `Animation.backgroundColor`
/// Set background color
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationBackgroundColor")
pub fn animation_background_color(anim: JsObject, color c: String) -> JsObject

/// `Animation.bottom`
/// Set bottom position
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationBottom")
pub fn animation_bottom(anim: JsObject, value v: String) -> JsObject

/// `Animation.height`
/// Set height
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationHeight")
pub fn animation_height(anim: JsObject, value v: String) -> JsObject

/// `Animation.left`
/// Set left position
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationLeft")
pub fn animation_left(anim: JsObject, value v: String) -> JsObject

/// `Animation.right`
/// Set right position
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationRight")
pub fn animation_right(anim: JsObject, value v: String) -> JsObject

/// `Animation.top`
/// Set top position
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationTop")
pub fn animation_top(anim: JsObject, value v: String) -> JsObject

/// `Animation.width`
/// Set width
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationWidth")
pub fn animation_width(anim: JsObject, value v: String) -> JsObject

/// `Animation.opacity`
/// Set opacity
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationOpacity")
pub fn animation_opacity(anim: JsObject, value v: Float) -> JsObject

/// `Animation.rotate`
/// Rotate element
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationRotate")
pub fn animation_rotate(anim: JsObject, angle a: Float) -> JsObject

/// `Animation.rotateX`
/// Rotate element on X axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationRotateX")
pub fn animation_rotate_x(anim: JsObject, angle a: Float) -> JsObject

/// `Animation.rotateY`
/// Rotate element on Y axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationRotateY")
pub fn animation_rotate_y(anim: JsObject, angle a: Float) -> JsObject

/// `Animation.rotateZ`
/// Rotate element on Z axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationRotateZ")
pub fn animation_rotate_z(anim: JsObject, angle a: Float) -> JsObject

/// `Animation.scale`
/// Scale element
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationScale")
pub fn animation_scale(anim: JsObject, sx: Float, sy: Float) -> JsObject

/// `Animation.scale3d`
/// Scale element in 3D
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationScale3d")
pub fn animation_scale3d(
  anim: JsObject,
  sx: Float,
  sy: Float,
  sz: Float,
) -> JsObject

/// `Animation.scaleX`
/// Scale element on X axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationScaleX")
pub fn animation_scale_x(anim: JsObject, scale s: Float) -> JsObject

/// `Animation.scaleY`
/// Scale element on Y axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationScaleY")
pub fn animation_scale_y(anim: JsObject, scale s: Float) -> JsObject

/// `Animation.scaleZ`
/// Scale element on Z axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationScaleZ")
pub fn animation_scale_z(anim: JsObject, scale s: Float) -> JsObject

/// `Animation.skew`
/// Skew element
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationSkew")
pub fn animation_skew(anim: JsObject, ax: Float, ay: Float) -> JsObject

/// `Animation.skewX`
/// Skew element on X axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationSkewX")
pub fn animation_skew_x(anim: JsObject, angle a: Float) -> JsObject

/// `Animation.skewY`
/// Skew element on Y axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationSkewY")
pub fn animation_skew_y(anim: JsObject, angle a: Float) -> JsObject

/// `Animation.translate`
/// Translate element
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationTranslate")
pub fn animation_translate(anim: JsObject, x: String, y: String) -> JsObject

/// `Animation.translate3d`
/// Translate element in 3D
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationTranslate3d")
pub fn animation_translate3d(
  anim: JsObject,
  x: String,
  y: String,
  z: String,
) -> JsObject

/// `Animation.translateX`
/// Translate element on X axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationTranslateX")
pub fn animation_translate_x(anim: JsObject, distance d: String) -> JsObject

/// `Animation.translateY`
/// Translate element on Y axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationTranslateY")
pub fn animation_translate_y(anim: JsObject, distance d: String) -> JsObject

/// `Animation.translateZ`
/// Translate element on Z axis
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationTranslateZ")
pub fn animation_translate_z(anim: JsObject, distance d: String) -> JsObject

/// `Animation.matrix`
/// Transform with matrix
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationMatrix")
pub fn animation_matrix(
  anim: JsObject,
  a: Float,
  b: Float,
  c: Float,
  d: Float,
  tx: Float,
  ty: Float,
) -> JsObject

/// `Animation.matrix3d`
/// Transform with 3D matrix
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationMatrix3d")
pub fn animation_matrix3d(
  anim: JsObject,
  m11: Float,
  m12: Float,
  m13: Float,
  m14: Float,
  m21: Float,
  m22: Float,
  m23: Float,
  m24: Float,
  m31: Float,
  m32: Float,
  m33: Float,
  m34: Float,
  m41: Float,
  m42: Float,
  m43: Float,
  m44: Float,
) -> JsObject

/// `Animation.step`
/// Mark the start of an animation step
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationStep")
pub fn animation_step(anim: JsObject, options o: JsObject) -> JsObject

/// `Animation.export`
/// Export animation
///
@external(javascript, "../wechat_ui_ffi.mjs", "animationExport")
pub fn animation_export(anim: JsObject) -> JsObject
