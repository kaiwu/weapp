import wechat/device

pub fn device_test() {
  let _ = device.start_accelerometer
  let _ = device.stop_accelerometer
  let _ = device.on_accelerometer_change
  let _ = device.off_accelerometer_change
  let _ = device.start_compass
  let _ = device.stop_compass
  let _ = device.on_compass_change
  let _ = device.off_compass_change
  let _ = device.start_gyroscope
  let _ = device.stop_gyroscope
  let _ = device.on_gyroscope_change
  let _ = device.off_gyroscope_change
  let _ = device.start_device_motion_listening
  let _ = device.stop_device_motion_listening
  let _ = device.on_device_motion_change
  let _ = device.off_device_motion_change
}

pub fn bluetooth_test() {
  let _ = device.open_bluetooth_adapter
  let _ = device.close_bluetooth_adapter
  let _ = device.get_bluetooth_adapter_state
  let _ = device.start_bluetooth_devices_discovery
  let _ = device.stop_bluetooth_devices_discovery
  let _ = device.get_bluetooth_devices
  let _ = device.get_connected_bluetooth_devices
  let _ = device.on_bluetooth_device_found
  let _ = device.off_bluetooth_device_found
  let _ = device.on_bluetooth_adapter_state_change
  let _ = device.off_bluetooth_adapter_state_change
  let _ = device.create_ble_connection
  let _ = device.close_ble_connection
  let _ = device.get_ble_device_services
  let _ = device.get_ble_device_characteristics
  let _ = device.read_ble_characteristic_value
  let _ = device.write_ble_characteristic_value
  let _ = device.notify_ble_characteristic_value_change
  let _ = device.on_ble_connection_state_change
  let _ = device.off_ble_connection_state_change
  let _ = device.on_ble_characteristic_value_change
  let _ = device.off_ble_characteristic_value_change
  let _ = device.make_bluetooth_pair
  let _ = device.is_bluetooth_device_paired
  let _ = device.set_ble_mtu
  let _ = device.get_ble_mtu
  let _ = device.on_ble_mtu_change
  let _ = device.off_ble_mtu_change
  let _ = device.get_ble_device_rssi
}

pub fn nfc_test() {
  let _ = device.get_nfc_adapter
  let _ = device.nfc_adapter_start_discovery
  let _ = device.nfc_adapter_stop_discovery
  let _ = device.nfc_adapter_on_discovered
  let _ = device.nfc_adapter_off_discovered
}

pub fn beacon_test() {
  let _ = device.start_beacon_discovery
  let _ = device.stop_beacon_discovery
  let _ = device.on_beacon_update
  let _ = device.on_beacon_service_change
  let _ = device.off_beacon_update
  let _ = device.off_beacon_service_change
  let _ = device.get_beacons
}

pub fn ble_peripheral_test() {
  let _ = device.create_ble_peripheral_server
  let _ = device.on_ble_peripheral_connection_state_changed
  let _ = device.off_ble_peripheral_connection_state_changed
  let _ = device.ble_peripheral_server_add_service
  let _ = device.ble_peripheral_server_close
  let _ = device.ble_peripheral_server_off_characteristic_read_request
  let _ = device.ble_peripheral_server_off_characteristic_subscribed
  let _ = device.ble_peripheral_server_off_characteristic_unsubscribed
  let _ = device.ble_peripheral_server_off_characteristic_write_request
  let _ = device.ble_peripheral_server_on_characteristic_read_request
  let _ = device.ble_peripheral_server_on_characteristic_subscribed
  let _ = device.ble_peripheral_server_on_characteristic_unsubscribed
  let _ = device.ble_peripheral_server_on_characteristic_write_request
  let _ = device.ble_peripheral_server_remove_service
  let _ = device.ble_peripheral_server_start_advertising
  let _ = device.ble_peripheral_server_stop_advertising
  let _ = device.ble_peripheral_server_write_characteristic_value
}

pub fn memory_test() {
  let _ = device.on_memory_warning
  let _ = device.off_memory_warning
}

pub fn wifi_test() {
  let _ = device.connect_wifi
  let _ = device.on_wifi_connected_with_partial_info
  let _ = device.off_wifi_connected_with_partial_info
}

pub fn battery_test() {
  let _ = device.get_battery_info_sync
}

pub fn keyboard_test() {
  let _ = device.on_key_down
  let _ = device.on_key_up
  let _ = device.off_key_down
  let _ = device.off_key_up
}

pub fn screen_test() {
  let _ = device.set_visual_effect_on_capture
}

pub fn accessibility_test() {
  let _ = device.check_is_open_accessibility
}
