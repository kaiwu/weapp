import { Ok, Error } from "./gleam.mjs"
import { NilError, WechatError } from "./wechat/object.mjs"

export function get_app() {
  return getApp();
}

export function run_app(o) {
  App(o);
}

export function run_page(o) {
  Page(o);
}

export function get_current_pages() {
  return getCurrentPages();
}

export function set_data(p, d, f) {
  return new Promise(resolve => {
    p.setData(d, f);
    resolve(new Ok(p.data))
  })
}

export function decode_uri_component(u) {
  return decodeURIComponent(u);
}

export function set_timeout(cb, d, o) {
  return setTimeout(cb, d, o)
}

export function clear_timeout(id) {
  return clearTimeout(id)
}

export function set_interval(cb, d, o) {
  return setInterval(cb, d, o)
}

export function clear_interval(id) {
  return clearInverval(id)
}

// System Info APIs
export function getAppBaseInfo() {
  return wx.getAppBaseInfo()
}

export function getSystemInfo(cb) {
  return new Promise(resolve => {
    wx.getSystemInfo({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getSystemInfoSync() {
  return wx.getSystemInfoSync()
}

export function getSystemInfoAsync(cb) {
  return new Promise(resolve => {
    wx.getSystemInfoAsync({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getSystemSetting() {
  return wx.getSystemSetting()
}

export function getDeviceInfo() {
  return wx.getDeviceInfo()
}

export function getWindowInfo() {
  return wx.getWindowInfo()
}

export function getAppAuthorizeSetting() {
  return wx.getAppAuthorizeSetting()
}

export function getAccountInfoSync() {
  return wx.getAccountInfoSync()
}

export function getLaunchOptionsSync() {
  return wx.getLaunchOptionsSync()
}

export function getEnterOptionsSync() {
  return wx.getEnterOptionsSync()
}

// Utility APIs
export function canIUse(schema) {
  return wx.canIUse(schema)
}

export function base64ToArrayBuffer(base64) {
  return wx.base64ToArrayBuffer(base64)
}

export function arrayBufferToBase64(buffer) {
  return wx.arrayBufferToBase64(buffer)
}

// Phase 1: Base/System APIs
export function getDeviceBenchmarkInfo(cb) {
  return new Promise(resolve => {
    wx.getDeviceBenchmarkInfo({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getSkylineInfo(cb) {
  return new Promise(resolve => {
    wx.getSkylineInfo({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getSkylineInfoSync() {
  return wx.getSkylineInfoSync()
}

export function getRendererUserAgent(cb) {
  return new Promise(resolve => {
    wx.getRendererUserAgent({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function openSystemBluetoothSetting(cb) {
  return new Promise(resolve => {
    wx.openSystemBluetoothSetting({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function openAppAuthorizeSetting(cb) {
  return new Promise(resolve => {
    wx.openAppAuthorizeSetting({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function page_route(p) {
  return p.route(); 
}

export function obj_new() {
  return {};
}

export function obj_call(o, v) {
  if (typeof(o) == "function") {
    return new Ok(o(v))
  }
  else {
    let e = new WechatError("not a function")
    return new Error(e)
  }
}

export function obj_stringify(o) {
  return JSON.stringify(o);
}

export function obj_dynamic(o) {
  return o;
}

export function obj_get(o, k) {
  let e = new NilError(undefined)
  return k in o ? new Ok(o[k]) : new Error(e);
}

export function obj_set(o, k, v) {
  return {
    ...o,
    [k]: v
  };
}

export function obj_assign(o, n) {
  return Object.assign({}, o, n)
}

export function obj_mutate(obj, path, value) {
  const keys = path.split('.');
  let current = obj;

  for (let i = 0; i < keys.length - 1; i++) {
    const key = keys[i];

    // Create if doesn't exist or is wrong type
    if (!current[key] || typeof current[key] !== 'object') {
      current[key] = {};
    }

    // Special case: don't overwrite arrays with objects
    if (Array.isArray(current[key]) && !/^\d+$/.test(keys[i + 1])) {
      throw new Error(`Cannot set object property on array at ${key}`);
    }

    current = current[key];
  }

  const lastKey = keys[keys.length - 1];
  current[lastKey] = value;
  return obj;
}
