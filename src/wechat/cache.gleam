//// cache module provides cache management API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/storage/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatResultCallback, type JsObject, type WechatCallback, type WechatResult}

/// `wx.createCacheManager`
/// Create a cache manager instance
///
@external(javascript, "../wechat_base_ffi.mjs", "createCacheManager")
pub fn create_cache_manager(options o: JsObject) -> JsObject

/// `CacheManager.addRule`
/// Add a cache rule
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerAddRule")
pub fn add_rule(
  cm: JsObject,
  rule r: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.addRules`
/// Add multiple cache rules
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerAddRules")
pub fn add_rules(
  cm: JsObject,
  rules r: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.clearCaches`
/// Clear all caches
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerClearCaches")
pub fn clear_caches(
  cm: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.clearRules`
/// Clear all rules
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerClearRules")
pub fn clear_rules(
  cm: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.deleteCache`
/// Delete a specific cache
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteCache")
pub fn delete_cache(
  cm: JsObject,
  key k: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.deleteCaches`
/// Delete multiple caches
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteCaches")
pub fn delete_caches(
  cm: JsObject,
  keys k: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.deleteRule`
/// Delete a specific rule
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteRule")
pub fn delete_rule(
  cm: JsObject,
  rule_id r: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.deleteRules`
/// Delete multiple rules
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerDeleteRules")
pub fn delete_rules(
  cm: JsObject,
  rule_ids r: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.match`
/// Match a cache request
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerMatch")
pub fn match(
  cm: JsObject,
  request r: JsObject,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `CacheManager.on`
/// Listen to cache manager events
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerOn")
pub fn on(
  cm: JsObject,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// `CacheManager.off`
/// Stop listening to cache manager events
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerOff")
pub fn off(
  cm: JsObject,
  event e: String,
  callback cb: WechatResultCallback,
) -> Nil

/// `CacheManager.start`
/// Start the cache manager
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerStart")
pub fn start(cm: JsObject, complete cb: WechatCallback) -> Promise(WechatResult)

/// `CacheManager.stop`
/// Stop the cache manager
///
@external(javascript, "../wechat_cache_ffi.mjs", "cacheManagerStop")
pub fn stop(cm: JsObject, complete cb: WechatCallback) -> Promise(WechatResult)
