//// map module provides map context API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/media/map/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatResultCallback, type JsObject, type WechatCallback, type WechatResult}

/// MapContext type
///
pub type MapContext

/// `wx.createMapContext`
/// Create map context
///
@external(javascript, "../wechat_map_ffi.mjs", "createMapContext")
pub fn create_map_context(map_id m: String) -> MapContext

/// `MapContext.getCenterLocation`
/// Get center location
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextGetCenterLocation")
pub fn map_context_get_center_location(
  ctx mc: MapContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MapContext.moveToLocation`
/// Move to location
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextMoveToLocation")
pub fn map_context_move_to_location(
  ctx mc: MapContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MapContext.translateMarker`
/// Translate marker
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextTranslateMarker")
pub fn map_context_translate_marker(
  ctx mc: MapContext,
  marker_id m_id: String,
  destination d: JsObject,
  auto_rotate a: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MapContext.includePoints`
/// Include points
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextIncludePoints")
pub fn map_context_include_points(
  ctx mc: MapContext,
  points p: JsObject,
  padding pad: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MapContext.getRegion`
/// Get region
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextGetRegion")
pub fn map_context_get_region(
  ctx mc: MapContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `MapContext.getScale`
/// Get scale
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextGetScale")
pub fn map_context_get_scale(ctx mc: MapContext) -> Float

/// `MapContext.getRotate`
/// Get rotation
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextGetRotate")
pub fn map_context_get_rotate(ctx mc: MapContext) -> Float

/// `MapContext.setRotate`
/// Set rotation
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextSetRotate")
pub fn map_context_set_rotate(
  ctx mc: MapContext,
  rotation r: Float,
  duration d: Int,
) -> Nil

/// `MapContext.setSkew`
/// Set skew
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextSetSkew")
pub fn map_context_set_skew(
  ctx mc: MapContext,
  tilt_x tx: Float,
  tilt_y ty: Float,
) -> Nil

/// `MapContext.setCompass`
/// Set compass
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextSetCompass")
pub fn map_context_set_compass(ctx mc: MapContext, direction d: Float) -> Nil

/// `MapContext.openMapApp`
/// Open map app
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextOpenMapApp")
pub fn map_context_open_map_app(ctx mc: MapContext) -> Nil

/// `MapContext.on`
/// Listen for map events
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextOn")
pub fn map_context_on(
  ctx mc: MapContext,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// `MapContext.off`
/// Remove event listener
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextOff")
pub fn map_context_off(
  ctx mc: MapContext,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// `MapContext.addMarkers`
/// Add markers
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextAddMarkers")
pub fn map_context_add_markers(ctx mc: MapContext, markers m: JsObject) -> Nil

/// `MapContext.removeMarkers`
/// Remove markers
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextRemoveMarkers")
pub fn map_context_remove_markers(
  ctx mc: MapContext,
  marker_ids ids: List(String),
) -> Nil

/// `MapContext.setBoundary`
/// Set boundary
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextSetBoundary")
pub fn map_context_set_boundary(ctx mc: MapContext, boundary b: JsObject) -> Nil

/// `MapContext.addCustomLayer`
/// Add custom layer
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextAddCustomLayer")
pub fn map_context_add_custom_layer(
  ctx mc: MapContext,
  layer_id l: String,
  options o: JsObject,
) -> Nil

/// `MapContext.removeCustomLayer`
/// Remove custom layer
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextRemoveCustomLayer")
pub fn map_context_remove_custom_layer(
  ctx mc: MapContext,
  layer_id l: String,
) -> Nil

/// `MapContext.executeVisualLayerCommand`
/// Execute visual layer command
///
@external(javascript, "../wechat_map_ffi.mjs", "mapContextExecuteVisualLayerCommand")
pub fn map_context_execute_visual_layer_command(
  ctx mc: MapContext,
  cmd c: JsObject,
) -> Nil
