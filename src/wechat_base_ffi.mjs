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

export function getSystemInfo(cb) {
  return new Promise(resolve => {
    wx.getSystemInfo({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getSetting(s, cb) {
  return new Promise(resolve => {
    wx.getSetting({
      withSubscriptions: s,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setClipboardData(d, cb) {
  return new Promise(resolve => {
    wx.setClipboardData({
      data: d,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setNavigationBarTitle(t, cb) {
  return new Promise(resolve => {
    wx.setNavigationBarTitle({
      title: t,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function vibrateShort(t, cb) {
  return new Promise(resolve => {
    wx.vibrateShort({
      type: t,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function showTabbar(a, cb) {
  return new Promise(resolve => {
    wx.showTabbar({
      animation: a,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function hideTabbar(cb) {
  return new Promise(resolve => {
    wx.hideTabbar({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function showLoading(t, m, cb) {
  return new Promise(resolve => {
    wx.showLoading({
      title: t,
      mask: m,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function hideLoading(cb) {
  return new Promise(resolve => {
    wx.hideLoading({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function showToast(t, i, m, d, cb) {
  return new Promise(resolve => {
    wx.showToast({
      title: t,
      icon: i,
      mask: m,
      duration: d,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getPrivacySetting(cb) {
  return new Promise(resolve => {
    wx.getPrivacySetting({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getPrivacyContract(cb) {
  return new Promise(resolve => {
    wx.getPrivacyContract({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
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

export function requestPayment(o) {
  return new Promise(resolve => {
    wx.requestPayment({
      ...o,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) },
    })
  })
}

export function now() {
  return new Date();
}

export function ymd(dt) {
  return new Promise(resolve => {
    let y = dt.getFullYear();
    let m = dt.getMonth() + 1;
    let d = dt.getDate();

    let month = m < 10 ? `0${m}` : `${m}`;
    let day = d < 10 ? `0${d}` : `${d}`;
    resolve(new Ok(`${y}-${month}-${day}`));
  })
}
