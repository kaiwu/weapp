import wechat/worker

pub fn worker_test() {
  let _ = worker.create_worker
  let _ = worker.worker_get_camera_frame_data
  let _ = worker.worker_on_error
  let _ = worker.worker_on_message
  let _ = worker.worker_on_process_killed
  let _ = worker.worker_post_message
  let _ = worker.worker_terminate
  let _ = worker.worker_test_on_process_killed
}
