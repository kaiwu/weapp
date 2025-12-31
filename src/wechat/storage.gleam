//// storage module provides storage API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/storage/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// `wx.createBufferURL`
/// Create buffer URL from ArrayBuffer
///
@external(javascript, "../wechat_base_ffi.mjs", "createBufferURL")
pub fn create_buffer_url(buffer b: JsObject) -> String

/// `wx.revokeBufferURL`
/// Revoke buffer URL
///
@external(javascript, "../wechat_base_ffi.mjs", "revokeBufferURL")
pub fn revoke_buffer_url(url u: String) -> Nil

/// `wx.batchSetStorage`
/// Batch set storage items
///
@external(javascript, "../wechat_base_ffi.mjs", "batchSetStorage")
pub fn batch_set_storage(
  items i: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.batchSetStorageSync`
/// Batch set storage items (sync)
///
@external(javascript, "../wechat_base_ffi.mjs", "batchSetStorageSync")
pub fn batch_set_storage_sync(items i: JsObject) -> Nil

/// `wx.batchGetStorage`
/// Batch get storage items
///
@external(javascript, "../wechat_base_ffi.mjs", "batchGetStorage")
pub fn batch_get_storage(
  keys k: List(String),
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.batchGetStorageSync`
/// Batch get storage items (sync)
///
@external(javascript, "../wechat_base_ffi.mjs", "batchGetStorageSync")
pub fn batch_get_storage_sync(keys k: List(String)) -> JsObject
