import wechat/map

pub fn map_test() {
  let _ = map.create_map_context
  let _ = map.map_context_get_center_location
  let _ = map.map_context_move_to_location
  let _ = map.map_context_translate_marker
  let _ = map.map_context_include_points
  let _ = map.map_context_get_region
  let _ = map.map_context_get_scale
  let _ = map.map_context_get_rotate
  let _ = map.map_context_set_rotate
  let _ = map.map_context_set_skew
  let _ = map.map_context_set_compass
  let _ = map.map_context_open_map_app
  let _ = map.map_context_on
  let _ = map.map_context_off
  let _ = map.map_context_add_markers
  let _ = map.map_context_remove_markers
  let _ = map.map_context_set_boundary
  let _ = map.map_context_add_custom_layer
  let _ = map.map_context_remove_custom_layer
  let _ = map.map_context_execute_visual_layer_command
}
