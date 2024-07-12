import gleam/dynamic.{type Dynamic}

pub type App

@external(javascript, "../wechat_ffi.mjs", "get_app")
pub fn get_app() -> Dynamic
