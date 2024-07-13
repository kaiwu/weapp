import { Ok, Error } from "./gleam.mjs"
import { NilError } from "./wechat/object.mjs"

export function get_app() {
  return getApp();
}

export function get_current_pages() {
  return getCurrentPages();
}

export function obj_new() {
  return {};
}

export function obj_dynamic(o) {
  return o;
}

export function obj_get(o, k) {
  let e = new NilError(undefined)
  return k in o ? new Ok(o[k]) : new Error(e);
}

export function obj_set(o, k, v) {
  return {
    ...o,
    [k]: v
  };
}

export function obj_assign(o, n) {
  return Object.assign({}, o, n)
}
