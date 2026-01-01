//// device module provides device sensor API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/device/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatResultCallback, type JsObject, type WechatCallback, type WechatResult}

/// Accelerometer
///
/// `wx.startAccelerometer`
/// Start accelerometer
///
@external(javascript, "../wechat_device_ffi.mjs", "startAccelerometer")
pub fn start_accelerometer(
  interval i: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.stopAccelerometer`
/// Stop accelerometer
///
@external(javascript, "../wechat_device_ffi.mjs", "stopAccelerometer")
pub fn stop_accelerometer(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.onAccelerometerChange`
/// Listen for accelerometer changes
///
@external(javascript, "../wechat_device_ffi.mjs", "onAccelerometerChange")
pub fn on_accelerometer_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offAccelerometerChange`
/// Remove accelerometer change listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offAccelerometerChange")
pub fn off_accelerometer_change(callback cb: WechatResultCallback) -> Nil

/// Compass
///
/// `wx.startCompass`
/// Start compass
///
@external(javascript, "../wechat_device_ffi.mjs", "startCompass")
pub fn start_compass(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.stopCompass`
/// Stop compass
///
@external(javascript, "../wechat_device_ffi.mjs", "stopCompass")
pub fn stop_compass(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.onCompassChange`
/// Listen for compass changes
///
@external(javascript, "../wechat_device_ffi.mjs", "onCompassChange")
pub fn on_compass_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offCompassChange`
/// Remove compass change listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offCompassChange")
pub fn off_compass_change(callback cb: WechatResultCallback) -> Nil

/// Gyroscope
///
/// `wx.startGyroscope`
/// Start gyroscope
///
@external(javascript, "../wechat_device_ffi.mjs", "startGyroscope")
pub fn start_gyroscope(
  interval i: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.stopGyroscope`
/// Stop gyroscope
///
@external(javascript, "../wechat_device_ffi.mjs", "stopGyroscope")
pub fn stop_gyroscope(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.onGyroscopeChange`
/// Listen for gyroscope changes
///
@external(javascript, "../wechat_device_ffi.mjs", "onGyroscopeChange")
pub fn on_gyroscope_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offGyroscopeChange`
/// Remove gyroscope change listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offGyroscopeChange")
pub fn off_gyroscope_change(callback cb: WechatResultCallback) -> Nil

/// Device Motion
///
/// `wx.startDeviceMotionListening`
/// Start device motion listening
///
@external(javascript, "../wechat_device_ffi.mjs", "startDeviceMotionListening")
pub fn start_device_motion_listening(
  acceleration ai: Bool,
  rotation_rate rr: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.stopDeviceMotionListening`
/// Stop device motion listening
///
@external(javascript, "../wechat_device_ffi.mjs", "stopDeviceMotionListening")
pub fn stop_device_motion_listening(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onDeviceMotionChange`
/// Listen for device motion changes
///
@external(javascript, "../wechat_device_ffi.mjs", "onDeviceMotionChange")
pub fn on_device_motion_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offDeviceMotionChange`
/// Remove device motion change listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offDeviceMotionChange")
pub fn off_device_motion_change(callback cb: WechatResultCallback) -> Nil

/// Bluetooth Low Energy (BLE)
///
/// `wx.openBluetoothAdapter`
/// Initialize Bluetooth adapter
///
@external(javascript, "../wechat_device_ffi.mjs", "openBluetoothAdapter")
pub fn open_bluetooth_adapter(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.closeBluetoothAdapter`
/// Close Bluetooth adapter
///
@external(javascript, "../wechat_device_ffi.mjs", "closeBluetoothAdapter")
pub fn close_bluetooth_adapter(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getBluetoothAdapterState`
/// Get Bluetooth adapter state
///
@external(javascript, "../wechat_device_ffi.mjs", "getBluetoothAdapterState")
pub fn get_bluetooth_adapter_state(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.startBluetoothDevicesDiscovery`
/// Start searching for nearby BLE devices
///
@external(javascript, "../wechat_device_ffi.mjs", "startBluetoothDevicesDiscovery")
pub fn start_bluetooth_devices_discovery(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.stopBluetoothDevicesDiscovery`
/// Stop searching for nearby BLE devices
///
@external(javascript, "../wechat_device_ffi.mjs", "stopBluetoothDevicesDiscovery")
pub fn stop_bluetooth_devices_discovery(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getBluetoothDevices`
/// Get all discovered devices
///
@external(javascript, "../wechat_device_ffi.mjs", "getBluetoothDevices")
pub fn get_bluetooth_devices(
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getConnectedBluetoothDevices`
/// Get devices connected according to UUID
///
@external(javascript, "../wechat_device_ffi.mjs", "getConnectedBluetoothDevices")
pub fn get_connected_bluetooth_devices(
  services s: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onBluetoothDeviceFound`
/// Listen for newly discovered devices
///
@external(javascript, "../wechat_device_ffi.mjs", "onBluetoothDeviceFound")
pub fn on_bluetooth_device_found(callback cb: WechatResultCallback) -> Nil

/// `wx.offBluetoothDeviceFound`
/// Cancel listening for newly discovered devices
///
@external(javascript, "../wechat_device_ffi.mjs", "offBluetoothDeviceFound")
pub fn off_bluetooth_device_found(callback cb: WechatResultCallback) -> Nil

/// `wx.onBluetoothAdapterStateChange`
/// Listen for Bluetooth adapter state change
///
@external(javascript, "../wechat_device_ffi.mjs", "onBluetoothAdapterStateChange")
pub fn on_bluetooth_adapter_state_change(
  callback cb: WechatResultCallback,
) -> Nil

/// `wx.offBluetoothAdapterStateChange`
/// Cancel listening for Bluetooth adapter state change
///
@external(javascript, "../wechat_device_ffi.mjs", "offBluetoothAdapterStateChange")
pub fn off_bluetooth_adapter_state_change(
  callback cb: WechatResultCallback,
) -> Nil

/// `wx.createBLEConnection`
/// Connect to BLE peripheral
///
@external(javascript, "../wechat_device_ffi.mjs", "createBLEConnection")
pub fn create_ble_connection(
  device_id d: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.closeBLEConnection`
/// Disconnect from BLE peripheral
///
@external(javascript, "../wechat_device_ffi.mjs", "closeBLEConnection")
pub fn close_ble_connection(
  device_id d: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getBLEDeviceServices`
/// Get services of BLE device
///
@external(javascript, "../wechat_device_ffi.mjs", "getBLEDeviceServices")
pub fn get_ble_device_services(
  device_id d: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getBLEDeviceCharacteristics`
/// Get characteristic values of specified service
///
@external(javascript, "../wechat_device_ffi.mjs", "getBLEDeviceCharacteristics")
pub fn get_ble_device_characteristics(
  device_id d: String,
  service_id s: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.readBLECharacteristicValue`
/// Read characteristic value
///
@external(javascript, "../wechat_device_ffi.mjs", "readBLECharacteristicValue")
pub fn read_ble_characteristic_value(
  device_id d: String,
  service_id s: String,
  characteristic_id c: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.writeBLECharacteristicValue`
/// Write characteristic value
///
@external(javascript, "../wechat_device_ffi.mjs", "writeBLECharacteristicValue")
pub fn write_ble_characteristic_value(
  device_id d: String,
  service_id s: String,
  characteristic_id c: String,
  value v: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.notifyBLECharacteristicValueChange`
/// Enable notifications for characteristic value changes
///
@external(javascript, "../wechat_device_ffi.mjs", "notifyBLECharacteristicValueChange")
pub fn notify_ble_characteristic_value_change(
  device_id d: String,
  service_id s: String,
  characteristic_id c: String,
  state s2: Bool,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onBLEConnectionStateChange`
/// Listen for BLE connection state change
///
@external(javascript, "../wechat_device_ffi.mjs", "onBLEConnectionStateChange")
pub fn on_ble_connection_state_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offBLEConnectionStateChange`
/// Cancel listening for BLE connection state change
///
@external(javascript, "../wechat_device_ffi.mjs", "offBLEConnectionStateChange")
pub fn off_ble_connection_state_change(callback cb: WechatResultCallback) -> Nil

/// `wx.onBLECharacteristicValueChange`
/// Listen for characteristic value change
///
@external(javascript, "../wechat_device_ffi.mjs", "onBLECharacteristicValueChange")
pub fn on_ble_characteristic_value_change(
  callback cb: WechatResultCallback,
) -> Nil

/// `wx.offBLECharacteristicValueChange`
/// Cancel listening for characteristic value change
///
@external(javascript, "../wechat_device_ffi.mjs", "offBLECharacteristicValueChange")
pub fn off_ble_characteristic_value_change(
  callback cb: WechatResultCallback,
) -> Nil

/// Near Field Communication (NFC)
///
/// `wx.getNFCAdapter`
/// Get NFC adapter
///
@external(javascript, "../wechat_device_ffi.mjs", "getNFCAdapter")
pub fn get_nfc_adapter() -> JsObject

/// `NfcAdapter.startDiscovery`
/// Start searching for NFC tags
///
@external(javascript, "../wechat_device_ffi.mjs", "nfcAdapterStartDiscovery")
pub fn nfc_adapter_start_discovery(
  adapter: JsObject,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `NfcAdapter.stopDiscovery`
/// Stop searching for NFC tags
///
@external(javascript, "../wechat_device_ffi.mjs", "nfcAdapterStopDiscovery")
pub fn nfc_adapter_stop_discovery(
  adapter: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `NfcAdapter.onDiscovered`
/// Listen for discovered NFC tags
///
@external(javascript, "../wechat_device_ffi.mjs", "nfcAdapterOnDiscovered")
pub fn nfc_adapter_on_discovered(
  adapter: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `NfcAdapter.offDiscovered`
/// Cancel listening for discovered NFC tags
///
@external(javascript, "../wechat_device_ffi.mjs", "nfcAdapterOffDiscovered")
pub fn nfc_adapter_off_discovered(
  adapter: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// Beacon (蓝牙信标)
///
/// `wx.startBeaconDiscovery`
/// Start searching for Beacon devices
///
@external(javascript, "../wechat_device_ffi.mjs", "startBeaconDiscovery")
pub fn start_beacon_discovery(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.stopBeaconDiscovery`
/// Stop searching for Beacon devices
///
@external(javascript, "../wechat_device_ffi.mjs", "stopBeaconDiscovery")
pub fn stop_beacon_discovery() -> Nil

/// `wx.onBeaconUpdate`
/// Listen for Beacon device update event
///
@external(javascript, "../wechat_device_ffi.mjs", "onBeaconUpdate")
pub fn on_beacon_update(callback cb: WechatResultCallback) -> Nil

/// `wx.onBeaconServiceChange`
/// Listen for Beacon service state change event
///
@external(javascript, "../wechat_device_ffi.mjs", "onBeaconServiceChange")
pub fn on_beacon_service_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offBeaconUpdate`
/// Remove Beacon device update event listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offBeaconUpdate")
pub fn off_beacon_update(callback cb: WechatResultCallback) -> Nil

/// `wx.offBeaconServiceChange`
/// Remove Beacon service state change event listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offBeaconServiceChange")
pub fn off_beacon_service_change(callback cb: WechatResultCallback) -> Nil

/// `wx.getBeacons`
/// Get all discovered Beacon devices
///
@external(javascript, "../wechat_device_ffi.mjs", "getBeacons")
pub fn get_beacons(complete cb: WechatCallback) -> Promise(WechatResult)

/// BLE Peripheral Server (蓝牙低功耗外围设备)
///
/// BLEPeripheralServer type
///
pub type BLEPeripheralServer

/// `wx.createBLEPeripheralServer`
/// Create BLE peripheral server
///
@external(javascript, "../wechat_device_ffi.mjs", "createBLEPeripheralServer")
pub fn create_ble_peripheral_server(options o: JsObject) -> BLEPeripheralServer

/// `wx.onBLEPeripheralConnectionStateChanged`
/// Listen for BLE peripheral connection state change
///
@external(javascript, "../wechat_device_ffi.mjs", "onBLEPeripheralConnectionStateChanged")
pub fn on_ble_peripheral_connection_state_changed(
  callback cb: WechatResultCallback,
) -> Nil

/// `wx.offBLEPeripheralConnectionStateChanged`
/// Remove BLE peripheral connection state change listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offBLEPeripheralConnectionStateChanged")
pub fn off_ble_peripheral_connection_state_changed(
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.addService
/// Add service
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerAddService")
pub fn ble_peripheral_server_add_service(
  server: BLEPeripheralServer,
  service s: JsObject,
) -> Nil

/// BLEPeripheralServer.close
/// Close server
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerClose")
pub fn ble_peripheral_server_close(server: BLEPeripheralServer) -> Nil

/// BLEPeripheralServer.offCharacteristicReadRequest
/// Remove characteristic read request listener
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOffCharacteristicReadRequest")
pub fn ble_peripheral_server_off_characteristic_read_request(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.offCharacteristicSubscribed
/// Remove characteristic subscribed listener
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOffCharacteristicSubscribed")
pub fn ble_peripheral_server_off_characteristic_subscribed(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.offCharacteristicUnsubscribed
/// Remove characteristic unsubscribed listener
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOffCharacteristicUnsubscribed")
pub fn ble_peripheral_server_off_characteristic_unsubscribed(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.offCharacteristicWriteRequest
/// Remove characteristic write request listener
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOffCharacteristicWriteRequest")
pub fn ble_peripheral_server_off_characteristic_write_request(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.onCharacteristicReadRequest
/// Listen for characteristic read request
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOnCharacteristicReadRequest")
pub fn ble_peripheral_server_on_characteristic_read_request(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.onCharacteristicSubscribed
/// Listen for characteristic subscribed
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOnCharacteristicSubscribed")
pub fn ble_peripheral_server_on_characteristic_subscribed(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.onCharacteristicUnsubscribed
/// Listen for characteristic unsubscribed
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOnCharacteristicUnsubscribed")
pub fn ble_peripheral_server_on_characteristic_unsubscribed(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.onCharacteristicWriteRequest
/// Listen for characteristic write request
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerOnCharacteristicWriteRequest")
pub fn ble_peripheral_server_on_characteristic_write_request(
  server: BLEPeripheralServer,
  callback cb: WechatResultCallback,
) -> Nil

/// BLEPeripheralServer.removeService
/// Remove service
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerRemoveService")
pub fn ble_peripheral_server_remove_service(
  server: BLEPeripheralServer,
  service s: JsObject,
) -> Nil

/// BLEPeripheralServer.startAdvertising
/// Start advertising
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerStartAdvertising")
pub fn ble_peripheral_server_start_advertising(
  server: BLEPeripheralServer,
) -> Nil

/// BLEPeripheralServer.stopAdvertising
/// Stop advertising
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerStopAdvertising")
pub fn ble_peripheral_server_stop_advertising(
  server: BLEPeripheralServer,
) -> Nil

/// BLEPeripheralServer.writeCharacteristicValue
/// Write characteristic value
///
@external(javascript, "../wechat_device_ffi.mjs", "blePeripheralServerWriteCharacteristicValue")
pub fn ble_peripheral_server_write_characteristic_value(
  server: BLEPeripheralServer,
  data d: JsObject,
) -> Nil

/// System Memory
///
/// `wx.onMemoryWarning`
/// Listen for memory warning event
///
@external(javascript, "../wechat_device_ffi.mjs", "onMemoryWarning")
pub fn on_memory_warning(callback cb: WechatResultCallback) -> Nil

/// `wx.offMemoryWarning`
/// Remove memory warning event listener
///
@external(javascript, "../wechat_device_ffi.mjs", "offMemoryWarning")
pub fn off_memory_warning(callback cb: WechatResultCallback) -> Nil
