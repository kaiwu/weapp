//// canvas module provides canvas context API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/)
////

import gleam/javascript/promise.{type Promise}
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

/// Phase 16: Canvas Advanced
///
/// Canvas Creation
///
/// `wx.createOffscreenCanvas`
/// Create an offscreen canvas
///
@external(javascript, "../wechat_canvas_ffi.mjs", "createOffscreenCanvas")
pub fn create_offscreen_canvas(options o: JsObject) -> JsObject

/// `wx.canvasToTempFilePath`
/// Export canvas to temporary file path
///
@external(javascript, "../wechat_canvas_ffi.mjs", "canvasToTempFilePath")
pub fn canvas_to_temp_file_path(
  canvas_id c: String,
  file_type ft: String,
  quality q: Float,
  complete cb: fn(JsObject) -> Nil,
) -> Promise(JsObject)

/// `wx.canvasPutImageData`
/// Put image data onto canvas
///
@external(javascript, "../wechat_canvas_ffi.mjs", "canvasPutImageData")
pub fn canvas_put_image_data(
  canvas_id c: String,
  data d: JsObject,
  x x: Float,
  y y: Float,
  width w: Float,
  height h: Float,
) -> Nil

/// `wx.canvasGetImageData`
/// Get image data from canvas
///
@external(javascript, "../wechat_canvas_ffi.mjs", "canvasGetImageData")
pub fn canvas_get_image_data(
  canvas_id c: String,
  x x: Float,
  y y: Float,
  width w: Float,
  height h: Float,
  complete cb: fn(JsObject) -> Nil,
) -> Promise(JsObject)

/// Canvas Utility Methods
///
/// `wx.createImage`
/// Create an image object
///
@external(javascript, "../wechat_canvas_ffi.mjs", "createImage")
pub fn create_image() -> JsObject

/// `wx.createImageData`
/// Create an ImageData object
///
@external(javascript, "../wechat_canvas_ffi.mjs", "createImageData")
pub fn create_image_data(width w: Float, height h: Float) -> JsObject

/// `wx.createPath2D`
/// Create a Path2D object
///
@external(javascript, "../wechat_canvas_ffi.mjs", "createPath2D")
pub fn create_path_2d() -> JsObject

/// `wx.requestAnimationFrame`
/// Request animation frame
///
@external(javascript, "../wechat_canvas_ffi.mjs", "requestAnimationFrame")
pub fn request_animation_frame(callback cb: fn(JsObject) -> Nil) -> Int

/// `wx.cancelAnimationFrame`
/// Cancel animation frame
///
@external(javascript, "../wechat_canvas_ffi.mjs", "cancelAnimationFrame")
pub fn cancel_animation_frame(request_id i: Int) -> Nil

/// Phase 18: Canvas Advanced
///
/// CanvasGradient type
///
pub type CanvasGradient

/// `CanvasContext.createLinearGradient`
/// Create a linear gradient
///
@external(javascript, "../wechat_canvas_ffi.mjs", "createLinearGradient")
pub fn canvas_create_linear_gradient(
  ctx: CanvasContext,
  x0: Float,
  y0: Float,
  x1: Float,
  y1: Float,
) -> CanvasGradient

/// `CanvasContext.createCircularGradient`
/// Create a circular gradient
///
@external(javascript, "../wechat_canvas_ffi.mjs", "createCircularGradient")
pub fn canvas_create_circular_gradient(
  ctx: CanvasContext,
  x: Float,
  y: Float,
  r: Float,
) -> CanvasGradient

/// `CanvasGradient.addColorStop`
/// Add color stop to gradient
///
@external(javascript, "../wechat_canvas_ffi.mjs", "canvasGradientAddColorStop")
pub fn canvas_gradient_add_color_stop(
  gradient: CanvasGradient,
  offset: Float,
  color: String,
) -> Nil

/// `CanvasContext.setStrokeStyle`
/// Set stroke style
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setStrokeStyle")
pub fn canvas_set_stroke_style(ctx: CanvasContext, color: String) -> Nil

/// `CanvasContext.setGlobalAlpha`
/// Set global transparency
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setGlobalAlpha")
pub fn canvas_set_global_alpha(ctx: CanvasContext, alpha: Float) -> Nil

/// `CanvasContext.setFontSize`
/// Set font size
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setFontSize")
pub fn canvas_set_font_size(ctx: CanvasContext, size: Float) -> Nil

/// `CanvasContext.setTextAlign`
/// Set text alignment
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setTextAlign")
pub fn canvas_set_text_align(ctx: CanvasContext, align: String) -> Nil

/// `CanvasContext.setTextBaseline`
/// Set text baseline
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setTextBaseline")
pub fn canvas_set_text_baseline(ctx: CanvasContext, baseline: String) -> Nil

/// `CanvasContext.closePath`
/// Close current path
///
@external(javascript, "../wechat_canvas_ffi.mjs", "closePath")
pub fn canvas_close_path(ctx: CanvasContext) -> Nil

/// `CanvasContext.fill`
/// Fill path
///
@external(javascript, "../wechat_canvas_ffi.mjs", "fill")
pub fn canvas_fill(ctx: CanvasContext) -> Nil

/// `CanvasContext.stroke`
/// Stroke path
///
@external(javascript, "../wechat_canvas_ffi.mjs", "stroke")
pub fn canvas_stroke(ctx: CanvasContext) -> Nil

/// `CanvasContext.clip`
/// Clip drawing area
///
@external(javascript, "../wechat_canvas_ffi.mjs", "clip")
pub fn canvas_clip(ctx: CanvasContext) -> Nil

/// `CanvasContext.rect`
/// Draw rectangle path
///
@external(javascript, "../wechat_canvas_ffi.mjs", "rect")
pub fn canvas_rect(
  ctx: CanvasContext,
  x: Float,
  y: Float,
  width: Float,
  height: Float,
) -> Nil

/// `CanvasContext.setTransform`
/// Set transformation matrix
///
@external(javascript, "../wechat_canvas_ffi.mjs", "setTransform")
pub fn canvas_set_transform(
  ctx: CanvasContext,
  a: Float,
  b: Float,
  c: Float,
  d: Float,
  e: Float,
  f: Float,
) -> Nil

/// Canvas.toDataURL (OffscreenCanvas only)
/// Export canvas as data URL string
///
@external(javascript, "../wechat_canvas_ffi.mjs", "canvasToDataURL")
pub fn canvas_to_data_url(
  canvas: JsObject,
  file_type ft: String,
  quality q: Float,
) -> Promise(JsObject)

/// Canvas.getContext
/// Get canvas rendering context
///
@external(javascript, "../wechat_canvas_ffi.mjs", "canvasGetContext")
pub fn canvas_get_context(canvas: JsObject, context_type ct: String) -> JsObject

/// OffscreenCanvas.createImage
/// Create Image object for offscreen canvas
///
@external(javascript, "../wechat_canvas_ffi.mjs", "offscreenCanvasCreateImage")
pub fn offscreen_canvas_create_image(canvas: JsObject) -> JsObject

/// Path2D type
///
pub type Path2D

/// Path2D.addPath
/// Add another path
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dAddPath")
pub fn path_2d_add_path(path: Path2D, other_path: Path2D) -> Nil

/// Path2D.closePath
/// Close path
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dClosePath")
pub fn path_2d_close_path(path: Path2D) -> Nil

/// Path2D.moveTo
/// Move to point
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dMoveTo")
pub fn path_2d_move_to(path: Path2D, x: Float, y: Float) -> Nil

/// Path2D.lineTo
/// Draw line to point
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dLineTo")
pub fn path_2d_line_to(path: Path2D, x: Float, y: Float) -> Nil

/// Path2D.arc
/// Draw arc
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dArc")
pub fn path_2d_arc(
  path: Path2D,
  x: Float,
  y: Float,
  radius: Float,
  start_angle: Float,
  end_angle: Float,
  anticlockwise: Bool,
) -> Nil

/// Path2D.rect
/// Draw rectangle
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dRect")
pub fn path_2d_rect(
  path: Path2D,
  x: Float,
  y: Float,
  width: Float,
  height: Float,
) -> Nil

/// Path2D.bezierCurveTo
/// Draw cubic bezier curve
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dBezierCurveTo")
pub fn path_2d_bezier_curve_to(
  path: Path2D,
  cp1x: Float,
  cp1y: Float,
  cp2x: Float,
  cp2y: Float,
  x: Float,
  y: Float,
) -> Nil

/// Path2D.quadraticCurveTo
/// Draw quadratic bezier curve
///
@external(javascript, "../wechat_canvas_ffi.mjs", "path2dQuadraticCurveTo")
pub fn path_2d_quadratic_curve_to(
  path: Path2D,
  cpx: Float,
  cpy: Float,
  x: Float,
  y: Float,
) -> Nil
