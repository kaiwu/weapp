# Missing WeChat API Bindings - TODO List

**Last Updated**: 2026-01-01

## Coverage Summary

- **Total wx Functions Covered**: 271 functions
- **Total wx Functions in WeChat Docs**: ~600+ functions
- **Coverage**: ~45%

---

## COVERED WX FUNCTIONS (271)

### Base (88 functions)
- **System**: getSystemInfo, getSystemInfoSync, getSystemInfoAsync, getSystemSetting, getDeviceInfo, getDeviceBenchmarkInfo, getWindowInfo, getAppBaseInfo, getSkylineInfo, getSkylineInfoSync, getRendererUserAgent, getAppAuthorizeSetting, openSystemBluetoothSetting, openAppAuthorizeSetting
- **Update**: getUpdateManager, updateWeChatApp
- **Lifecycle**: getLaunchOptionsSync, getEnterOptionsSync, getApiCategory
- **Events**: onAppShow, offAppShow, onAppHide, offAppHide, onError, offError, onUnhandledRejection, offUnhandledRejection, onThemeChange, offThemeChange, onPageNotFound, offPageNotFound, onLazyLoadError, offLazyLoadError
- **Performance**: getPerformance, requestIdleCallback, cancelIdleCallback, reportPerformance
- **Subpackage**: preDownloadSubpackage
- **Crypto**: getUserCryptoManager
- **Background Fetch**: setBackgroundFetchToken, getBackgroundFetchToken, getBackgroundFetchData, onBackgroundFetchData

### Network (41 functions)
- **Request**: request
- **Upload**: uploadFile
- **Download**: downloadFile
- **WebSocket**: connectSocket, closeSocket, sendSocketMessage, onSocketOpen, offSocketOpen, onSocketMessage, offSocketMessage, onSocketError, offSocketError, onSocketClose, offSocketClose
- **TCP**: createTCPSocket
- **UDP**: createUDPSocket
- **mDNS**: startLocalServiceDiscovery, stopLocalServiceDiscovery, onLocalServiceFound, offLocalServiceFound, onLocalServiceLost, offLocalServiceLost, onLocalServiceResolveFail, offLocalServiceResolveFail, onLocalServiceDiscoveryStop, offLocalServiceDiscoveryStop
- **VoIP**: joinVoIPChat, exitVoIPChat, join1v1Chat, setEnable1v1Chat, subscribeVoIPVideoMembers, updateVoIPChatMuteConfig, onVoIPChatStateChanged, offVoIPChatStateChanged, onVoIPChatMembersChanged, offVoIPChatMembersChanged, onVoIPChatSpeakersChanged, offVoIPChatSpeakersChanged, onVoIPChatInterrupted, offVoIPChatInterrupted, onVoIPVideoMembersChanged, offVoIPVideoMembersChanged
- **Network Events**: getNetworkType, getLocalIPAddress, onNetworkStatusChange, offNetworkStatusChange, onNetworkWeakChange, offNetworkWeakChange

### Media (32 functions)
- **Image**: chooseImage, chooseMessageFile, previewImage, previewMedia, getImageInfo, compressImage, cropImage, editImage, saveImageToPhotosAlbum, chooseMedia, checkDeviceSupportHevc
- **Video**: chooseVideo, getVideoInfo, compressVideo, saveVideoToPhotosAlbum, openVideoEditor, createVideoContext
- **Audio**: createInnerAudioContext, createAudioContext, createWebAudioContext, createMediaAudioPlayer, playVoice, pauseVoice, stopVoice, getAvailableAudioSources, setInnerAudioOption
- **Background Audio**: getBackgroundAudioManager
- **Live**: createLivePlayerContext, createLivePusherContext
- **Recorder**: getRecorderManager, startRecord, stopRecord
- **Camera**: createCameraContext
- **Editor**: createEditorContext
- **Video Processing**: createMediaContainer
- **Media Recorder**: createMediaRecorder
- **Video Decoder**: createVideoDecoder

### Device (76 functions)
- **Sensors**: startAccelerometer, stopAccelerometer, onAccelerometerChange, offAccelerometerChange, startCompass, stopCompass, onCompassChange, offCompassChange, startGyroscope, stopGyroscope, onGyroscopeChange, offGyroscopeChange, startDeviceMotionListening, stopDeviceMotionListening, onDeviceMotionChange, offDeviceMotionChange
- **Battery**: getBatteryInfo, onBatteryInfoChange, offBatteryInfoChange
- **Screen**: setScreenBrightness, getScreenBrightness, setKeepScreenOn, onUserCaptureScreen, offUserCaptureScreen, onScreenRecordingStateChanged, offScreenRecordingStateChanged, onGeneratePoster, offGeneratePoster, getScreenRecordingState
- **Keyboard**: hideKeyboard, getSelectedTextRange, onKeyboardHeightChange, offKeyboardHeightChange
- **Memory**: onMemoryWarning, offMemoryWarning
- **Bluetooth General**: openBluetoothAdapter, closeBluetoothAdapter, getBluetoothAdapterState, startBluetoothDevicesDiscovery, stopBluetoothDevicesDiscovery, getBluetoothDevices, getConnectedBluetoothDevices, onBluetoothDeviceFound, offBluetoothDeviceFound, onBluetoothAdapterStateChange, offBluetoothAdapterStateChange
- **Bluetooth BLE**: createBLEConnection, closeBLEConnection, getBLEDeviceServices, getBLEDeviceCharacteristics, readBLECharacteristicValue, writeBLECharacteristicValue, notifyBLECharacteristicValueChange, onBLEConnectionStateChange, offBLEConnectionStateChange, onBLECharacteristicValueChange, offBLECharacteristicValueChange, setBLEMTU, getBLEMTU, onBLEMTUChange, offBLEMTUChange, getBLEDeviceRSSI
- **Bluetooth Peripheral**: createBLEPeripheralServer, onBLEPeripheralConnectionStateChanged, offBLEPeripheralConnectionStateChanged
- **Beacon**: startBeaconDiscovery, stopBeaconDiscovery, getBeacons, onBeaconUpdate, offBeaconUpdate, onBeaconServiceChange, offBeaconServiceChange
- **WiFi**: startWifi, stopWifi, getConnectedWifi, getWifiList, setWifiList, onWifiConnected, offWifiConnected, onGetWifiList, offGetWifiList
- **NFC**: getNFCAdapter
- **Phone**: makePhoneCall, sendSms
- **Scan**: scanCode
- **Calendar**: addPhoneCalendar, addPhoneRepeatCalendar
- **Contact**: chooseContact, addPhoneContact
- **Vibrate**: vibrateShort, vibrateLong
- **Clipboard**: setClipboardData, getClipboardData

### UI (29 functions)
- **Interaction**: showToast, hideToast, showModal, showLoading, hideLoading, showActionSheet, enableAlertBeforeUnload, disableAlertBeforeUnload
- **Navigation Bar**: setNavigationBarTitle, setNavigationBarColor, showNavigationBarLoading, hideNavigationBarLoading, hideHomeButton
- **Background**: setBackgroundColor, setBackgroundTextStyle
- **Tab Bar**: setTabBarItem, setTabBarStyle, setTabBarBadge, removeTabBarBadge, showTabBarRedDot, hideTabBarRedDot, showTabbar, hideTabbar
- **Fonts**: loadFontFace, loadBuiltInFontFace
- **Pull Down Refresh**: startPullDownRefresh, stopPullDownRefresh
- **Animation**: createAnimation
- **Share**: showShareMenu, hideShareMenu, updateShareMenu, getShareInfo, shareAppMessage, onShareAppMessage, offShareAppMessage

### WXML (2 functions)
- createSelectorQuery, createIntersectionObserver

### Canvas (1 function)
- createCanvasContext

### Filesystem (1 function)
- getFileSystemManager

### Map (1 function)
- createMapContext

### Storage (10 functions)
- setStorage, getStorage, removeStorage, clearStorage, getStorageInfo, createBufferURL, revokeBufferURL, batchSetStorage, batchGetStorage

### Share (7 functions)
- showShareMenu, hideShareMenu, updateShareMenu, getShareInfo, shareAppMessage, onShareAppMessage, offShareAppMessage

### Payment (7 functions)
- requestPayment, requestCommonPayment, createGlobalPayment

### Open (15 functions)
- **Login**: login, checkSession
- **User Info**: getUserInfo, getUserProfile
- **Settings**: getSetting, openSetting, authorize
- **Subscribe**: requestSubscribeMessage
- **Address**: chooseAddress
- **Privacy**: getPrivacySetting, getPrivacyContract, onNeedPrivacyAuthorization, openPrivacyContract, requirePrivacyAuthorize
- **Mini Program**: navigateToMiniProgram, navigateBackMiniProgram, exitMiniProgram

### Worker (8 functions)
- createWorker

### Ad (3 functions)
- createInterstitialAd, createRewardedVideoAd, getShowSplashAdStatus

### Location (3 functions)
- getLocation, chooseLocation, openLocation

### Data Analysis (2 functions)
- reportMonitor, reportEvent

---

## MISSING WX FUNCTIONS (~330+)

### Route & Navigation (~12 functions)
- wx.redirectTo
- wx.rewriteRoute
- wx.router
- router.addRouteBuilder, router.getRouteContext, router.removeRouteBuilder
- wx.onBeforePageUnload, wx.onBeforePageLoad, wx.onBeforeAppRoute, wx.onAppRouteDone, wx.onAppRoute, wx.onAfterPageUnload, wx.onAfterPageLoad
- wx.offBeforePageUnload, wx.offBeforePageLoad, wx.offBeforeAppRoute, wx.offAppRouteDone, wx.offAppRoute, wx.offAfterPageUnload, wx.offAfterPageLoad

### EventChannel (~4 functions)
- wx.EventChannel
- EventChannel.emit, EventChannel.off, EventChannel.on, EventChannel.once

### Jump & Navigate (~10 functions)
- wx.restartMiniProgram
- wx.openOfficialAccountProfile, wx.openOfficialAccountChat, wx.openOfficialAccountArticle, wx.openInquiriesTopic
- wx.openEmbeddedMiniProgram
- wx.onEmbeddedMiniProgramHeightChange, wx.offEmbeddedMiniProgramHeightChange

### Share Advanced (~6 functions)
- wx.showShareImageMenu, wx.shareVideoMessage, wx.shareToOfficialAccount, wx.shareFileMessage
- wx.onCopyUrl, wx.offCopyUrl
- wx.authPrivateMessage

### Chat Tool (~9 functions)
- wx.shareVideoToGroup, wx.shareImageToGroup, wx.shareFileToGroup, wx.shareEmojiToGroup, wx.shareAppMessageToGroup
- wx.selectGroupMembers, wx.openChatTool, wx.notifyGroupMembers, wx.getChatToolInfo

### UI Advanced (~20 functions)
- **Scroll**: wx.pageScrollTo, ScrollViewContext methods (6 functions)
- **Custom Component**: wx.nextTick
- **Menu**: wx.onOnUserTriggerTranslation, wx.onMenuButtonBoundingClientRectWeightChange, wx.offOnUserTriggerTranslation, wx.offMenuButtonBoundingClientRectWeightChange, wx.getMenuButtonBoundingClientRect
- **Window**: wx.setWindowSize, wx.onWindowStateChange, wx.onWindowResize, wx.onOnParallelStateChange, wx.offWindowStateChange, wx.offWindowResize, wx.offOnParallelStateChange, wx.checkIsPictureInPictureActive
- **Sticky**: wx.setTopBarText

### Canvas Advanced (~50+ functions)
- **Canvas**: wx.createOffscreenCanvas, wx.canvasToTempFilePath, wx.canvasPutImageData, wx.canvasGetImageData (4 functions)
- **Canvas Methods**: cancelAnimationFrame, createImage, createImageData, createPath2D, getContext, requestAnimationFrame, toDataURL (7 functions)
- **CanvasContext**: arc, arcTo, beginPath, bezierCurveTo, clearRect, clip, closePath, createCircularGradient, createLinearGradient, createPattern, draw, drawImage, fill, fillRect, fillText, lineTo, measureText, moveTo, quadraticCurveTo, rect, restore, rotate, save, scale, setFillStyle, setFontSize, setGlobalAlpha, setLineCap, setLineDash, setLineJoin, setLineWidth, setMiterLimit, setShadow, setStrokeStyle, setTextAlign, setTextBaseline, setTransform, stroke, strokeRect, strokeText, transform, translate (40+ functions)
- **CanvasGradient**: addColorStop (1 function)
- **OffscreenCanvas**: createImage, getContext (2 functions)
- **Path2D**: addPath, arc, arcTo, bezierCurveTo, closePath, ellipse, lineTo, moveTo, quadraticCurveTo, rect (10+ functions)

### Map Advanced (~28 functions)
- MapContext: addArc, addCustomLayer, addGroundOverlay, addMarkers, addVisualLayer, eraseLines, executeVisualLayerCommand, fromScreenLocation, getCenterLocation, getRegion, getRotate, getScale, getSkew, includePoints, initMarkerCluster, moveAlong, moveToLocation, on, openMapApp, removeArc, removeCustomLayer, removeGroundOverlay, removeMarkers, removeVisualLayer, setBoundary, setCenterOffset, setLocMarkerIcon, toScreenLocation, translateMarker, updateGroundOverlay

### Media Context Methods (~150+ functions)
- **VideoContext**: exitBackgroundPlayback, exitCasting, exitFullScreen, exitPictureInPicture, hideStatusBar, pause, play, playbackRate, reconnectCasting, requestBackgroundPlayback, requestFullScreen, seek, sendDanmu, showStatusBar, startCasting, stop, switchCasting (15 functions)
- **InnerAudioContext**: destroy, on/off for Canplay, Ended, Error, Pause, Play, Seeked, Seeking, Stop, TimeUpdate, Waiting, plus play/pause/seek/stop (20+ functions)
- **AudioContext**: pause, play, seek, setSrc (4 functions)
- **BufferSourceNode**: connect, disconnect, start, stop (4 functions)
- **MediaAudioPlayer**: addAudioSource, destroy, removeAudioSource, start, stop (5 functions)
- **WebAudioContext**: close, createAnalyser, createBiquadFilter, createBuffer, createBufferSource, createChannelMerger, createChannelSplitter, createConstantSource, createDelay, createDynamicsCompressor, createGain, createIIRFilter, createOscillator, createPanner, createPeriodicWave, createScriptProcessor, createWaveShaper, decodeAudioData, resume, suspend (20+ functions)
- **BackgroundAudioManager**: on/off for Canplay, Ended, Error, Next, Pause, Play, Prev, Seeked, Seeking, Stop, TimeUpdate, Waiting, plus play/pause/seek/stop (20+ functions)
- **LivePlayerContext**: exitBackgroundPlayback, exitCasting, exitFullScreen, exitPictureInPicture, mute, pause, play, reconnectCasting, requestBackgroundPlayback, requestFullScreen, resume, snapshot, startCasting, stop, switchCasting (14 functions)
- **LivePusherContext**: 35+ methods (BGM, camera, filters, makeup, stickers, preview, zoom, torch, etc.)
- **RecorderManager**: on/off for Error, FrameRecorded, InterruptionBegin, InterruptionEnd, Pause, Resume, Start, Stop, plus pause/resume/start/stop (11 functions)
- **CameraContext**: onCameraFrame, setZoom, startRecord, stopRecord, takePhoto (5 functions)
- **EditorContext**: blur, clear, deleteText, format, getBounds, getContents, getHistoryState, getSelection, getSelectionText, insertCustomBlock, insertDivider, insertImage, insertText, redo, removeFormat, scrollIntoView, setContents, setSelection, undo (20+ functions)
- **MediaContainer**: addTrack, destroy, export, extractDataSource, removeTrack (5 functions)
- **MediaRecorder**: destroy, off, on, pause, requestFrame, resume, start, stop (7 functions)
- **VideoDecoder**: getFrameData, off, on, remove, seek, start, stop (6 functions)

### Location Advanced (~7 functions)
- wx.stopLocationUpdate, wx.startLocationUpdateBackground, wx.startLocationUpdate
- wx.onLocationChangeError, wx.onLocationChange
- wx.offLocationChangeError, wx.offLocationChange
- wx.getFuzzyLocation, wx.choosePoi

### Storage Sync (~4 functions)
- wx.setStorageSync, wx.getStorageSync, wx.removeStorageSync, wx.clearStorageSync

### Storage Advanced (~11 functions)
- CacheManager: addRule, addRules, clearCaches, clearRules, deleteCache, deleteCaches, deleteRule, deleteRules, match, off, on, start, stop

### Payment Advanced (~6 functions)
- wx.requestVirtualPayment, wx.requestPluginPayment, wx.requestMerchantTransfer, wx.openHKOfflinePayView
- GlobalPayment: abort, openMethodPicker, requestGlobalPayment

### Data Analysis Advanced (~3 functions)
- wx.reportAnalytics, wx.getExptInfoSync, wx.getCommonConfig

### File Advanced (~5 functions)
- wx.saveFileToDisk
- FileSystemManager: access, accessSync, appendFile, appendFileSync, close, closeSync, copyFile, copyFileSync, fstat, fstatSync, ftruncate, ftruncateSync, getFileInfo, getSavedFileList, mkdir, mkdirSync, open, openSync, read, readCompressedFile, readCompressedFileSync, readdir, readdirSync, readFile, readFileSync, readSync, readZipEntry, removeSavedFile, rename, renameSync, rmdir, rmdirSync, saveFile, saveFileSync, stat, statSync, truncate, truncateSync, unlink, unlinkSync, unzip, write, writeFile, writeFileSync, writeSync (50+ methods)

### Open Advanced (~40+ functions)
- **Account**: wx.getAccountInfoSync
- **Authorize**: wx.authorizeForMiniProgram
- **Card**: wx.openCard, wx.addCard
- **Invoice**: wx.chooseInvoiceTitle, wx.chooseInvoice
- **Soter**: wx.startSoterAuthentication, wx.checkIsSupportSoterAuthentication, wx.checkIsSoterEnrolledInDevice
- **WeRun**: wx.shareToWeRun, wx.getWeRunData
- **Subscribe Device**: wx.requestSubscribeDeviceMessage
- **Red Package**: wx.showRedPackage
- **Store**: wx.openStoreOrderDetail, wx.openStoreCouponDetail
- **Favorites**: wx.addVideoToFavorites, wx.addFileToFavorites
- **Employee Relation**: wx.requestSubscribeEmployeeMessage, wx.checkEmployeeRelation, wx.bindEmployeeRelation
- **My Mini Program**: wx.checkIsAddedToMyMiniProgram
- **License Plate**: wx.chooseLicensePlate
- **Channels**: wx.reserveChannelsLive, wx.openChannelsUserProfile, wx.openChannelsLiveNoticeInfo, wx.openChannelsLive, wx.openChannelsEvent, wx.openChannelsActivity, wx.getChannelsShareKey, wx.getChannelsLiveNoticeInfo, wx.getChannelsLiveInfo (9 functions)
- **Device VoIP**: wx.requestDeviceVoIP, wx.getDeviceVoIPList
- **Group**: wx.getGroupEnterInfo
- **Customer Service**: wx.openCustomerServiceChat
- **Sticker**: wx.openStickerSetView, wx.openStickerIPView, wx.openSingleStickerView

### Device Advanced (~30+ functions)
- **Bluetooth**: wx.makeBluetoothPair, wx.isBluetoothDevicePaired
- **NFC Detailed**: NFCAdapter methods (getIsoDep, getMifareClassic, getMifareUltralight, getNdef, getNfcA, getNfcB, getNfcF, getNfcV, onDiscovered, offDiscovered, startDiscovery, stopDiscovery), IsoDep/MifareClassic/MifareUltralight/Ndef/NfcA/NfcB/NfcF/NfcV types with multiple methods each (60+ functions)
- **NFC HCE**: wx.stopHCE, wx.startHCE, wx.sendHCEMessage, wx.onHCEMessage, wx.offHCEMessage, wx.getHCEState (6 functions)
- **WiFi**: wx.onWifiConnectedWithPartialInfo, wx.offWifiConnectedWithPartialInfo, wx.connectWifi
- **Accessibility**: wx.checkIsOpenAccessibility
- **Battery Sync**: wx.getBatteryInfoSync
- **Keyboard Events**: wx.onKeyUp, wx.onKeyDown, wx.offKeyUp, wx.offKeyDown
- **Screen**: wx.setVisualEffectOnCapture

### Debug (~20+ functions)
- **Console**: console.debug, console.error, console.group, console.groupEnd, console.info, console.log, console.warn (7 functions)
- **LogManager**: LogManager.debug, info, log, warn (4 functions)
- **RealtimeLogManager**: addFilterMsg, error, getCurrentState, in, info, setFilterMsg, tag, warn (8 functions)
- **RealtimeTagLogManager**: addFilterMsg, error, info, setFilterMsg, warn (5 functions)
- wx.setEnableDebug, wx.getRealtimeLogManager, wx.getLogManager

### Base Utility (~5 functions)
- wx.env, wx.canIUse, wx.base64ToArrayBuffer, wx.arrayBufferToBase64

### WXML Advanced (~12 functions)
- **MediaQueryObserver**: wx.createMediaQueryObserver, MediaQueryObserver.disconnect, MediaQueryObserver.observe (3 functions)
- **NodesRef**: boundingClientRect, context, fields, node, ref, scrollOffset (6 functions)
- **SelectorQuery**: exec, in, select, selectAll, selectViewport (5 functions)

### Third Party (~2 functions)
- wx.getExtConfigSync, wx.getExtConfig

### AI & Vision (~60+ functions)
- **AI Inference**: wx.getInferenceEnvInfo, wx.createInferenceSession, InferenceSession methods (destroy, onError, offError, onLoad, offLoad, run) (7 functions)
- **VisionKit**: wx.isVKSupport, wx.createVKSession, VKSession methods (25+), VKCamera, VKFrame methods, multiple anchor types (50+ functions)
- **Face Detection**: wx.initFaceDetect, wx.faceDetect, wx.stopFaceDetect (3 functions)

### Skyline & XR (~70+ functions)
- DraggableSheetContext: scrollTo (1 function)
- Snapshot: takeSnapshot (1 function)
- XR-FRAME: 60+ classes, interfaces, enumerations, variables, functions

### Worklet Animation (~12 functions)
- wx.worklet, worklet.cancelAnimation, worklet.derived, worklet.scrollViewContext, worklet.shared, worklet.decay, worklet.Easing, worklet.spring, worklet.timing, worklet.delay, worklet.repeat, worklet.sequence, worklet.runOnJS, worklet.runOnUI

---

## IMPLEMENTATION PRIORITY

### High Priority (Commonly Used APIs):
1. Storage sync methods (4 functions)
2. EventChannel (4 functions)
3. Route events (16 functions)
4. Canvas Context drawing methods (40+ functions)
5. Map Context methods (28 functions)
6. Media Context methods (150+ functions)
7. FileSystemManager methods (50+ functions)
8. Location update events (7 functions)

### Medium Priority (Specialized APIs):
1. NFC detailed APIs (60+ functions)
2. WiFi connection (3 functions)
3. Keyboard events (4 functions)
4. UI advanced (20 functions)
5. Open APIs (40+ functions)
6. Debug APIs (20+ functions)

### Low Priority (Experimental/Specialized):
1. AI & Vision (60+ functions)
2. Skyline & XR-FRAME (70+ functions)
3. Worklet Animation (12 functions)
4. Chat Tools (9 functions)

**Total Missing**: ~330+ functions
