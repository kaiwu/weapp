import { Ok, Error } from "./gleam.mjs"

export function get_app() {
  return getApp();
}

export function get_current_pages() {
  return getCurrentPages();
}

export function obj_new() {
  return Ok({});
}

export function obj_get(o, k) {
  return k in o ? Ok(o[k]) : Error(undefined);
}

export function obj_set(o, k, v) {
  return Ok({
    ...o,
    [k]: v
  });
}

