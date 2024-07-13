import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

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
