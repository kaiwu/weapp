import wechat/performance

pub fn performance_test() {
  let _ = performance.get_performance
  let _ = performance.report_performance
  let _ = performance.now
  let _ = performance.get_entries
  let _ = performance.get_entries_by_type
  let _ = performance.get_entries_by_name
  let _ = performance.mark
  let _ = performance.measure
  let _ = performance.clear_marks
  let _ = performance.clear_measures
  let _ = performance.create_observer
  let _ = performance.observer_disconnect
  let _ = performance.observer_observe
  let _ = performance.set_buffer_size
  let _ = performance.request_idle_callback
  let _ = performance.cancel_idle_callback
}
