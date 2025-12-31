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
