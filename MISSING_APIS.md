# Missing WeChat API Bindings - TODO List

**Last Updated**: 2026-01-01

## Coverage Summary

- **Total WeChat API Functions**: ~1000+ functions
- **Implemented Functions**: 700+ functions (70%+ coverage)
- **Remaining Functions**: ~300+ functions (30% remaining)

---

## IMPLEMENTED PHASES ✓

### Phase 1: HIGH Priority APIs (64 functions)
- ✓ Socket APIs (TCP/UDP) - 23 functions
- ✓ mDNS Service Discovery - 10 functions
- ✓ VoIP Real-time Voice - 16 functions
- ✓ MediaContainer (音视频合成) - 7 functions
- ✓ VideoDecoder (视频解码器) - 8 functions

### Phase 2: MEDIUM Priority APIs (96 functions)
- ✓ Voice (旧音频API) - 12 functions
- ✓ Beacon (蓝牙信标) - 8 functions
- ✓ BLE Peripheral Server - 17 functions
- ✗ NFC Tag Technologies (详细) - SKIPPED (~60+ functions - very large)
- ✓ Extended LivePlayer/Pusher - 36 functions
- ✓ Extended VideoContext - 6 functions
- ✓ MediaAudioPlayer - 6 functions

### Phase 3: LOW Priority Utilities APIs (39 functions)
- ✓ System Memory - 2 functions
- ✓ Calendar & Contact - 4 functions
- ✓ Clipboard - Already implemented (not added)
- ✓ Phone & SMS - 2 functions
- ✓ Scan Code - Already implemented (not added)
- ✓ Vibrate - Already implemented (not added)
- ✓ Encryption (Random) - 1 function
- ✓ Advanced Storage (Batch) - 6 functions
- ✓ Video Editing - 10 functions
- ✓ IntersectionObserver - 7 functions

### Phase 4: VERY LOW Priority Advanced APIs (32 functions)
- ✓ Ad Components - 15 functions
- ✓ Advanced Network - 4 functions
- ✓ Background Fetch - 4 functions
- ✓ Subpackage Pre-download - 2 functions
- ✓ User Crypto Manager - 3 functions
- ✓ Custom Router - 4 functions

---

## REMAINING MISSING APIs

### Phase 5: AI & Vision Features (VERY LOW Priority)

#### 5.1 AI Inference (8 functions)
**File**: `src/wechat/ai.gleam` (new file?)
**Priority**: Very Low
**Estimated**: ~8 functions
**Missing Functions**:
- `wx.getInferenceEnvInfo` - Get inference environment info
- `wx.createInferenceSession` - Create inference session
- InferenceSession: `destroy`, `offError`, `offLoad`, `onError`, `onLoad`, `run`
- Types: Tensor, Tensors
**FFI File**: `src/wechat_ai_ffi.mjs` (new file)

#### 5.2 Vision Kit (VK) - XR/AR Features (~50+ functions)
**File**: `src/wechat/vision.gleam` (new file?)
**Priority**: Very Low
**Estimated**: ~50+ functions
**Missing Functions**:
- `wx.isVKSupport` - Check VK support
- `wx.createVKSession` - Create VK session
- VKSession methods (25+): `addMarker`, `addOSDMarker`, `cancelAnimationFrame`, `destroy`, `detectBody`, `detectDepth`, `detectFace`, `detectHand`, `getAllMarker`, `getAllOSDMarker`, `getVKFrame`, `hitTest`, `off`, `on`, `removeMarker`, `removeOSDMarker`, `requestAnimationFrame`, `runOCR`, `setDepthOccRange`, `start`, `stop`, `update3DMode`, `updateMaskMode`, `updateOSDThreshold`
- VKCamera: `getProjectionMatrix`
- VKFrame methods: `getCameraBuffer`, `getCameraJpgBuffer`, `getCameraTexture`, `getDepthBuffer`, `getDisplayTransform`, `getLegSegmentBuffer`
- VKAnchor types (6): VKBodyAnchor, VKDepthAnchor, VKFaceAnchor, VKHandAnchor, VKMarkerAnchor, VKOCRAnchor, VKOSDAnchor, VKPlaneAnchor
**FFI File**: `src/wechat_vision_ffi.mjs` (new file)

#### 5.3 Face Detection (~3 functions)
**File**: `src/wechat/vision.gleam`
**Priority**: Very Low
**Estimated**: ~3 functions
**Missing Functions**:
- `wx.stopFaceDetect` - Stop face detection
- `wx.initFaceDetect` - Initialize face detection
- `wx.faceDetect` - Face detection
**FFI File**: `src/wechat_vision_ffi.mjs`

---

### Phase 6: Advanced Rendering (VERY LOW Priority)

#### 6.1 Skyline Rendering Engine (~50+ functions)
**File**: `src/wechat/skyline.gleam` (new file?)
**Priority**: Very Low
**Estimated**: ~50+ functions
**Missing Functions**:
- DraggableSheetContext: `scrollTo`
- OpenContainer, Snapshot: `takeSnapshot`
- All XR-FRAME classes and interfaces (100+)
- Skyline-specific rendering and component APIs
**FFI File**: `src/wechat_skyline_ffi.mjs` (new file)

#### 6.2 Worklet Animation (~15 functions)
**File**: `src/wechat/ui.gleam` or `src/wechat/worklet.gleam` (new file?)
**Priority**: Very Low
**Estimated**: ~15 functions
**Missing Functions**:
- `wx.worklet` - Get worklet object
- worklet methods: `cancelAnimation`, `derived`, `scrollViewContext`, `shared`
- Animation curves: `decay`, `Easing`, `spring`, `timing`
- Sequence/combine: `delay`, `repeat`, `sequence`
- Threading: `runOnJS`, `runOnUI`
**FFI File**: `src/wechat_ui_ffi.mjs` or `src/wechat_worklet_ffi.mjs` (new file)

---

### Phase 7: Specialized APIs (LOW Priority)

#### 7.1 Background Audio - Old API (~8 functions)
**File**: `src/wechat/media.gleam`
**Priority**: Low
**Estimated**: ~8 functions
**Missing Functions**:
- `wx.stopBackgroundAudio` - Stop background audio
- `wx.seekBackgroundAudio` - Seek background audio
- `wx.playBackgroundAudio` - Play background audio
- `wx.pauseBackgroundAudio` - Pause background audio
- `wx.onBackgroundAudioStop` - Stop event
- `wx.onBackgroundAudioPlay` - Play event
- `wx.onBackgroundAudioPause` - Pause event
- `wx.getBackgroundAudioPlayerState` - Get state
**Note**: New BackgroundAudioManager API is already implemented
**FFI File**: `src/wechat_media_ffi.mjs`

#### 7.2 EventChannel (~4 functions)
**File**: `src/wechat/open.gleam`
**Priority**: Low
**Estimated**: ~4 functions
**Missing Functions**:
- EventChannel type
- EventChannel methods: `emit`, `off`, `on`, `once`
**FFI File**: `src/wechat_base_ffi.mjs`

#### 7.3 Camera Extended (Verify completeness)
**File**: `src/wechat/media.gleam`
**Priority**: Low
**Estimated**: ~5 functions (maybe already done)
**Missing Functions**:
- Verify all CameraContext methods are complete
- Check for missing: frame rate, resolution, flash, focus modes
**FFI File**: `src/wechat_media_ffi.mjs`

#### 7.4 Advanced Event Observers (~5 functions)
**File**: `src/wechat/wxml.gleam`
**Priority**: Low
**Estimated**: ~5 functions
**Missing Functions**:
- MediaQueryObserver type
- `wx.createMediaQueryObserver` - Create media query observer
- MediaQueryObserver methods: `disconnect`, `observe`
**FFI File**: `src/wechat_wxml_ffi.mjs`

---

### Phase 8: NFC Tag Technologies Detailed (~60+ functions)
**File**: `src/wechat/device.gleam`
**Priority**: Medium (was skipped in Phase 2)
**Estimated**: ~60+ functions
**Missing Functions**:
- NFCAdapter advanced getters: `getIsoDep`, `getMifareClassic`, `getMifareUltralight`, `getNdef`, `getNfcA`, `getNfcB`, `getNfcF`, `getNfcV`
- IsoDep type (7+ methods): `close`, `connect`, `getMaxTransceiveLength`, `isConnected`, `setTimeout`, `transceive`
- MifareClassic type (10+ methods): sector/block operations, authentication
- MifareUltralight type (7+ methods): page operations, read/write
- Ndef type (10+ methods): read/write NDEF records
- NfcA, NfcB, NfcF, NfcV types (each 5-10 methods): specific protocol operations
**FFI File**: `src/wechat_device_ffi.mjs`

---

## SUMMARY OF REMAINING WORK

### By Category:

1. **AI & Vision**: ~60 functions
   - AI Inference: 8
   - Vision Kit (VK): 50+
   - Face Detection: 3

2. **Advanced Rendering**: ~65 functions
   - Skyline: 50+
   - Worklet Animation: 15

3. **Specialized APIs**: ~25 functions
   - Background Audio (Old API): 8
   - EventChannel: 4
   - Camera Extended: 5
   - MediaQueryObserver: 5

4. **NFC Tag Technologies**: ~60 functions
   - Detailed NFC protocols: 60+

### Total Remaining: ~210 functions

---

## IMPLEMENTATION PRIORITY

### Immediate (if needed):
- None - all critical APIs are implemented

### Low Priority (when time permits):
1. NFC Tag Technologies (~60 functions) - Most useful among remaining
2. EventChannel (4 functions) - Simple to implement
3. Background Audio Old API (8 functions) - Compatibility
4. MediaQueryObserver (5 functions) - Simple utility
5. Camera Extended verification (5 functions)

### Very Low Priority (experimental/specialized):
1. AI Inference (8 functions) - Experimental ML features
2. Worklet Animation (15 functions) - Advanced animations
3. Vision Kit (50+ functions) - XR/AR features
4. Skyline (50+ functions) - New rendering engine
5. Face Detection (3 functions) - Experimental CV features

---

## Notes

### Already Implemented (Double Check):
✓ Storage APIs (set/get/remove/clear storage)
✓ Clipboard (set/get clipboard data)
✓ Scan Code
✓ Vibrate (short/long)
✓ FileSystem (43+ functions)
✓ All Base APIs (routing, payment, login, etc.)
✓ All Network APIs (request, upload, download, websocket)
✓ All Media APIs (image, video, audio, recorder, live streaming)
✓ All Device APIs (sensors, battery, bluetooth, wifi, nfc basic)
✓ All UI APIs (toast, modal, loading, navigation, tabbar)
✓ All WXML APIs (selector query, component contexts)
✓ All Worker APIs
✓ All Analytics APIs
✓ All Page/App lifecycle APIs
✓ Ad Components

### Recommendations:
1. NFC Tag Technologies is the most practical remaining API
2. AI/Vision and Skyline are very experimental and not widely used
3. Most common WeChat APIs (90%+) are already covered
4. Focus on user-requested features rather than implementing everything
