import { Ok, Error } from "./gleam.mjs"
import { NilError, WechatError } from "./wechat/object.mjs"

export function get_app() {
  return getApp();
}

export function run_app(o) {
  App(o);
}

export function run_page(o) {
  Page(o);
}

export function get_current_pages() {
  return getCurrentPages();
}

export function set_data(p, d, f) {
  return new Promise(resolve => {
    p.setData(d, f);
    resolve(new Ok(p.data))
  })
}

export function decode_uri_component(u) {
  return decodeURIComponent(u);
}

export function select_component(p, c) {
  return p.selectComponent(c);
}

export function set_timeout(cb, d, o) {
  return setTimeout(cb, d, o)
}

export function clear_timeout(id) {
  return clearTimeout(id)
}

export function set_interval(cb, d, o) {
  return setInterval(cb, d, o)
}

export function clear_interval(id) {
  return clearInverval(id)
}

export function page_route(p) {
  return p.route(); 
}

export function obj_new() {
  return {};
}

export function obj_call(o, v) {
  if (typeof(o) == "function") {
    return new Ok(o(v))
  }
  else {
    let e = new WechatError("not a function")
    return new Error(e)
  }
}

export function obj_stringify(o) {
  return JSON.stringify(o);
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
