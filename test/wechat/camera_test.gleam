import wechat/camera

pub fn camera_test() {
  let _ = camera.create_camera_context
  let _ = camera.camera_start_record
  let _ = camera.camera_stop_record
  let _ = camera.camera_take_photo
  let _ = camera.camera_set_zoom
  let _ = camera.camera_on_frame
  let _ = camera.camera_frame_listener_start
  let _ = camera.camera_frame_listener_stop
}
