import wechat/location

pub fn location_test() {
  let _ = location.get_location
  let _ = location.choose_location
  let _ = location.open_location
  let _ = location.start_location_update
  let _ = location.start_location_update_background
  let _ = location.stop_location_update
  let _ = location.on_location_change
  let _ = location.off_location_change
  let _ = location.on_location_change_error
  let _ = location.off_location_change_error
  let _ = location.get_fuzzy_location
  let _ = location.choose_poi
}
