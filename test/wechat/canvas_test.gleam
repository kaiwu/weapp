import wechat/canvas

pub fn canvas_test() {
  let _ = canvas.create_canvas_context
  let _ = canvas.canvas_set_fill_style
  let _ = canvas.canvas_fill_rect
  let _ = canvas.canvas_stroke_rect
  let _ = canvas.canvas_begin_path
  let _ = canvas.canvas_move_to
  let _ = canvas.canvas_line_to
  let _ = canvas.canvas_arc
  let _ = canvas.canvas_arc_to
  let _ = canvas.canvas_quadratic_curve_to
  let _ = canvas.canvas_bezier_curve_to
  let _ = canvas.canvas_clear_rect
  let _ = canvas.canvas_save
  let _ = canvas.canvas_restore
  let _ = canvas.canvas_draw
  let _ = canvas.canvas_draw_image
  let _ = canvas.canvas_fill_text
  let _ = canvas.canvas_stroke_text
  let _ = canvas.canvas_measure_text
  let _ = canvas.canvas_transform
  let _ = canvas.canvas_rotate
  let _ = canvas.canvas_scale
  let _ = canvas.canvas_translate
  let _ = canvas.canvas_set_line_dash
  let _ = canvas.canvas_set_line_width
  let _ = canvas.canvas_set_line_cap
  let _ = canvas.canvas_set_line_join
  let _ = canvas.canvas_set_miter_limit
  let _ = canvas.canvas_set_shadow
}

pub fn canvas_advanced_test() {
  let _ = canvas.create_offscreen_canvas
  let _ = canvas.canvas_to_temp_file_path
  let _ = canvas.canvas_put_image_data
  let _ = canvas.canvas_get_image_data
  let _ = canvas.create_image
  let _ = canvas.create_image_data
  let _ = canvas.create_path_2d
  let _ = canvas.request_animation_frame
  let _ = canvas.cancel_animation_frame
  let _ = canvas.canvas_create_linear_gradient
  let _ = canvas.canvas_create_circular_gradient
  let _ = canvas.canvas_gradient_add_color_stop
  let _ = canvas.canvas_set_stroke_style
  let _ = canvas.canvas_set_global_alpha
  let _ = canvas.canvas_set_font_size
  let _ = canvas.canvas_set_text_align
  let _ = canvas.canvas_set_text_baseline
  let _ = canvas.canvas_close_path
  let _ = canvas.canvas_fill
  let _ = canvas.canvas_stroke
  let _ = canvas.canvas_clip
  let _ = canvas.canvas_rect
  let _ = canvas.canvas_set_transform
  let _ = canvas.canvas_to_data_url
  let _ = canvas.canvas_get_context
  let _ = canvas.offscreen_canvas_create_image
}

pub fn path_2d_test() {
  let _ = canvas.path_2d_add_path
  let _ = canvas.path_2d_close_path
  let _ = canvas.path_2d_move_to
  let _ = canvas.path_2d_line_to
  let _ = canvas.path_2d_arc
  let _ = canvas.path_2d_rect
  let _ = canvas.path_2d_bezier_curve_to
  let _ = canvas.path_2d_quadratic_curve_to
}
