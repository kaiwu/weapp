import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

// Accelerometer

export function startAccelerometer(i, cb) {
  return new Promise(resolve => {
    wx.startAccelerometer({
      interval: i,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopAccelerometer(cb) {
  return new Promise(resolve => {
    wx.stopAccelerometer({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onAccelerometerChange(cb) {
  wx.onAccelerometerChange(cb);
}

export function offAccelerometerChange(cb) {
  wx.offAccelerometerChange(cb);
}

// Compass

export function startCompass(cb) {
  return new Promise(resolve => {
    wx.startCompass({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopCompass(cb) {
  return new Promise(resolve => {
    wx.stopCompass({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onCompassChange(cb) {
  wx.onCompassChange(cb);
}

export function offCompassChange(cb) {
  wx.offCompassChange(cb);
}

// Gyroscope

export function startGyroscope(i, cb) {
  return new Promise(resolve => {
    wx.startGyroscope({
      interval: i,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopGyroscope(cb) {
  return new Promise(resolve => {
    wx.stopGyroscope({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onGyroscopeChange(cb) {
  wx.onGyroscopeChange(cb);
}

export function offGyroscopeChange(cb) {
  wx.offGyroscopeChange(cb);
}

// Device Motion

export function startDeviceMotionListening(ai, rr, cb) {
  return new Promise(resolve => {
    wx.startDeviceMotionListening({
      acceleration: ai,
      rotationRate: rr,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopDeviceMotionListening(cb) {
  return new Promise(resolve => {
    wx.stopDeviceMotionListening({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onDeviceMotionChange(cb) {
  wx.onDeviceMotionChange(cb);
}

export function offDeviceMotionChange(cb) {
  wx.offDeviceMotionChange(cb);
}

// Battery

export function getBatteryInfo(cb) {
  return new Promise(resolve => {
    wx.getBatteryInfo({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onBatteryInfoChange(cb) {
  wx.onBatteryInfoChange(cb);
}

// Screen

export function setScreenBrightness(v, cb) {
  return new Promise(resolve => {
    wx.setScreenBrightness({
      value: v,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getScreenBrightness(cb) {
  return new Promise(resolve => {
    wx.getScreenBrightness({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setKeepScreenOn(k, cb) {
  return new Promise(resolve => {
    wx.setKeepScreenOn({
      keepScreenOn: k,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onUserCaptureScreen(cb) {
  wx.onUserCaptureScreen(cb);
}

export function offUserCaptureScreen(cb) {
  wx.offUserCaptureScreen(cb);
}

export function onScreenRecordingStateChanged(cb) {
  wx.onScreenRecordingStateChanged(cb);
}

export function offScreenRecordingStateChanged(cb) {
  wx.offScreenRecordingStateChanged(cb);
}

export function onGeneratePoster(cb) {
  wx.onGeneratePoster(cb);
}

export function offGeneratePoster(cb) {
  wx.offGeneratePoster(cb);
}

export function getScreenRecordingState(cb) {
  return new Promise(resolve => {
    wx.getScreenRecordingState({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// Keyboard

export function hideKeyboard() {
  wx.hideKeyboard();
}

export function getSelectedTextRange() {
  return wx.getSelectedTextRange();
}

export function onKeyboardHeightChange(cb) {
  wx.onKeyboardHeightChange(cb);
}

export function offKeyboardHeightChange(cb) {
  wx.offKeyboardHeightChange(cb);
}

export function onMemoryWarning(cb) {
  wx.onMemoryWarning(cb);
}

export function offMemoryWarning(cb) {
  wx.offMemoryWarning(cb);
}

// Wifi

export function startWifi(cb) {
  return new Promise(resolve => {
    wx.startWifi({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopWifi(cb) {
  return new Promise(resolve => {
    wx.stopWifi({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getConnectedWifi(cb) {
  return new Promise(resolve => {
    wx.getConnectedWifi({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onWifiConnected(cb) {
  wx.onWifiConnected(cb);
}

export function offWifiConnected(cb) {
  wx.offWifiConnected(cb);
}

export function onGetWifiList(cb) {
  wx.onGetWifiList(cb);
}

export function offGetWifiList(cb) {
  wx.offGetWifiList(cb);
}

export function getWifiList() {
  return new Promise(resolve => {
    wx.getWifiList({
      complete: (res) => resolve(new Ok(res)),
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setWifiList(cb) {
  return new Promise(resolve => {
    wx.setWifiList({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// Bluetooth Low Energy (BLE)

export function openBluetoothAdapter(options, cb) {
  return new Promise(resolve => {
    wx.openBluetoothAdapter({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function closeBluetoothAdapter(cb) {
  return new Promise(resolve => {
    wx.closeBluetoothAdapter({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getBluetoothAdapterState(cb) {
  return new Promise(resolve => {
    wx.getBluetoothAdapterState({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function startBluetoothDevicesDiscovery(options, cb) {
  return new Promise(resolve => {
    wx.startBluetoothDevicesDiscovery({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopBluetoothDevicesDiscovery(cb) {
  return new Promise(resolve => {
    wx.stopBluetoothDevicesDiscovery({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getBluetoothDevices(cb) {
  return new Promise(resolve => {
    wx.getBluetoothDevices({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getConnectedBluetoothDevices(services, cb) {
  return new Promise(resolve => {
    wx.getConnectedBluetoothDevices({
      services,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onBluetoothDeviceFound(cb) {
  wx.onBluetoothDeviceFound(cb);
}

export function offBluetoothDeviceFound(cb) {
  wx.offBluetoothDeviceFound(cb);
}

export function onBluetoothAdapterStateChange(cb) {
  wx.onBluetoothAdapterStateChange(cb);
}

export function offBluetoothAdapterStateChange(cb) {
  wx.offBluetoothAdapterStateChange(cb);
}

export function createBLEConnection(deviceId, cb) {
  return new Promise(resolve => {
    wx.createBLEConnection({
      deviceId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function closeBLEConnection(deviceId, cb) {
  return new Promise(resolve => {
    wx.closeBLEConnection({
      deviceId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getBLEDeviceServices(deviceId, cb) {
  return new Promise(resolve => {
    wx.getBLEDeviceServices({
      deviceId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getBLEDeviceCharacteristics(deviceId, serviceId, cb) {
  return new Promise(resolve => {
    wx.getBLEDeviceCharacteristics({
      deviceId,
      serviceId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function readBLECharacteristicValue(deviceId, serviceId, characteristicId, cb) {
  return new Promise(resolve => {
    wx.readBLECharacteristicValue({
      deviceId,
      serviceId,
      characteristicId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function writeBLECharacteristicValue(deviceId, serviceId, characteristicId, value, cb) {
  return new Promise(resolve => {
    wx.writeBLECharacteristicValue({
      deviceId,
      serviceId,
      characteristicId,
      value,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function notifyBLECharacteristicValueChange(deviceId, serviceId, characteristicId, state, cb) {
  return new Promise(resolve => {
    wx.notifyBLECharacteristicValueChange({
      deviceId,
      serviceId,
      characteristicId,
      state,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onBLEConnectionStateChange(cb) {
  wx.onBLEConnectionStateChange(cb);
}

export function offBLEConnectionStateChange(cb) {
  wx.offBLEConnectionStateChange(cb);
}

export function onBLECharacteristicValueChange(cb) {
  wx.onBLECharacteristicValueChange(cb);
}

export function offBLECharacteristicValueChange(cb) {
  wx.offBLECharacteristicValueChange(cb);
}

// Near Field Communication (NFC)

export function getNFCAdapter() {
  return wx.getNFCAdapter();
}

export function nfcAdapterStartDiscovery(adapter, options, cb) {
  return new Promise(resolve => {
    adapter.startDiscovery({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function nfcAdapterStopDiscovery(adapter, cb) {
  return new Promise(resolve => {
    adapter.stopDiscovery({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function nfcAdapterOnDiscovered(adapter, cb) {
  adapter.onDiscovered(cb);
}

export function nfcAdapterOffDiscovered(adapter, cb) {
  adapter.offDiscovered(cb);
}

// Beacon (蓝牙信标)

export function startBeaconDiscovery(options, cb) {
  return new Promise(resolve => {
    wx.startBeaconDiscovery({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopBeaconDiscovery() {
  wx.stopBeaconDiscovery();
}

export function onBeaconUpdate(cb) {
  wx.onBeaconUpdate(cb);
}

export function onBeaconServiceChange(cb) {
  wx.onBeaconServiceChange(cb);
}

export function offBeaconUpdate(cb) {
  wx.offBeaconUpdate(cb);
}

export function offBeaconServiceChange(cb) {
  wx.offBeaconServiceChange(cb);
}

export function getBeacons(cb) {
 return new Promise(resolve => {
    wx.getBeacons({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// BLE Peripheral Server (蓝牙低功耗外围设备)

export function createBLEPeripheralServer(options) {
  return wx.createBLEPeripheralServer(options);
}

export function onBLEPeripheralConnectionStateChanged(cb) {
  wx.onBLEPeripheralConnectionStateChanged(cb);
}

export function offBLEPeripheralConnectionStateChanged(cb) {
  wx.offBLEPeripheralConnectionStateChanged(cb);
}

export function blePeripheralServerAddService(server, service) {
  server.addService(service);
}

export function blePeripheralServerClose(server) {
  server.close();
}

export function blePeripheralServerOffCharacteristicReadRequest(server, cb) {
  server.offCharacteristicReadRequest(cb);
}

export function blePeripheralServerOffCharacteristicSubscribed(server, cb) {
  server.offCharacteristicSubscribed(cb);
}

export function blePeripheralServerOffCharacteristicUnsubscribed(server, cb) {
  server.offCharacteristicUnsubscribed(cb);
}

export function blePeripheralServerOffCharacteristicWriteRequest(server, cb) {
  server.offCharacteristicWriteRequest(cb);
}

export function blePeripheralServerOnCharacteristicReadRequest(server, cb) {
  server.onCharacteristicReadRequest(cb);
}

export function blePeripheralServerOnCharacteristicSubscribed(server, cb) {
  server.onCharacteristicSubscribed(cb);
}

export function blePeripheralServerOnCharacteristicUnsubscribed(server, cb) {
  server.onCharacteristicUnsubscribed(cb);
}

export function blePeripheralServerOnCharacteristicWriteRequest(server, cb) {
  server.onCharacteristicWriteRequest(cb);
}

export function blePeripheralServerRemoveService(server, service) {
  server.removeService(service);
}

export function blePeripheralServerStartAdvertising(server) {
  server.startAdvertising();
}

export function blePeripheralServerStopAdvertising(server) {
  server.stopAdvertising();
}

export function blePeripheralServerWriteCharacteristicValue(server, data) {
  server.writeCharacteristicValue(data);
}

// Phase 12: Bluetooth Advanced
export function makeBluetoothPair(deviceId, pin, timeout, cb) {
  return new Promise(resolve => {
    wx.makeBluetoothPair({
      deviceId,
      pin,
      timeout,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function isBluetoothDevicePaired(deviceId, cb) {
  return new Promise(resolve => {
    wx.isBluetoothDevicePaired({
      deviceId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setBLEMTU(deviceId, mtu, cb) {
  return new Promise(resolve => {
    wx.setBLEMTU({
      deviceId,
      mtu,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getBLEMTU(deviceId, cb) {
  return new Promise(resolve => {
    wx.getBLEMTU({
      deviceId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onBLEMTUChange(cb) {
  wx.onBLEMTUChange(cb)
}

export function offBLEMTUChange(cb) {
  wx.offBLEMTUChange(cb)
}

export function getBLEDeviceRSSI(deviceId, cb) {
  return new Promise(resolve => {
    wx.getBLEDeviceRSSI({
      deviceId,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// Phase 13: Device Advanced - WiFi
export function connectWifi(ssid, bssid, password, cb) {
  return new Promise(resolve => {
    wx.connectWifi({
      SSID: ssid,
      BSSID: bssid,
      password,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onWifiConnectedWithPartialInfo(cb) {
  wx.onWifiConnectedWithPartialInfo(cb)
}

export function offWifiConnectedWithPartialInfo(cb) {
  wx.offWifiConnectedWithPartialInfo(cb)
}

// Phase 13: Device Advanced - Battery
export function getBatteryInfoSync() {
  return wx.getBatteryInfoSync()
}

// Phase 13: Device Advanced - Keyboard Events
export function onKeyDown(cb) {
  wx.onKeyDown(cb)
}

export function onKeyUp(cb) {
  wx.onKeyUp(cb)
}

export function offKeyDown(cb) {
  wx.offKeyDown(cb)
}

export function offKeyUp(cb) {
  wx.offKeyUp(cb)
}

// Phase 13: Device Advanced - Screen
export function setVisualEffectOnCapture(visualEffectEnabled, visualEffectType) {
  wx.setVisualEffectOnCapture({
    visualEffectEnabled,
    visualEffectType
  })
}

// Phase 13: Device Advanced - Accessibility
export function checkIsOpenAccessibility() {
  return wx.checkIsOpenAccessibility()
}
