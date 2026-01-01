import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function createMapContext(mapId) {
  return wx.createMapContext(mapId);
}

export function mapContextGetCenterLocation(mc, cb) {
  return new Promise(resolve => {
    mc.getCenterLocation({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mapContextMoveToLocation(mc, cb) {
  return new Promise(resolve => {
    mc.moveToLocation({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mapContextTranslateMarker(mc, markerId, destination, autoRotate, cb) {
  return new Promise(resolve => {
    mc.translateMarker({
      markerId: markerId,
      destination: destination,
      autoRotate: autoRotate,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mapContextIncludePoints(mc, points, padding, cb) {
  return new Promise(resolve => {
    mc.includePoints({
      points: points,
      padding: padding,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mapContextGetRegion(mc, cb) {
  return new Promise(resolve => {
    mc.getRegion({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
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
