import wechat/app

pub fn uri_component_test() {
  assert app.encode_uri_component("舒尔 MV7") == "%E8%88%92%E5%B0%94%20MV7"
  assert app.decode_uri_component("%E8%88%92%E5%B0%94%20MV7") == "舒尔 MV7"
  assert app.safe_decode_uri_component("broken%query") == "broken%query"
}

pub fn app_lifecycle_test() {
  // Placeholder for app lifecycle tests
  let _ = app.get_app
  let _ = app.run_app
  let _ = app.set_timeout
  let _ = app.clear_timeout

  // System info APIs
  let _ = app.get_app_base_info
  let _ = app.get_system_info
  let _ = app.get_system_info_sync
  let _ = app.get_system_info_async
  let _ = app.get_system_setting
  let _ = app.get_device_info
  let _ = app.get_window_info
  let _ = app.get_app_authorize_setting
  let _ = app.get_account_info_sync
  let _ = app.get_launch_options_sync
  let _ = app.get_enter_options_sync

  // Utility APIs
  let _ = app.encode_uri_component
  let _ = app.decode_uri_component
  let _ = app.safe_decode_uri_component
  let _ = app.can_i_use
  let _ = app.base64_to_array_buffer
  let _ = app.array_buffer_to_base64

  // Phase 1 new APIs
  let _ = app.get_device_benchmark_info
  let _ = app.get_skyline_info
  let _ = app.get_skyline_info_sync
  let _ = app.get_renderer_user_agent
  let _ = app.open_system_bluetooth_setting
  let _ = app.open_app_authorize_setting
}
