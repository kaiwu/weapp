//// canvas module provides canvas context API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/)
////

import wechat/object.{type JsObject}

/// CanvasContext type
///
pub type CanvasContext

/// `wx.createCanvasContext`
/// Create canvas context
///
@external(javascript, "../wechat_canvas_ffi.mjs", "createCanvasContext")
pub fn create_canvas_context(canvas_id: String) -> CanvasContext

/// CanvasContext.fillStyle
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setFillStyle")
pub fn canvas_set_fill_style(ctx: CanvasContext, color: String) -> Nil

/// CanvasContext.fillRect
///
@external(javascript, "../wechat_canvas_ffi.mjs", "fillRect")
pub fn canvas_fill_rect(
  ctx: CanvasContext,
  x: Float,
  y: Float,
  width: Float,
  height: Float,
) -> Nil

/// CanvasContext.strokeRect
///
@external(javascript, "../wechat_canvas_ffi.mjs", "strokeRect")
pub fn canvas_stroke_rect(
  ctx: CanvasContext,
  x: Float,
  y: Float,
  width: Float,
  height: Float,
) -> Nil

/// CanvasContext.beginPath
///
@external(javascript, "../wechat_canvas_ffi.mjs", "beginPath")
pub fn canvas_begin_path(ctx: CanvasContext) -> Nil

/// `CanvasContext.moveTo`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "moveTo")
pub fn canvas_move_to(ctx: CanvasContext, x: Float, y: Float) -> Nil

/// `CanvasContext.lineTo`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "lineTo")
pub fn canvas_line_to(ctx: CanvasContext, x: Float, y: Float) -> Nil

/// `CanvasContext.arc`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "arc")
pub fn canvas_arc(
  ctx: CanvasContext,
  x: Float,
  y: Float,
  radius: Float,
  start_angle: Float,
  end_angle: Float,
  anticlockwise: Bool,
) -> Nil

/// `CanvasContext.arcTo`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "arcTo")
pub fn canvas_arc_to(
  ctx: CanvasContext,
  x1: Float,
  y1: Float,
  x2: Float,
  y2: Float,
  radius: Float,
) -> Nil

/// `CanvasContext.quadraticCurveTo`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "quadraticCurveTo")
pub fn canvas_quadratic_curve_to(
  ctx: CanvasContext,
  control_point_x: Float,
  control_point_y: Float,
  end_point_x: Float,
  end_point_y: Float,
) -> Nil

/// `CanvasContext.bezierCurveTo`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "bezierCurveTo")
pub fn canvas_bezier_curve_to(
  ctx: CanvasContext,
  cp1_x: Float,
  cp1_y: Float,
  cp2_x: Float,
  cp2_y: Float,
  ep_x: Float,
  ep_y: Float,
) -> Nil

/// `CanvasContext.clearRect`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "clearRect")
pub fn canvas_clear_rect(
  ctx: CanvasContext,
  x: Float,
  y: Float,
  width: Float,
  height: Float,
) -> Nil

/// `CanvasContext.save`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "save")
pub fn canvas_save(ctx: CanvasContext) -> Nil

/// `CanvasContext.restore`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "restore")
pub fn canvas_restore(ctx: CanvasContext) -> Nil

/// `CanvasContext.draw`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "draw")
pub fn canvas_draw(ctx: CanvasContext, reserve: Bool) -> Nil

/// `CanvasContext.drawImage`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "drawImage")
pub fn canvas_draw_image(
  ctx: CanvasContext,
  img_source: JsObject,
  sx: Float,
  sy: Float,
  sw: Float,
  sh: Float,
  dx: Float,
  dy: Float,
  dwidth: Float,
  dheight: Float,
) -> Nil

/// `CanvasContext.fillText`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "fillText")
pub fn canvas_fill_text(
  ctx: CanvasContext,
  text: String,
  x: Float,
  y: Float,
  max_width: Float,
) -> Nil

/// `CanvasContext.strokeText`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "strokeText")
pub fn canvas_stroke_text(
  ctx: CanvasContext,
  text: String,
  x: Float,
  y: Float,
  max_width: Float,
) -> Nil

/// `CanvasContext.measureText`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "measureText")
pub fn canvas_measure_text(ctx: CanvasContext, text: String) -> JsObject

/// `CanvasContext.transform`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "transform")
pub fn canvas_transform(
  ctx: CanvasContext,
  a: Float,
  b: Float,
  c: Float,
  d: Float,
  e: Float,
  f: Float,
) -> Nil

/// `CanvasContext.rotate`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "rotate")
pub fn canvas_rotate(ctx: CanvasContext, angle: Float) -> Nil

/// `CanvasContext.scale`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "scale")
pub fn canvas_scale(ctx: CanvasContext, sx: Float, sy: Float) -> Nil

/// `CanvasContext.translate`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "translate")
pub fn canvas_translate(ctx: CanvasContext, dx: Float, dy: Float) -> Nil

/// `CanvasContext.setLineDash`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setLineDash")
pub fn canvas_set_line_dash(ctx: CanvasContext, pattern: List(Int)) -> Nil

/// `CanvasContext.setLineWidth`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setLineWidth")
pub fn canvas_set_line_width(ctx: CanvasContext, width: Float) -> Nil

/// `CanvasContext.setLineCap`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setLineCap")
pub fn canvas_set_line_cap(ctx: CanvasContext, line_cap: String) -> Nil

/// `CanvasContext.setLineJoin`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setLineJoin")
pub fn canvas_set_line_join(ctx: CanvasContext, line_join: String) -> Nil

/// `CanvasContext.setMiterLimit`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setMiterLimit")
pub fn canvas_set_miter_limit(ctx: CanvasContext, miter: Float) -> Nil

/// `CanvasContext.setShadow`
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setShadow")
pub fn canvas_set_shadow(
  ctx: CanvasContext,
  color: String,
  blur: Float,
  offset_x: Float,
  offset_y: Float,
) -> Nil
