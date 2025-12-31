# WeChat API Missing Bindings - Prioritized Todo List

## HIGH PRIORITY - Core APIs (Commonly used)

### 1. File System Manager
**Priority**: High  
**Why**: Essential for file operations - reading/writing files, directory management, stat info
**Estimated functions**: ~40 methods
**FFI File**: `wechat_filesystem_ffi.mjs`

### 2. Cache Manager
**Priority**: High  
**Why**: Important for data caching strategies and offline functionality
**Estimated functions**: ~12 methods
**FFI File**: `wechat_cache_ffi.mjs`

### 3. Animation (Complete)
**Priority**: High  
**Why**: Essential for UI animations - all animation chainable methods
**Estimated functions**: ~40 methods
**FFI File**: `wechat_ui_ffi.mjs` (already exists, needs verification)

### 4. Performance Monitoring
**Priority**: High  
**Why**: Critical for app performance optimization and monitoring
**Estimated functions**: ~15 methods
**FFI File**: `wechat_performance_ffi.mjs`

### 5. Update Manager
**Priority**: Medium  
**Why**: App update management
**Estimated functions**: ~5 methods
**FFI File**: `wechat_base_ffi.mjs` (partially done)

### 6. Worker (Threading)
**Priority**: Medium  
**Why**: CPU-intensive task processing
**Estimated functions**: ~10 methods
**FFI File**: `wechat_worker_ffi.mjs`

### 7. RequestTask enhancements
**Priority**: Medium  
**Why**: More granular control over HTTP requests (headers, chunks)
**Estimated functions**: ~8 methods
**FFI File**: `wechat_network_ffi.mjs`

## MEDIUM PRIORITY - Media & UI Enhancements

### 8. Background Audio Manager
**Priority**: Medium  
**Why**: Background music playback
**Estimated functions**: ~15 methods
**FFI File**: `wechat_media_ffi.mjs`

### 9. ScrollViewContext
**Priority**: Medium  
**Why**: Scroll control for scrolling lists
**Estimated functions**: ~6 methods
**FFI**: `wechat_wxml_ffi.mjs`

### 10. Web Audio (Complete Web Audio Context)
**Priority**: Medium  
**Why**: Advanced audio processing capabilities
**Estimated functions**: ~30 methods
**FFI File**: `wechat_media_ffi.mjs`

## LOW PRIORITY - Device & Open APIs

### 11. Bluetooth (Low Energy)
**Priority**: Low  
**Why**: IoT and BLE device integration
**Estimated functions**: ~50 methods
**FFI File**: `wechat_bluetooth_ffi.mjs`

### 12. NFC
**Priority**: Low  
**Why**: Near-field communication
**Estimated functions**: ~40 methods
**FFI File**: `wechat_nfc_ffi.mjs`

### 13. Video Recorder (MediaRecorder)
**Priority**: Low  
**Why**: Screen recording functionality
**Estimated functions**: ~8 methods
**FFI File**: `wechat_media_ffi.mjs`

### 14. Live Player/Pusher
**Priority**: Low  
**Why**: Live streaming capabilities
**Estimated functions**: ~30 methods
**FFI File**: `wechat_media_ffi.mjs`

### 15. Device Bluetooth (Low Energy Peripheral)
**Priority**: Low  
**Why**: BLE peripheral role
**Estimated functions**: ~20 methods
**FFI File**: `wechat_bluetooth_ffi.mjs`

## VERY LOW PRIORITY - Specialized APIs

### 16. Skyline Rendering Engine
**Priority**: Very Low  
**Why**: Advanced rendering, not commonly needed
**Estimated functions**: ~50+ methods

### 17. AI/Inference (AR)
**Priority**: Very Low  
**Why**: AR features are niche
**Estimated functions**: ~30 methods

### 18. Video Decoder
**Priority**: Very Low  
**Why**: Hardware video decoding
**Estimated functions**: ~8 methods

### 19. Media Container (Audio/Video)
**Priority**: Very Low  
**Why**: Media composition
**Estimated functions**: ~8 methods

### 20. VoIP (Real-time Voice)
**Priority**: Very Low  
**Why**: Voice communication
**Estimated functions**: ~12 methods

### 21. Editor Context (Rich Text)
**Priority**: Low  
**Why**: Rich text editing
**Estimated functions**: ~25 methods
**Estimated functions**: `wechat_editor_ffi.mjs`

## TOTAL ESTIMATED: ~480+ functions remaining

---

## Recommended Implementation Order

### Phase 1 (HIGH - Complete Essentials)
1. FileSystemManager
2. CacheManager
3. Performance Monitoring
4. Animation (verify all methods)
5. RequestTask enhancements

### Phase 2 (MEDIUM - Media & UI)
6. Background Audio Manager
7. ScrollViewContext
8. Web Audio (WebAudioContext)
9. UpdateManager
10. Worker support

### Phase 3 (LOW - Specialized APIs)
11. Bluetooth (BLE)
12. NFC
13. MediaRecorder (screen recording)
14. Live Player/Pusher
15. EditorContext (rich text)

---

## Next Immediate Action

Start with **FileSystemManager** - it's high priority and frequently needed.
