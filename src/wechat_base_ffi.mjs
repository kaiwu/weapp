import { Ok, Error } from "./gleam.mjs"

export async function switchTab(o) {
  return await wx.switchTab(o)
}

export async function reLaunch(o) {
  return await wx.reLaunch(o)
}

export async function navigateTo(o) {
  return await wx.navigateTo(o)
}

export async function navigateBack(o) {
  return await wx.navigateTo(o)
}
