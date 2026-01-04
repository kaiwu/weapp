# weapp

Gleam bindings for wechat miniprogram, a.k.a weapp.

[![Package Version](https://img.shields.io/hexpm/v/weapp)](https://hex.pm/packages/weapp)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/weapp/)

A project template and working demo which uses this package
can be found at [wechat_dev_tools](https://github.com/kaiwu/wechat_dev_tools)

## Installation

Add the package to your gleam project

```sh
gleam add weapp
```

## Features

This library contains bindings for many frequently used wechat APIs. Gleam makes it
super easy to extend as many as one needs

- wx.request
- wx.requestPayment
- wx.login
- wx.setStorage
- wx.saveFile
- wx.openDocument

## API Bindings

### Toggle to view all WeChat API bindings by module

<details>
<summary><b>📚 Click to expand all API modules</b></summary>

#### Network Module (`wechat/network`)
<details>
<summary>HTTP, WebSocket, TCP/UDP, mDNS, VoIP</summary>

- `wx.request` - HTTPS network request
- `wx.downloadFile` - Download file resource
- `wx.uploadFile` - Upload local resource to server
- `wx.connectSocket` - Create WebSocket connection
- `wx.sendSocketMessage` - Send WebSocket message
- `wx.closeSocket` - Close WebSocket connection
- `wx.onSocketOpen` - Listen for WebSocket connection open
- `wx.onSocketMessage` - Listen for WebSocket message
- `wx.onSocketError` - Listen for WebSocket error
- `wx.onSocketClose` - Listen for WebSocket close
- RequestTask - Network request task management
- UploadTask - Upload task management
- DownloadTask - Download task management
- SocketTask - WebSocket task management
- `wx.createTCPSocket` - Create TCP Socket instance
- `wx.createUDPSocket` - Create UDP Socket instance
- TCPSocket methods: `bindWifi`, `connect`, `write`, `close`, event handlers
- UDPSocket methods: `bind`, `connect`, `send`, `write`, `setTTL`, `close`, event handlers
- `wx.startLocalServiceDiscovery` - Start mDNS service discovery
- `wx.stopLocalServiceDiscovery` - Stop mDNS service discovery
- mDNS event handlers: `onLocalServiceResolveFail`, `onLocalServiceLost`, `onLocalServiceFound`, `onLocalServiceDiscoveryStop`
- `wx.updateVoIPChatMuteConfig` - Update VoIP mute config
- `wx.subscribeVoIPVideoMembers` - Subscribe VoIP video members
- `wx.setEnable1v1Chat` - Enable 1v1 chat
- `wx.joinVoIPChat` - Join VoIP chat room
- `wx.join1v1Chat` - Join 1v1 VoIP chat
- `wx.exitVoIPChat` - Exit VoIP chat
- VoIP event handlers: state changes, members changed, speakers changed, interrupted
- `wx.getNetworkType` - Get network type
- `wx.getLocalIPAddress` - Get local IP address
- `wx.onNetworkWeakChange`, `wx.offNetworkWeakChange` - Network weak change events

</details>

#### Media Module (`wechat/media`)
<details>
<summary>Image, Audio, Video, Recorder, Live Streaming</summary>

**Images:**
- `wx.chooseImage` - Select pictures from album or take photo
- `wx.previewImage` - Preview images
- `wx.getImageInfo` - Get image information
- `wx.saveImageToPhotosAlbum` - Save image to album
- `wx.compressImage` - Compress image
- `wx.chooseMessageFile` - Select file from session
- `wx.editImage` - Edit image
- `wx.cropImage` - Crop image

**Videos:**
- `wx.chooseVideo` - Choose video
- `wx.chooseMedia` - Choose media (image/video)
- `wx.getVideoInfo` - Get video information
- `wx.saveVideoToPhotosAlbum` - Save video to album
- `wx.compressVideo` - Compress video
- `wx.openVideoEditor` - Open video editor
- `wx.checkDeviceSupportHevc` - Check HEVC support
- `wx.previewMedia` - Preview media
- VideoContext: `create_video_context`, playback control, danmu, casting, picture-in-picture

**Audio - Recorder:**
- `wx.getRecorderManager` - Get recorder manager
- RecorderManager: `start`, `stop`, `pause`, `resume`, event handlers

**Audio - InnerAudio:**
- `wx.createInnerAudioContext` - Create inner audio context
- InnerAudioContext: playback control, event handlers

**Audio - Voice (旧API):**
- `wx.playVoice`, `wx.pauseVoice`, `wx.stopVoice`
- AudioContext: `create_audio_context`, playback control

**Audio - WebAudio:**
- `wx.createWebAudioContext` - Create WebAudio context
- WebAudioContext: nodes creation, audio processing methods

**Audio - MediaAudioPlayer:**
- `wx.createMediaAudioPlayer` - Create media audio player
- MediaAudioPlayer: `add_audio_source`, `destroy`, `remove_audio_source`, `start`, `stop`

**Audio - BackgroundAudio:**
- `wx.getBackgroundAudioManager` - Get background audio manager
- BackgroundAudioManager: playback control, volume, seeking, event handlers

**Live Streaming - LivePlayer:**
- `wx.createLivePlayerContext` - Create live player context
- LivePlayer: `play`, `stop`, `mute`, full screen, snapshot, casting, picture-in-picture, resume

**Live Streaming - LivePusher:**
- `wx.createLivePusherContext` - Create live pusher context
- LivePusher: `start`, `stop`, `pause`, `resume`, `switch_camera`, `snapshot`
- LivePusher BGM: `play_bgm`, `pause_bgm`, `resume_bgm`, `stop_bgm`, volume control
- LivePusher Audio: `set_mic_volume`, `set_zoom`, `get_max_zoom`
- LivePusher Effects: `apply_filter`, `clear_filters`, makeup effects (blusher, eyebrow, eyeshadow, contour, lipstick), clear makeup, stickers, clear stickers
- LivePusher Advanced: `create_offscreen_canvas`, `exit_picture_in_picture`, custom renderer events, `send_message`, `start_preview`, `stop_preview`, `toggle_torch`

**Camera:**
- `wx.createCameraContext` - Create camera context
- CameraContext: `start_record`, `stop_record`, `take_photo`, `set_zoom`, frame listener

**Media Composition:**
- `wx.createMediaContainer` - Create media container
- MediaContainer: `add_track`, `destroy`, `export`, `extract_data_source`, `remove_track`

**Video Decoding:**
- `wx.createVideoDecoder` - Create video decoder
- VideoDecoder: `start`, `stop`, `seek`, `remove`, `get_frame_data`, event handlers

</details>

#### Device Module (`wechat/device`)
<details>
<summary>Accelerometer, Compass, Gyroscope, Battery, Screen, Keyboard, WiFi, Bluetooth, NFC, Beacon</summary>

**Sensors:**
- `wx.startAccelerometer`, `wx.stopAccelerometer` - Accelerometer control
- `wx.onAccelerometerChange`, `wx.offAccelerometerChange` - Accelerometer events
- `wx.startCompass`, `wx.stopCompass` - Compass control
- `wx.onCompassChange`, `wx.offCompassChange` - Compass events
- `wx.startGyroscope`, `wx.stopGyroscope` - Gyroscope control
- `wx.onGyroscopeChange`, `wx.offGyroscopeChange` - Gyroscope events
- `wx.startDeviceMotionListening`, `wx.stopDeviceMotionListening` - Device motion control
- `wx.onDeviceMotionChange`, `wx.offDeviceMotionChange` - Device motion events

**Battery:**
- `wx.getBatteryInfo` - Get battery information
- `wx.onBatteryInfoChange` - Battery info change event

**Screen:**
- `wx.setScreenBrightness`, `wx.getScreenBrightness` - Screen brightness
- `wx.setKeepScreenOn` - Keep screen on
- `wx.onUserCaptureScreen`, `wx.offUserCaptureScreen` - Screen capture event
- `wx.onScreenRecordingStateChanged`, `wx.offScreenRecordingStateChanged` - Screen recording events
- `wx.onGeneratePoster`, `wx.offGeneratePoster` - Generate poster event
- `wx.getScreenRecordingState` - Get screen recording state

**Keyboard:**
- `wx.hideKeyboard` - Hide keyboard
- `wx.getSelectedTextRange` - Get selected text range
- `wx.onKeyboardHeightChange`, `wx.offKeyboardHeightChange` - Keyboard height events

**Memory:**
- `wx.onMemoryWarning`, `wx.offMemoryWarning` - Memory warning events

**WiFi:**
- `wx.startWifi`, `wx.stopWifi` - WiFi control
- `wx.getConnectedWifi` - Get connected WiFi
- `wx.getWifiList` - Get WiFi list
- `wx.setWifiList` - Set WiFi list
- `wx.onWifiConnected`, `wx.offWifiConnected` - WiFi connected event
- `wx.onGetWifiList`, `wx.offGetWifiList` - WiFi list event

**Bluetooth - General:**
- `wx.openBluetoothAdapter`, `wx.closeBluetoothAdapter` - Bluetooth adapter control
- `wx.getBluetoothAdapterState` - Get adapter state
- `wx.startBluetoothDevicesDiscovery`, `wx.stopBluetoothDevicesDiscovery` - Device discovery
- `wx.getBluetoothDevices`, `wx.getConnectedBluetoothDevices` - Get devices
- `wx.onBluetoothDeviceFound`, `wx.offBluetoothDeviceFound` - Device found event
- `wx.onBluetoothAdapterStateChange`, `wx.offBluetoothAdapterStateChange` - Adapter state event

**Bluetooth - Low Energy (BLE) Central:**
- `wx.createBLEConnection`, `wx.closeBLEConnection` - BLE connection control
- `wx.getBLEDeviceServices`, `wx.getBLEDeviceCharacteristics` - Get services/characteristics
- `wx.readBLECharacteristicValue`, `wx.writeBLECharacteristicValue` - Read/write characteristic
- `wx.notifyBLECharacteristicValueChange` - Enable characteristic notification
- `wx.onBLEConnectionStateChange`, `wx.offBLEConnectionStateChange` - Connection state event
- `wx.onBLECharacteristicValueChange`, `wx.offBLECharacteristicValueChange` - Characteristic value event

**Bluetooth - Low Energy (BLE) Peripheral:**
- `wx.createBLEPeripheralServer` - Create BLE peripheral server
- `wx.onBLEPeripheralConnectionStateChanged`, `wx.offBLEPeripheralConnectionStateChanged` - Peripheral connection event
- BLEPeripheralServer: `add_service`, `remove_service`, `start_advertising`, `stop_advertising`, `write_characteristic_value`
- BLEPeripheralServer characteristic event handlers: read request, subscribed, unsubscribed, write request

**Beacon:**
- `wx.startBeaconDiscovery`, `wx.stopBeaconDiscovery` - Beacon discovery control
- `wx.getBeacons` - Get discovered beacons
- `wx.onBeaconUpdate`, `wx.offBeaconUpdate` - Beacon update event
- `wx.onBeaconServiceChange`, `wx.offBeaconServiceChange` - Beacon service change event

**NFC:**
- `wx.getNFCAdapter` - Get NFC adapter
- NFCAdapter: `start_discovery`, `stop_discovery`, event handlers

</details>

#### Filesystem Module (`wechat/filesystem`)
<details>
<summary>File system operations</summary>

- `wx.getFileSystemManager` - Get file system manager
- FileSystemManager: `access`, `mkdir`, `readFile`, `writeFile`, `unlink`, `rename`, `copyFile`, `stat`, and 30+ more methods
- File system methods: read/write, directory operations, file info, compression, unzip

</details>

#### Map Module (`wechat/map`)
<details>
<summary>Map context and location</summary>

- `wx.createMapContext` - Create map context
- MapContext: `include_points`, `move_to_location`, `translate_marker`, add markers/layers, remove operations
- `wx.getLocation` - Get current location
- `wx.chooseLocation` - Choose location
- `wx.openLocation` - Open location in map app

</details>

#### Cache Module (`wechat/cache`)
<details>
<summary>Cache manager for request/response caching</summary>

- `wx.createCacheManager` - Create cache manager
- CacheManager: `add_rule`, `add_rules`, `clear_caches`, `clear_rules`, `delete_cache`, `delete_caches`, `delete_rule`, `delete_rules`, `match`, `start`, `stop`, event handlers

</details>

#### Performance Module (`wechat/performance`)
<details>
<summary>Performance monitoring and metrics</summary>

- `wx.getPerformance` - Get performance object
- Performance: `create_observer`, `get_entries`, `get_entries_by_type`, `get_entries_by_name`, `set_buffer_size`
- PerformanceObserver: `observe`, `disconnect`
- Performance methods: `mark`, `measure`, `clear_marks`, `clear_measures`

</details>

#### UI Module (`wechat/ui`)
<details>
<summary>UI interaction and animation</summary>

**Feedback:**
- `wx.showToast`, `wx.hideToast` - Toast display
- `wx.showModal` - Modal dialog
- `wx.showLoading`, `wx.hideLoading` - Loading indicator
- `wx.showActionSheet` - Action sheet

**Navigation Bar:**
- `wx.setNavigationBarTitle` - Set title
- `wx.setNavigationBarColor` - Set color
- `wx.showNavigationBarLoading`, `wx.hideNavigationBarLoading` - Loading

**TabBar:**
- `wx.setTabBarItem`, `wx.setTabBarStyle` - Set TabBar item/style
- `wx.showTabBarRedDot`, `wx.hideTabBarRedDot` - TabBar red dot
- `wx.setTabBarBadge`, `wx.removeTabBarBadge` - TabBar badge

**Background:**
- `wx.setBackgroundColor`, `wx.setBackgroundTextStyle` - Set background

**Animation:**
- `wx.createAnimation` - Create animation
- Animation: `rotate`, `scale`, `translate`, `skew`, `opacity`, `width`, `height`, background color, `export`, `step`

</details>

#### WXML Module (`wechat/wxml`)
<details>
<summary>Node query and component contexts</summary>

**SelectorQuery:**
- `wx.createSelectorQuery` - Create selector query
- SelectorQuery: `in`, `select`, `select_all`, `select_viewport`, `exec`
- NodesRef: `bounding_client_rect`, `scroll_offset`, `fields`, `context`, `node`, `ref`

**Component Contexts:**
- ScrollViewContext: `close_refresh`, `close_two_level`, `scroll_to`, `scroll_into_view`, `trigger_refresh`, `trigger_two_level`
- EditorContext: `set_contents`, `get_contents`, `clear`, `blur`, `focus`, `format`, `insert_text`, `get_selection_text`, `scroll_into_view`, `status`, `ready`

**IntersectionObserver:**
- `wx.createIntersectionObserver` - Create intersection observer
- IntersectionObserver: `disconnect`, `observe`, `relative_to`, `relative_to_viewport`

</details>

#### Video Module (`wechat/video`)
<details>
<summary>Video player context</summary>

- `wx.createVideoContext` - Create video context
- VideoContext: `play`, `pause`, `stop`, `seek`, `playback_rate`, full screen, status bar, danmu, casting, picture-in-picture

</details>

#### Storage Module (`wechat/storage`)
<details>
<summary>Storage and batch operations</summary>

**Basic Storage:**
- `wx.setStorage`, `wx.getStorage`, `wx.removeStorage`, `wx.clearStorage` - Async storage
- `wx.getStorageInfo` - Storage info

**Advanced Storage:**
- `wx.createBufferURL`, `wx.revokeBufferURL` - Buffer URL management
- `wx.batchSetStorage`, `wx.batchSetStorageSync` - Batch set
- `wx.batchGetStorage`, `wx.batchGetStorageSync` - Batch get

</details>

#### Open Module (`wechat/open`)
<details>
<summary>Open APIs - login, user info, calendar, contact, phone, SMS</summary>

**User:**
- `wx.login` - Get login code
- `wx.checkSession` - Check session
- `wx.getUserInfo`, `wx.getUserProfile` - Get user info
- `wx.getSetting`, `wx.openSetting` - Settings management
- `wx.authorize` - Request authorization

**Calendar & Contact:**
- `wx.addPhoneRepeatCalendar`, `wx.addPhoneCalendar` - Add calendar event
- `wx.chooseContact` - Choose contact
- `wx.addPhoneContact` - Add contact

**Phone & SMS:**
- `wx.makePhoneCall` - Make phone call
- `wx.sendSms` - Send SMS

**Mini Program Navigation:**
- `wx.navigateToMiniProgram`, `wx.navigateBackMiniProgram`, `wx.exitMiniProgram` - Mini program navigation

**Other:**
- `wx.chooseAddress` - Choose address
- `wx.requestSubscribeMessage` - Subscribe message

</details>

#### Base Module (`wechat/base`)
<details>
<summary>Base APIs - routing, payment, clipboard, vibrate, scan code, encryption</summary>

**Routing:**
- `wx.navigateTo`, `wx.redirectTo`, `wx.switchTab`, `wx.reLaunch`, `wx.navigateBack` - Page navigation

**Payment:**
- `wx.requestPayment` - Request WeChat payment

**System:**
- `wx.setClipboardData`, `wx.getClipboardData` - Clipboard operations
- `wx.vibrateShort`, `wx.vibrateLong` - Vibration
- `wx.scanCode` - Scan QR code
- `wx.getRandomValues` - Cryptographically secure random

**Update:**
- `wx.getUpdateManager` - Get update manager
- UpdateManager: `apply_update`, `on_check_for_update`, `on_update_failed`, `on_update_ready`

**Background Fetch:**
- `wx.setBackgroundFetchToken` - Set background fetch token
- `wx.onBackgroundFetchData` - Listen for background fetch data
- `wx.getBackgroundFetchToken` - Get background fetch token
- `wx.getBackgroundFetchData` - Get background fetch data

**Subpackage Pre-download:**
- `wx.preDownloadSubpackage` - Pre-download subpackage

**User Crypto Manager:**
- `wx.getUserCryptoManager` - Get user crypto manager
- UserCryptoManager: `get_latest_user_key`, `get_random_values`

**Custom Router:**
- `wx.router` - Get custom router
- Router: `add_route_builder`, `get_route_context`, `remove_route_builder`

**Other:**
- `wx.showTabbar`, `wx.hideTabbar` - Tabbar control
- `wx.showLoading`, `wx.hideLoading` - Loading
- `wx.showToast` - Toast

</details>

#### Worker Module (`wechat/worker`)
<details>
<summary>Web Worker for background processing</summary>

- `wx.createWorker` - Create worker
- Worker: `post_message`, `terminate`, event handlers (`on_error`, `on_message`, `on_process_killed`)

</details>

#### Editor Module (`wechat/editor`)
<details>
<summary>Rich text editor context</summary>

- `wx.createEditorContext` - Create editor context
- EditorContext: `set_contents`, `get_contents`, `clear`, `blur`, `focus`, `format`, `insert_text`, `get_selection_text`, `scroll_into_view`, `status`, `ready`

</details>

#### App Module (`wechat/app`)
<details>
<summary>App constructor and utilities</summary>

- `wx.getAppBaseInfo` - Get app base info
- `App()` - App constructor
- `getApp()` - Get app instance
- Global utilities: `setTimeout`, `clearTimeout`, `setInterval`, `clearInterval`, `decodeURIComponent`

</details>

#### Page Module (`wechat/page`)
<details>
<summary>Page constructor and data management</summary>

- `Page()` - Page constructor
- `getCurrentPages()` - Get current pages stack
- `setData()` - Set page data for rendering
- `selectComponent()` - Select component
- Pull down refresh: `wx.startPullDownRefresh`, `wx.stopPullDownRefresh` (in UI module)

</details>

#### Analytics Module (`wechat/analytics`)
<details>
<summary>Analytics and monitoring</summary>

- `wx.reportEvent` - Report event
- `wx.reportMonitor` - Report monitoring data

</details>

#### Payment Module (`wechat/payment`)
<details>
<summary>Payment APIs</summary>

- `wx.requestPayment` - Request WeChat payment
- `wx.chooseAddress` - Choose address (billing)

</details>

#### Location Module (`wechat/location`)
<details>
<summary>Location and map</summary>

- `wx.getLocation` - Get location
- `wx.chooseLocation` - Choose location
- `wx.openLocation` - Open location in map

</details>

#### Share Module (`wechat/share`)
<details>
<summary>Share APIs</summary>

- `wx.showShareMenu`, `wx.hideShareMenu` - Share menu control
- `wx.updateShareMenu` - Update share menu
- `wx.shareAppMessage` - Share app message
- `wx.onShareAppMessage`, `wx.offShareAppMessage` - Share event handlers

</details>

#### Network Module (`wechat/network`)
<details>
<summary>Network APIs (duplicate reference)</summary>

*(See Network Module above)*

</details>

#### Audio Module (`wechat/audio`)
<details>
<summary>Audio APIs (duplicate reference)</summary>

*(See Media Module - Audio section above)*

</details>

#### Ad Module (`wechat/ad`)
<details>
<summary>Ad components</summary>

- `wx.createInterstitialAd` - Create interstitial ad
- InterstitialAd: `destroy`, `load`, `show`, event handlers (`on_close`, `on_error`, `on_load`)
- `wx.createRewardedVideoAd` - Create rewarded video ad
- RewardedVideoAd: `destroy`, `load`, `show`, event handlers (`on_close`, `on_error`, `on_load`)
- `wx.getShowSplashAdStatus` - Get splash ad status

</details>

 </details>

---

## Total Functions Count

**500+ wx API functions** bound across 32 Gleam modules using 12 FFI modules:

### By FFI Module (wx functions):
- **wechat_base_ffi.mjs** (104 functions): Login, storage, payment, navigation, system utilities, background fetch, crypto, router, calendar, contact, phone, scan, clipboard, vibrate, app events (on/off), lifecycle, performance, privacy
- **wechat_device_ffi.mjs** (93 functions): Sensors (accelerometer, compass, gyroscope), battery, screen, Bluetooth (general, BLE, peripheral), NFC, WiFi, Beacon, keyboard, memory, accessibility
- **wechat_network_ffi.mjs** (45 functions): Request, WebSocket, TCP/UDP, mDNS, VoIP, network events
- **wechat_media_ffi.mjs** (37 functions): Image, Video, Audio (inner, voice, web, background, media audio), Recorder, Live streaming, Camera, MediaContainer, VideoDecoder
- **wechat_ui_ffi.mjs** (52 functions): Interaction (toast, modal, loading, action sheet), navigation bar, tabbar, background, animation, pull down refresh, share menu, window, scroll
- **wechat_canvas_ffi.mjs** (9 functions): createCanvasContext, canvasGetImageData, canvasPutImageData, canvasToTempFilePath, createOffscreenCanvas, requestAnimationFrame, cancelAnimationFrame, createImage, createImageData
- **wechat_wxml_ffi.mjs** (2 functions): createSelectorQuery, createIntersectionObserver
- **wechat_filesystem_ffi.mjs** (2 functions): getFileSystemManager, saveFileToDisk
- **wechat_map_ffi.mjs** (1 function): createMapContext
- **wechat_cache_ffi.mjs** (1 function): createCacheManager
- **wechat_performance_ffi.mjs** (varies): getPerformance and related functions
- **wechat_ffi.mjs** (18 functions): System info (getAppBaseInfo, getSystemInfo, getSystemInfoSync, getSystemInfoAsync, getSystemSetting, getDeviceInfo, getWindowInfo, getAppAuthorizeSetting, getAccountInfoSync, getLaunchOptionsSync, getEnterOptionsSync, getDeviceBenchmarkInfo, getSkylineInfo, getSkylineInfoSync, getRendererUserAgent), utilities (canIUse, base64ToArrayBuffer, arrayBufferToBase64)

### By Gleam Module (public API coverage):
- **wechat/base** - System, routing, payment, clipboard, vibrate, scan, update, background fetch, crypto, router
- **wechat/device** - All device sensors, Bluetooth, NFC, WiFi, Beacon
- **wechat/network** - Request, WebSocket, TCP/UDP, mDNS, VoIP
- **wechat/media** - All image, video, audio, recorder, live streaming APIs
- **wechat/ui** - All UI interaction, feedback, navigation bar, tabbar, animation
- **wechat/wxml** - Node query, intersection observer
- **wechat/canvas** - Canvas context creation
- **wechat/filesystem** - File system manager
- **wechat/map** - Map context and location
- **wechat/app** - App constructor, system info (getAppBaseInfo, getSystemInfo sync/async, getDeviceInfo, getWindowInfo, etc.), utilities (canIUse, base64 conversion)
- **wechat/page** - Page constructor and data management
- **wechat/storage** - Storage operations
- **wechat/cache** - Cache manager
- **wechat/performance** - Performance monitoring
- **wechat/audio** - Audio APIs (inner audio, voice, background audio)
- **wechat/background_audio** - Background audio manager
- **wechat/video** - Video player context
- **wechat/recorder** - Audio recorder manager
- **wechat/open** - Login, user info, calendar, contact, phone, SMS
- **wechat/share** - Share APIs
- **wechat/payment** - Payment APIs
- **wechat/worker** - Web Worker
- **wechat/ad** - Ad components
- **wechat/location** - Location and map
- **wechat/keyboard** - Keyboard operations
- **wechat/screen** - Screen operations
- **wechat/battery** - Battery information
- **wechat/component** - Component utilities
- **wechat/object** - Object utilities
- **wechat/analytics** - Analytics and monitoring
- **wechat/app_event** - App lifecycle events

**Note**: See [MISSING_APIS.md](./MISSING_APIS.md) for details on remaining APIs (~225+ wx functions not yet bound).
