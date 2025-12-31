import wechat/device

pub fn device_test() {
  // Placeholder for device tests
  let _ = device.start_accelerometer
  let _ = device.start_compass
  let _ = device.start_gyroscope
}

pub fn bluetooth_test() {
  // Placeholder for bluetooth tests
  let _ = device.open_bluetooth_adapter
  let _ = device.start_bluetooth_devices_discovery
  let _ = device.create_ble_connection
}

pub fn nfc_test() {
  // Placeholder for NFC tests
  let _ = device.get_nfc_adapter
  let _ = device.nfc_adapter_start_discovery
  let _ = device.nfc_adapter_on_discovered
}
