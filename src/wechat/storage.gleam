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

/// Phase 10: Storage Sync Methods
///
/// `wx.setStorageSync`
/// Synchronously set data in local storage
///
@external(javascript, "../wechat_base_ffi.mjs", "setStorageSync")
pub fn set_storage_sync(key k: String, data d: JsObject) -> Nil

/// `wx.getStorageSync`
/// Synchronously get data from local storage
///
@external(javascript, "../wechat_base_ffi.mjs", "getStorageSync")
pub fn get_storage_sync(key k: String) -> JsObject

/// `wx.removeStorageSync`
/// Synchronously remove data from local storage
///
@external(javascript, "../wechat_base_ffi.mjs", "removeStorageSync")
pub fn remove_storage_sync(key k: String) -> Nil

/// `wx.clearStorageSync`
/// Synchronously clear all local storage
///
@external(javascript, "../wechat_base_ffi.mjs", "clearStorageSync")
pub fn clear_storage_sync() -> Nil

/// Storage Advanced - CacheManager
///
/// CacheManager type
///
pub type CacheManager

/// `wx.createCacheManager`
/// Create a cache manager instance
///
@external(javascript, "../wechat_cache_ffi.mjs", "createCacheManager")
pub fn create_cache_manager(options o: JsObject) -> CacheManager

/// `CacheManager.addRule`
/// Add a cache rule
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerAddRule")
pub fn cache_manager_add_rule(cm: CacheManager, rule r: JsObject) -> Nil

/// `CacheManager.addRules`
/// Add multiple cache rules
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerAddRules")
pub fn cache_manager_add_rules(cm: CacheManager, rules r: List(JsObject)) -> Nil

/// `CacheManager.clearCaches`
/// Clear all caches
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerClearCaches")
pub fn cache_manager_clear_caches(cm: CacheManager) -> Nil

/// `CacheManager.clearRules`
/// Clear all rules
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerClearRules")
pub fn cache_manager_clear_rules(cm: CacheManager) -> Nil

/// `CacheManager.deleteCache`
/// Delete specific cache
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteCache")
pub fn cache_manager_delete_cache(cm: CacheManager, url u: String) -> Nil

/// `CacheManager.deleteCaches`
/// Delete multiple caches
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteCaches")
pub fn cache_manager_delete_caches(
  cm: CacheManager,
  urls u: List(String),
) -> Nil

/// `CacheManager.deleteRule`
/// Delete specific rule
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteRule")
pub fn cache_manager_delete_rule(cm: CacheManager, id i: String) -> Nil

/// `CacheManager.deleteRules`
/// Delete multiple rules
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteRules")
pub fn cache_manager_delete_rules(cm: CacheManager, ids i: List(String)) -> Nil

/// `CacheManager.match`
/// Match URL against rules
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerMatch")
pub fn cache_manager_match(cm: CacheManager, url u: String) -> JsObject

/// `CacheManager.off`
/// Remove event listener
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerOff")
pub fn cache_manager_off(
  cm: CacheManager,
  event_name en: String,
  handler h: fn(JsObject) -> Nil,
) -> Nil

/// `CacheManager.on`
/// Add event listener
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerOn")
pub fn cache_manager_on(
  cm: CacheManager,
  event_name en: String,
  handler h: fn(JsObject) -> Nil,
) -> Nil

/// `CacheManager.start`
/// Start cache manager
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerStart")
pub fn cache_manager_start(cm: CacheManager) -> Nil

/// `CacheManager.stop`
/// Stop cache manager
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerStop")
pub fn cache_manager_stop(cm: CacheManager) -> Nil
