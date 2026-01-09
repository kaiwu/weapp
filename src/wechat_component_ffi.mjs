import { Ok, Error } from "./gleam.mjs"
import { NilError, WechatError } from "./wechat/object.mjs"

export function to_object(n, t, v) {
  if (t == "Number") {
      return {[n]: {type: Number, value: v}}
  }
  if (t == "String") {
      return {[n]: {type: String, value: v}}
  }
  if (t == "Object") {
      return {[n]: {type: Object, value: v}}
  }
  if (t == "Boolean") {
      return {[n]: {type: Boolean, value: v}}
  }
  return {[n]: {type: Object, value: v}}
}

export function array_to_object(n, v) {
  return {[n]: {type: Array, value: v.values}}
}

export function run_component(o) {
  Component(o);
}

export function trigger_event(c, e, d, o) {
  return new Promise(resolve => {
    c.triggerEvent(e, d, o)
    resolve(new Ok(d))
  })
}

export function select_component(p, c) {
  return p.selectComponent(c);
}
