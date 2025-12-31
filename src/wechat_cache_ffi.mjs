import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

// Cache Manager

export function cacheManagerAddRule(cm, rule, cb) {
  return new Promise(resolve => {
    cm.addRule({
      rule: rule,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerAddRules(cm, rules, cb) {
  return new Promise(resolve => {
    cm.addRules({
      rules: rules,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerClearCaches(cm, cb) {
  return new Promise(resolve => {
    cm.clearCaches({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerClearRules(cm, cb) {
  return new Promise(resolve => {
    cm.clearRules({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerDeleteCache(cm, key, cb) {
  return new Promise(resolve => {
    cm.deleteCache({
      key: key,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerDeleteCaches(cm, keys, cb) {
  return new Promise(resolve => {
    cm.deleteCaches({
      keys: keys,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerDeleteRule(cm, ruleId, cb) {
  return new Promise(resolve => {
    cm.deleteRule({
      ruleId: ruleId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerDeleteRules(cm, ruleIds, cb) {
  return new Promise(resolve => {
    cm.deleteRules({
      ruleIds: ruleIds,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerMatch(cm, request, options, cb) {
  return new Promise(resolve => {
    cm.match({
      request: request,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerOn(cm, event, callback) {
  cm.on(event, callback);
}

export function cacheManagerOff(cm, event, callback) {
  cm.off(event, callback);
}

export function cacheManagerStart(cm, cb) {
  return new Promise(resolve => {
    cm.start({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cacheManagerStop(cm, cb) {
  return new Promise(resolve => {
    cm.stop({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}
