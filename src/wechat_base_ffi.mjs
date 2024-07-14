import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function login(cb) {
  return new Promise(resolve => {
    wx.login({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function checkSession(cb) {
  return new Promise(resolve => {
    wx.checkSession({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setStorage(k, v, cb) {
  return new Promise(resolve => {
    wx.setStorage({
      key: k,
      data: v,
      complete: cb,
      success(res) { resolve(new Ok({})) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getStorage(k, cb) {
  return new Promise(resolve => {
    wx.getStorage({
      key: k,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function removeStorage(k, cb) {
  return new Promise(resolve => {
    wx.removeStorage({
      key: k,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function saveFile(p, cb) {
  return new Promise(resolve => {
    wx.saveFile({
      tempFilePath: p,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function openDocument(p, t, cb) {
  return new Promise(resolve => {
    wx.openDocument({
      filePath: p,
      fileType: t,
      complete: cb,
      success() { resolve(new Ok({})) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function uploadFile(u, p, h, f, cb) {
  return new Promise(resolve => {
    wx.uploadFile({
      url: u,
      filePath: p,
      name: "file",
      header: h,
      formData: f,
      complete: cb,
      success() { resolve(new Ok({})) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function switchTab(u, cb) {
  return new Promise(resolve => {
    wx.switchTab({
      url: u,
      complete: cb,
      success(res) { resolve(new Ok({})) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function reLaunch(u, cb) {
  return new Promise(resolve => {
    wx.reLaunch({
      url: u,
      complete: cb,
      success(res) { resolve(new Ok({})) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function navigateTo(u, cb) {
  return new Promise(resolve => {
    wx.navigateTo({
      url: u,
      complete: cb,
      success(res) { resolve(new Ok({})) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function navigateBack(d, cb) {
  return new Promise(resolve => {
    wx.navigateBack({
      delta: d,
      complete: cb,
      success(res) { resolve(new Ok({})) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function request(o) {
  return new Promise(resolve => {
    wx.request({
      ...o,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) },
    })
  })
}
