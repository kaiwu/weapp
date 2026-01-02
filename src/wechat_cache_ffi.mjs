import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

// Phase 10: CacheManager
export function createCacheManager(options) {
  return wx.createCacheManager(options)
}

export function cacheManagerAddRule(cm, rule) {
  cm.addRule(rule)
}

export function cacheManagerAddRules(cm, rules) {
  cm.addRules(rules)
}

export function cacheManagerClearCaches(cm) {
  cm.clearCaches()
}

export function cacheManagerClearRules(cm) {
  cm.clearRules()
}

export function cacheManagerDeleteCache(cm, url) {
  cm.deleteCache(url)
}

export function cacheManagerDeleteCaches(cm, urls) {
  cm.deleteCaches(urls)
}

export function cacheManagerDeleteRule(cm, id) {
  cm.deleteRule(id)
}

export function cacheManagerDeleteRules(cm, ids) {
  cm.deleteRules(ids)
}

export function cacheManagerMatch(cm, url) {
  return cm.match(url)
}

export function cacheManagerOff(cm, eventName, handler) {
  cm.off(eventName, handler)
}

export function cacheManagerOn(cm, eventName, handler) {
  cm.on(eventName, handler)
}

export function cacheManagerStart(cm) {
  cm.start()
}

export function cacheManagerStop(cm) {
  cm.stop()
}
