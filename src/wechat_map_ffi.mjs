import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function createMapContext(mapId) {
  return wx.createMapContext(mapId);
}

export function mapContextGetCenterLocation(mc, cb) {
  mc.getCenterLocation({
    complete: cb
  });
}

export function mapContextMoveToLocation(mc, cb) {
  mc.moveToLocation({
    complete: cb
  });
}

export function mapContextTranslateMarker(mc, markerId, destination, autoRotate, cb) {
  mc.translateMarker({
    markerId: markerId,
    destination: destination,
    autoRotate: autoRotate,
    complete: cb
  });
}

export function mapContextIncludePoints(mc, points, padding, cb) {
  mc.includePoints({
    points: points,
    padding: padding,
    complete: cb
  });
}

export function mapContextGetRegion(mc, cb) {
  mc.getRegion({
    complete: cb
  });
}

export function mapContextGetScale(mc) {
  return mc.getScale();
}

export function mapContextGetRotate(mc) {
  return mc.getRotate();
}

export function mapContextSetRotate(mc, rotation, duration) {
  mc.setRotate({
    rotation: rotation,
    duration: duration
  });
}

export function mapContextSetSkew(mc, tiltX, tiltY) {
  mc.setSkew({
    tiltX: tiltX,
    tiltY: tiltY
  });
}

export function mapContextSetCompass(mc, direction) {
  mc.setCompass({
    direction: direction
  });
}

export function mapContextOpenMapApp(mc) {
  mc.openMapApp();
}

export function mapContextOn(mc, event, cb) {
  mc.on(event, cb);
}

export function mapContextOff(mc, event, cb) {
  mc.off(event, cb);
}

export function mapContextAddMarkers(mc, markers) {
  mc.addMarkers({
    markers: markers
  });
}

export function mapContextRemoveMarkers(mc, markerIds) {
  mc.removeMarkers({
    markerIds: markerIds
  });
}

export function mapContextSetBoundary(mc, boundary) {
  mc.setBoundary({
    boundary: boundary
  });
}

export function mapContextAddCustomLayer(mc, layerId, options) {
  mc.addCustomLayer({
    id: layerId,
    ...options
  });
}

export function mapContextRemoveCustomLayer(mc, layerId) {
  mc.removeCustomLayer({
    id: layerId
  });
}

export function mapContextExecuteVisualLayerCommand(mc, cmd) {
  mc.executeVisualLayerCommand(cmd);
}
