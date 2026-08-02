# Missing WeChat API Bindings - TODO List

**Last Updated**: 2026-08-03

## Coverage Summary

- **Total wx Functions Covered**: 500+ functions
- **Total wx Functions in WeChat Docs**: ~600+ functions
- **Coverage**: ~83%

## MISSING WX FUNCTIONS (~100+)

### EventChannel (~5 functions)
- wx.EventChannel
- EventChannel.emit, EventChannel.off, EventChannel.on, EventChannel.once

### Jump & Navigate (~8 functions)
- wx.restartMiniProgram
- wx.openOfficialAccountProfile, wx.openOfficialAccountChat, wx.openOfficialAccountArticle, wx.openInquiriesTopic
- wx.openEmbeddedMiniProgram
- wx.onEmbeddedMiniProgramHeightChange, wx.offEmbeddedMiniProgramHeightChange

### Route & Navigation Hooks (~14 functions)
- wx.onBeforePageUnload, wx.onBeforePageLoad, wx.onBeforeAppRoute, wx.onAppRouteDone, wx.onAppRoute, wx.onAfterPageUnload, wx.onAfterPageLoad
- wx.offBeforePageUnload, wx.offBeforePageLoad, wx.offBeforeAppRoute, wx.offAppRouteDone, wx.offAppRoute, wx.offAfterPageUnload, wx.offAfterPageLoad

### Chat Tool (~9 functions)
- wx.shareVideoToGroup, wx.shareImageToGroup, wx.shareFileToGroup, wx.shareEmojiToGroup, wx.shareAppMessageToGroup
- wx.selectGroupMembers, wx.openChatTool, wx.notifyGroupMembers, wx.getChatToolInfo

### Map Advanced (~28 functions)
- MapContext: addArc, addCustomLayer, addGroundOverlay, addMarkers, addVisualLayer, eraseLines, executeVisualLayerCommand, fromScreenLocation, getCenterLocation, getRegion, getRotate, getScale, getSkew, includePoints, initMarkerCluster, moveAlong, moveToLocation, on, openMapApp, removeArc, removeCustomLayer, removeGroundOverlay, removeMarkers, removeVisualLayer, setBoundary, setCenterOffset, setLocMarkerIcon, toScreenLocation, translateMarker, updateGroundOverlay

### Media Context Methods (~15 functions)
- **BufferSourceNode**: connect, disconnect, start, stop (4 functions)
- **EditorContext** (missing methods only): deleteText, getBounds, getHistoryState, getSelection, insertCustomBlock, insertDivider, insertImage, redo, removeFormat, setSelection, undo (11 functions)

### Payment Advanced (~4 functions)
- wx.requestVirtualPayment, wx.requestPluginPayment, wx.requestMerchantTransfer, wx.openHKOfflinePayView

### Data Analysis Advanced (~1 function)
- wx.getCommonConfig

### Open Advanced (~35+ functions)
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

### Device Advanced (~60+ functions)
- **NFC Detailed**: NFCAdapter methods (getIsoDep, getMifareClassic, getMifareUltralight, getNdef, getNfcA, getNfcB, getNfcF, getNfcV), IsoDep/MifareClassic/MifareUltralight/Ndef/NfcA/NfcB/NfcF/NfcV types with multiple methods each (60+ functions)
- **NFC HCE**: wx.stopHCE, wx.startHCE, wx.sendHCEMessage, wx.onHCEMessage, wx.offHCEMessage, wx.getHCEState (6 functions)

### Debug (~20+ functions)
- **Console**: console.debug, console.error, console.group, console.groupEnd, console.info, console.log, console.warn (7 functions)
- **LogManager**: LogManager.debug, info, log, warn (4 functions)
- **RealtimeLogManager**: addFilterMsg, error, getCurrentState, in, info, setFilterMsg, tag, warn (8 functions)
- **RealtimeTagLogManager**: addFilterMsg, error, info, setFilterMsg, warn (5 functions)
- wx.setEnableDebug, wx.getRealtimeLogManager, wx.getLogManager

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

**Total Missing**: ~100+ wx functions (instance methods not counted separately)

---

## Notes

Many of the "missing" APIs are instance methods on objects returned by covered wx functions. For example:
- `wx.createMapContext` is covered, but MapContext instance methods need to be bound

The priority should be on binding the remaining top-level wx.* functions and the most commonly used instance methods.

## Already Implemented (verified in FFI files)

### Network task starters and file sharing
- Task-returning variants for `wx.request`, `wx.downloadFile`, and `wx.uploadFile`
- `wx.shareFileMessage` with `fileName`
- URI component encoding and additive safe decoding helpers

The following were previously listed as missing but are now confirmed implemented:

### CacheManager (13 functions) - wechat_cache_ffi.mjs
- createCacheManager, addRule, addRules, clearCaches, clearRules, deleteCache, deleteCaches, deleteRule, deleteRules, match, off, on, start, stop

### GlobalPayment (3 functions) - wechat_base_ffi.mjs
- createGlobalPayment, globalPaymentAbort, globalPaymentOpenMethodPicker, globalPaymentRequestGlobalPayment

### EditorContext (11 functions) - wechat_wxml_ffi.mjs
- setContents, getContents, clear, blur, focus, format, insertText, getSelectionText, scrollIntoView, status, ready

### VideoContext (15 functions) - wechat_media_ffi.mjs
- play, pause, stop, seek, sendDanmu, playbackRate, requestFullScreen, exitFullScreen, showStatusBar, hideStatusBar, exitPictureInPicture, requestBackgroundPlayback, exitBackgroundPlayback, startCasting, switchCasting, exitCasting, reconnectCasting

### InnerAudioContext (25+ functions) - wechat_media_ffi.mjs
- setSrc, setStartTime, setAutoplay, setLoop, setObeyMuteSwitch, setVolume, setPlaybackRate, getDuration, getCurrentTime, getPaused, getBuffered, play, pause, stop, seek, destroy
- onCanplay, onPlay, onPause, onStop, onEnded, onError, onTimeUpdate, onWaiting, onSeeking, onSeeked
- offCanplay, offPlay, offPause, offStop, offEnded, offError, offTimeUpdate, offWaiting, offSeeking, offSeeked

### BackgroundAudioManager (24+ functions) - wechat_media_ffi.mjs
- setSrc, setStartTime, setTitle, setEpname, setSinger, setCoverImgUrl, setWebUrl, setProtocol, getDuration, getCurrentTime, getPaused, getBuffered
- play, pause, stop, seek
- onCanplay, onPlay, onPause, onStop, onEnded, onError, onNext, onPrev, onSeeked, onSeeking, onTimeUpdate, onWaiting
- offCanplay, offPlay, offPause, offStop, offEnded, offError, offNext, offPrev, offSeeked, offSeeking, offTimeUpdate, offWaiting

### Location Advanced (9 functions) - wechat_base_ffi.mjs
- startLocationUpdate, startLocationUpdateBackground, stopLocationUpdate
- onLocationChange, offLocationChange, onLocationChangeError, offLocationChangeError
- getFuzzyLocation, choosePoi

### Canvas Advanced (25+ functions) - wechat_canvas_ffi.mjs
- createLinearGradient, createCircularGradient, setStrokeStyle, setGlobalAlpha, setFontSize, setTextAlign, setTextBaseline, closePath, fill, stroke, clip, rect, setTransform
- canvasGradientAddColorStop, canvasToDataURL, canvasGetContext, offscreenCanvasCreateImage
- path2dAddPath, path2dClosePath, path2dMoveTo, path2dLineTo, path2dArc, path2dRect, path2dBezierCurveTo, path2dQuadraticCurveTo

### WXML Advanced (3 functions) - wechat_wxml_ffi.mjs
- createMediaQueryObserver, mediaQueryObserverDisconnect, mediaQueryObserverObserve

### File Advanced (5 functions) - wechat_filesystem_ffi.mjs
- truncate, truncateSync, readZipEntry, statsIsDirectory, statsIsFile

### Base/System (3 functions) - wechat_base_ffi.mjs
- updateWeChatApp, getApiCategory, getEnvUserDataPath

### NFCAdapter (4 functions) - wechat_device_ffi.mjs
- startDiscovery, stopDiscovery, onDiscovered, offDiscovered
