//// Allocation-conscious conversion at JavaScript array boundaries.
//// These functions preserve element identity and never mutate the input list.

import gleam/javascript/array.{type Array}

/// Create a fresh native array in list order without using the List iterator.
@external(javascript, "../wechat_array_ffi.mjs", "from_list")
pub fn from_list(items: List(a)) -> Array(a)

/// Create a fresh native array in reverse list order. Useful for append-only
/// Gleam models that prepend observations and emit them chronologically.
@external(javascript, "../wechat_array_ffi.mjs", "from_reversed_list")
pub fn from_reversed_list(items: List(a)) -> Array(a)
