# Missing WeChat API Bindings - TODO List

**Last Updated**: 2026-01-02

## Coverage Summary

- **Total wx Functions Covered**: 375 functions
- **Total wx Functions in WeChat Docs**: ~600+ functions
- **Coverage**: ~62%

## MISSING WX FUNCTIONS (~225+)

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

### Media Context Methods (~130+ functions)
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

### Storage Advanced (~13 functions)
- CacheManager: addRule, addRules, clearCaches, clearRules, deleteCache, deleteCaches, deleteRule, deleteRules, match, off, on, start, stop

### Payment Advanced (~6 functions)
- wx.requestVirtualPayment, wx.requestPluginPayment, wx.requestMerchantTransfer, wx.openHKOfflinePayView
- GlobalPayment: abort, openMethodPicker, requestGlobalPayment

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
- **NFC Detailed**: NFCAdapter methods (getIsoDep, getMifareClassic, getMifareUltralight, getNdef, getNfcA, getNfcB, getNfcF, getNfcV, onDiscovered, offDiscovered, startDiscovery, stopDiscovery), IsoDep/MifareClassic/MifareUltralight/Ndef/NfcA/NfcB/NfcF/NfcV types with multiple methods each (60+ functions)
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

**Total Missing**: ~225+ wx functions (instance methods not counted separately)

---

## Notes

Many of the "missing" APIs are instance methods on objects returned by covered wx functions. For example:
- `wx.createMapContext` is covered, but MapContext instance methods need to be bound
- `wx.getFileSystemManager` is covered, but FileSystemManager instance methods need to be bound
- `wx.createVideoContext` is covered, but VideoContext instance methods need to be bound

The priority should be on binding the remaining top-level wx.* functions and the most commonly used instance methods.

## Recently Implemented (2026-01-02)

### Phase 17: Base/System (3 functions)
- wx.updateWeChatApp, wx.getApiCategory, wx.env.USER_DATA_PATH

### Phase 18: Canvas Advanced (~25 functions)
- CanvasContext: createLinearGradient, createCircularGradient, setStrokeStyle, setGlobalAlpha, setFontSize, setTextAlign, setTextBaseline, closePath, fill, stroke, clip, rect, setTransform
- CanvasGradient: addColorStop
- Canvas: toDataURL, getContext
- OffscreenCanvas: createImage
- Path2D: addPath, closePath, moveTo, lineTo, arc, rect, bezierCurveTo, quadraticCurveTo

### Phase 19: WXML Advanced (3 functions)
- wx.createMediaQueryObserver, MediaQueryObserver.disconnect, MediaQueryObserver.observe

### Phase 20: Location Advanced (9 functions)
- wx.startLocationUpdate, wx.startLocationUpdateBackground, wx.stopLocationUpdate
- wx.onLocationChange, wx.offLocationChange, wx.onLocationChangeError, wx.offLocationChangeError
- wx.getFuzzyLocation, wx.choosePoi

### Phase 21: File Advanced (5 functions)
- FileSystemManager: truncate, truncateSync, readZipEntry
- Stats: isDirectory, isFile
