import wechat/recorder

pub fn recorder_test() {
  let _ = recorder.get_recorder_manager
  let _ = recorder.recorder_start
  let _ = recorder.recorder_pause
  let _ = recorder.recorder_resume
  let _ = recorder.recorder_stop
  let _ = recorder.recorder_on_start
  let _ = recorder.recorder_on_stop
  let _ = recorder.recorder_on_pause
  let _ = recorder.recorder_on_resume
  let _ = recorder.recorder_on_error
  let _ = recorder.recorder_on_frame_recorded
  let _ = recorder.recorder_on_interruption_begin
  let _ = recorder.recorder_on_interruption_end
  let _ = recorder.start_record
  let _ = recorder.stop_record
}
