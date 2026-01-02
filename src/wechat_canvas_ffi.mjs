import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function createCanvasContext(c) {
  return wx.createCanvasContext(c);
}

export function setFillStyle(ctx, c) {
  ctx.fillStyle = c;
}

export function fillRect(ctx, x, y, w, h) {
  ctx.fillRect(x, y, w, h);
}

export function strokeRect(ctx, x, y, w, h) {
  ctx.strokeRect(x, y, w, h);
}

export function beginPath(ctx) {
  ctx.beginPath();
}

export function moveTo(ctx, x, y) {
  ctx.moveTo(x, y);
}

export function lineTo(ctx, x, y) {
  ctx.lineTo(x, y);
}

export function arc(ctx, x, y, r, sa, ea, ac) {
  ctx.arc(x, y, r, sa, ea, ac);
}

export function arcTo(ctx, x1, y1, x2, y2, r) {
  ctx.arcTo(x1, y1, x2, y2, r);
}

export function quadraticCurveTo(ctx, cpx_x, cpy_y, ep_x, ep_y) {
  ctx.quadraticCurveTo(cpx_x, cpy_y, ep_x, ep_y);
}

export function bezierCurveTo(ctx, cp1_x, cp1_y, cp2_x, cp2_y, ep_x, ep_y) {
  ctx.bezierCurveTo(cp1_x, cp1_y, cp2_x, cp2_y, ep_x, ep_y);
}

export function clearRect(ctx, x, y, w, h) {
  ctx.clearRect(x, y, w, h);
}

export function save(ctx) {
  ctx.save();
}

export function restore(ctx) {
  ctx.restore();
}

export function draw(ctx, r) {
  ctx.draw(r);
}

export function drawImage(ctx, i, sx, sy, sw, sh, dx, dy, dw, dh) {
  ctx.drawImage(i, sx, sy, sw, sh, dx, dy, dw, dh);
}

export function fillText(ctx, t, x, y, mw) {
  ctx.fillText(t, x, y, mw);
}

export function strokeText(ctx, t, x, y, mw) {
  ctx.strokeText(t, x, y, mw);
}

export function measureText(ctx, t) {
  return ctx.measureText(t);
}

export function transform(ctx, a, b, c, d, e, f) {
  ctx.transform(a, b, c, d, e, f);
}

export function rotate(ctx, a) {
  ctx.rotate(a);
}

export function scale(ctx, sx, sy) {
  ctx.scale(sx, sy);
}

export function translate(ctx, dx, dy) {
  ctx.translate(dx, dy);
}

export function setLineDash(ctx, p) {
  ctx.setLineDash(p);
}

export function setLineWidth(ctx, lw) {
  ctx.lineWidth = lw;
}

export function setLineCap(ctx, lc) {
  ctx.lineCap = lc;
}

export function setLineJoin(ctx, lj) {
  ctx.lineJoin = lj;
}

export function setMiterLimit(ctx, ml) {
  ctx.miterLimit = ml;
}

export function setShadow(ctx, c, b, ox, oy) {
  ctx.shadowColor = c;
  ctx.shadowBlur = b;
  ctx.shadowOffsetX = ox;
  ctx.shadowOffsetY = oy;
}

// Phase 16: Canvas Advanced
export function createOffscreenCanvas(options) {
  return wx.createOffscreenCanvas(options)
}

export function canvasToTempFilePath(canvasId, fileType, quality, cb) {
  return new Promise(resolve => {
    wx.canvasToTempFilePath({
      canvasId,
      fileType,
      quality,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function canvasPutImageData(canvasId, data, x, y, width, height) {
  wx.canvasPutImageData({
    canvasId,
    data,
    x,
    y,
    width,
    height
  })
}

export function canvasGetImageData(canvasId, x, y, width, height, cb) {
  return new Promise(resolve => {
    wx.canvasGetImageData({
      canvasId,
      x,
      y,
      width,
      height,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function createImage() {
  return wx.createImage()
}

export function createImageData(width, height) {
  return wx.createImageData(width, height)
}

export function createPath2D() {
  return wx.createPath2D()
}

export function requestAnimationFrame(cb) {
  return wx.requestAnimationFrame(cb)
}

export function cancelAnimationFrame(requestId) {
  wx.cancelAnimationFrame(requestId)
}

// Phase 18: Canvas Advanced

export function createLinearGradient(ctx, x0, y0, x1, y1) {
  return ctx.createLinearGradient(x0, y0, x1, y1)
}

export function createCircularGradient(ctx, x, y, r) {
  return ctx.createCircularGradient(x, y, r)
}

export function canvasGradientAddColorStop(gradient, offset, color) {
  gradient.addColorStop(offset, color)
}

export function setStrokeStyle(ctx, color) {
  ctx.strokeStyle = color
}

export function setGlobalAlpha(ctx, alpha) {
  ctx.globalAlpha = alpha
}

export function setFontSize(ctx, size) {
  ctx.setFontSize(size)
}

export function setTextAlign(ctx, align) {
  ctx.setTextAlign(align)
}

export function setTextBaseline(ctx, baseline) {
  ctx.setTextBaseline(baseline)
}

export function closePath(ctx) {
  ctx.closePath()
}

export function fill(ctx) {
  ctx.fill()
}

export function stroke(ctx) {
  ctx.stroke()
}

export function clip(ctx) {
  ctx.clip()
}

export function rect(ctx, x, y, w, h) {
  ctx.rect(x, y, w, h)
}

export function setTransform(ctx, a, b, c, d, e, f) {
  ctx.setTransform(a, b, c, d, e, f)
}

export function canvasToDataURL(canvas, fileType, quality) {
  return new Promise(resolve => {
    const dataURL = canvas.toDataURL(fileType, quality)
    resolve(new Ok(dataURL))
  })
}

export function canvasGetContext(canvas, contextType) {
  return canvas.getContext(contextType)
}

export function offscreenCanvasCreateImage(canvas) {
  return canvas.createImage()
}

// Path2D methods

export function path2dAddPath(path, otherPath) {
  path.addPath(otherPath)
}

export function path2dClosePath(path) {
  path.closePath()
}

export function path2dMoveTo(path, x, y) {
  path.moveTo(x, y)
}

export function path2dLineTo(path, x, y) {
  path.lineTo(x, y)
}

export function path2dArc(path, x, y, r, sa, ea, ac) {
  path.arc(x, y, r, sa, ea, ac)
}

export function path2dRect(path, x, y, w, h) {
  path.rect(x, y, w, h)
}

export function path2dBezierCurveTo(path, cp1x, cp1y, cp2x, cp2y, x, y) {
  path.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)
}

export function path2dQuadraticCurveTo(path, cpx, cpy, x, y) {
  path.quadraticCurveTo(cpx, cpy, x, y)
}
