import { Ok, Error, CustomType } from "./gleam.mjs"

export function literal(d) {
  return d;
}

export function get_app() {
  return getApp();
}

export function get_current_pages() {
  return getCurrentPages();
}
