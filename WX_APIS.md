# WeChat API Signatures - Implementation Guide

**Generated**: 2026-01-02
**Total Documented**: 21 wx functions (remaining to implement)
**Current Coverage**: 375 functions (~62%)
**Goal**: 600+ functions

This document provides detailed signatures and descriptions for missing wx APIs organized into implementation phases.

---

## Table of Contents

1. [Phase 6: EventChannel](#phase-6-eventchannel-4-functions)
2. [Phase 7: Jump & Navigate](#phase-7-jump--navigate-8-functions)
3. [Phase 9: Chat Tools](#phase-9-chat-tool-9-functions)

---

## Implemented Phases (Removed)

The following phases have been fully implemented and removed from this document:

- **Phase 1: Base/System APIs** - All 6 functions implemented
- **Phase 2: Network APIs** - All 6 functions implemented
- **Phase 3: Media APIs** - All 7 functions implemented
- **Phase 4: Open Privacy APIs** - All 3 functions implemented
- **Phase 5: Route & Navigation** - All 3 functions implemented
- **Phase 8: Share Advanced** - All 7 functions implemented (duplicate of Phase 14)
- **Phase 10: Storage Sync & Advanced** - All 15 functions implemented
- **Phase 11: File Advanced** - All functions implemented
- **Phase 12: Device Advanced - Bluetooth** - All 7 functions implemented
- **Phase 13: Device Advanced - Other** - All 8 functions implemented
- **Phase 14: Share Advanced** - All 7 functions implemented
- **Phase 15: UI Advanced** - All 20 functions implemented
- **Phase 16: Canvas Advanced** - All 10+ functions implemented
- **Phase 17: Base/System** - All 3 functions implemented (updateWeChatApp, getApiCategory, wx.env)
- **Phase 18: Canvas Advanced** - 25+ functions implemented (gradients, styles, paths, Path2D)
- **Phase 19: WXML Advanced** - All 3 MediaQueryObserver functions implemented
- **Phase 20: Location Advanced** - All 9 functions implemented
- **Phase 21: File Advanced** - 5 functions implemented (truncate, readZipEntry, Stats methods)

---

## Phase 6: EventChannel (4 functions)

#### 1. `wx.EventChannel`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/route/EventChannel.html

**Return Value**: `EventChannel` object

**Description**: Object used for cross-page communication through `EventChannel` parameter of `wx.navigateTo`, `wx.navigateToMiniProgram`, `wx.reLaunch`, etc.

**EventChannel Methods**:

| Method | Description |
|--------|-------------|
| `emit` | `emit(eventName: string, data: any, ...args)` - Trigger event to all listeners |
| `on` | `on(eventName: string, handler: (data: any) => void, ...args)` | Listen continuously |
| `once` | `once(eventName: string, handler: Function)` | Listen once then auto-remove |
| `off` | `off(eventName: string, handler: Function)` | Remove event listener |

**Platform Requirements**:
- Base Library >= 1.7.2

**Usage Example**:
```javascript
// Page A
onLoad(query) {
  const eventChannel = this.getOpenerEventChannel();
  eventChannel.emit('dataChanged', { key: 'value' });
}

// Page B
onShow(event) {
  const eventChannel = this.getOpenerEventChannel();
  eventChannel.on('dataChanged', (data) => { console.log(data); });
}
```

---

## Phase 7: Jump & Navigate (8 functions)

#### 2. `wx.restartMiniProgram`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.restartMiniProgram.html

**Signature**:
```javascript
wx.restartMiniProgram({path, options, success, fail, complete})
```

**Description**: Restart current mini-program to previous page or restart app if no previous page.

**Parameters**:
- `path` (string): Path to restart to (optional)
- `options` (object): Config options (optional)
- `success`, `fail`, `complete` callbacks (optional): Standard callbacks

**Platform Requirements**:
- iOS >= 2.9.0
- Android >= 9.6

#### 3. `wx.openOfficialAccountProfile`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.openOfficialAccountProfile.html

**Signature**:
```javascript
wx.openOfficialAccountProfile({success, fail, complete})
```

**Description**: Opens a WeChat Official Account homepage.

**Return Value**: `Promise<WechatResult>`

**Platform Requirements**:
- iOS >= 9.0.0

#### 4. `wx.openOfficialAccountChat`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.openOfficialAccountChat.html

**Signature**:
```javascript
wx.openOfficialAccountChat({success, fail, complete})
```

**Description**: Opens a conversation with Official Account customer support.

**Return Value**: `Promise<WechatResult>`

#### 5. `wx.openOfficialAccountArticle`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.openOfficialAccountArticle.html

**Signature**:
```javascript
wx.openOfficialAccountArticle({
  url: string
})
```

**Description**: Opens a WeChat Official Account article. Only works if clicked by user.

**Parameters**:
- `url` (string): Article link (only allows temporary links, not permanent links)

**Return Value**: `void`

**Platform Requirements**:
- **Must be triggered by user click**: Calling from code without user click will fail with permission error
- Limited to `https://mp.weixin.qq.com` domain

#### 6. `wx.openInquiriesTopic`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.openInquiriesTopic.html

**Signature**:
```javascript
wx.openInquiriesTopic({
  topicId: string
})
```

**Description**: Opens WeChat Q&A topic (Wenxin Q&A, WeChat Pay)

**Parameters**:
- `topicId` (string): Q&A topic ID

**Platform Requirements**:
- **Requires WeChat Pay** or **Weixin App** domain

#### 7. `wx.openEmbeddedMiniProgram`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.openEmbeddedMiniProgram.html

**Signature**:
```javascript
wx.openEmbeddedMiniProgram({
  appId: string,
  path: string,
  success, fail, complete
})
```

**Description**: Opens embedded mini-program in half-screen mode.

**Parameters**:
- `appId` (string): AppId of embedded mini-program
- `path` (string): Page path in embedded mini-program
- `success`, `fail`, `complete` (optional): Standard callbacks

**Return Value**: `Promise<WechatResult>`

**Platform Requirements**:
- iOS >= 9.6.0

**Notes**:
- Displays in split view
- Can navigate back to previous page after closing embedded view

#### 8. `wx.onEmbeddedMiniProgramHeightChange`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.onEmbeddedMiniProgramHeightChange.html

**Signature**:
```javascript
wx.onEmbeddedMiniProgramHeightChange(callback cb: (height: number) => void)
```

**Return Value**: `void`

**Description**: Listens for embedded mini-program visible height changes.

**Parameters**:
- `cb` (Function): Callback that receives height in pixels

**Platform Requirements**:
- iOS >= 9.6.0

#### 9. `wx.offEmbeddedMiniProgramHeightChange`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.offEmbeddedMiniProgramChange.html

**Signature**:
```javascript
wx.offEmbeddedMiniProgramHeightChange(callback cb)
```

**Description**: Removes listener for embedded mini-program height changes.

**Parameters**:
- `cb` (Function): Previously registered callback

**Return Value**: `void`

**Platform Requirements**:
- iOS >= 9.6.0

---

## Phase 9: Chat Tools (9 functions)

#### 10. `wx.shareVideoToGroup`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.shareVideoToGroup.html

**Signature**:
```javascript
wx.shareVideoToGroup({
  videoSrc: string,
  success, fail, complete
})
```

**Description**: Shares video to a chat group session.

**Parameters**:
- `videoSrc` (string): Video file path or URL (http/ or wxfile://)

**Platform Requirements**:
- Requires active chat tool session

#### 11. `wx.shareImageToGroup`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.shareImageToGroup.html

**Signature**:
```javascript
wx.shareImageToGroup({
  src: string,
  success, fail, complete
})
```

**Description**: Shares image to a chat group session.

**Parameters**:
- `src` (string): Image path or URL

**Platform Requirements**:
- Requires active chat tool session

#### 12. `wx.shareFileToGroup`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.shareFileToGroup.html

**Signature**:
```javascript
wx.shareFileToGroup({
  filePath: string,
  success, fail, complete
})
```

**Description**: Shares file to a chat group session.

**Parameters**:
- `filePath` (string): File path

**Platform Requirements**:
- Requires active chat tool session

#### 13. `wx.shareEmojiToGroup`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.shareEmojiToGroup.html

**Signature**:
```javascript
wx.shareEmojiToGroup({
  emojiId: string,
  success, fail, complete
})
```

**Description**: Shares emoji to a chat group session.

**Parameters**:
- `emojiId` (string): Emoji identifier

**Platform Requirements**:
- Requires active chat tool session

#### 14. `wx.shareAppMessageToGroup`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.shareAppMessageToGroup.html

**Signature**:
```javascript
wx.shareAppMessageToGroup({
  groupOpenid: string,
  success, fail, complete
})
```

**Description**: Shares mini-program card to a chat group session.

**Parameters**:
- `groupOpenid` (string): Group ID from `selectGroupMembers`

**Platform Requirements**:
- Requires active chat tool session

#### 15. `wx.selectGroupMembers`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.selectGroupMembers.html

**Signature**:
```javascript
wx.selectGroupMembers({
  success, fail, complete
})
```

**Description**: Selects chat group members from user's contact list, returns group_openid.

**Return Value**: `Promise<{group_openid: string, group_openid_list: []}>`

**Platform Requirements**:
- Requires active chat tool session

#### 16. `wx.openChatTool`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.openChatTool.html

**Signature**:
```javascript
wx.openChatTool({success, fail, complete})
```

**Description**: Opens chat tool for customer service integration.

**Return Value**: `Promise<WechatResult>`

**Platform Requirements**:
- Requires mini-program with customer service enabled

#### 17. `wx.notifyGroupMembers`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.notifyGroupMembers.html

**Signature**:
```javascript
wx.notifyGroupMembers({
  groupOpenid: string,
  title: string
})
```

**Description**: Sends message to chat group members to remind them to complete tasks.

**Parameters**:
- `groupOpenid` (string): Group ID from `selectGroupMembers`
- `title` (string): Notification title

**Platform Requirements**:
- Requires active chat tool session

**Limitations**:
- Title length: <= 30 characters
- Supports Chinese, English, and digits

#### 18. `wx.getChatToolInfo`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/chattool/wx.getChatToolInfo.html

**Signature**:
```javascript
wx.getChatToolInfo()
```

**Return Value**: `Promise<{group_openid: string}>`

**Description**: Gets chat tool group information.

**Return Value Properties**:
- `group_openid` (string): Current group ID

**Platform Requirements**:
- Requires active chat tool session

**Limitations**:
- Only available in chat tool environment

---

## Completion Criteria

[x] Phase 1: Base/System APIs (6/6) - IMPLEMENTED
[x] Phase 2: Network APIs (6/6) - IMPLEMENTED
[x] Phase 3: Media APIs (7/7) - IMPLEMENTED
[x] Phase 4: Open Privacy APIs (3/3) - IMPLEMENTED
[x] Phase 5: Route & Navigation (3/3) - IMPLEMENTED
[ ] Phase 6: EventChannel (0/4) - PENDING
[ ] Phase 7: Jump & Navigate (0/8) - PENDING
[x] Phase 8: Share Advanced (7/7) - IMPLEMENTED
[ ] Phase 9: Chat Tools (0/9) - PENDING
[x] Phase 10: Storage Sync & Advanced (15/15) - IMPLEMENTED
[x] Phase 11: File Advanced (1/1) - IMPLEMENTED
[x] Phase 12: Device Advanced - Bluetooth (7/7) - IMPLEMENTED
[x] Phase 13: Device Advanced - Other (8/8) - IMPLEMENTED
[x] Phase 14: Share Advanced (7/7) - IMPLEMENTED
[x] Phase 15: UI Advanced (20/20) - IMPLEMENTED
[x] Phase 16: Canvas Advanced (10+/10+) - IMPLEMENTED
[x] Phase 17: Base/System (3/3) - IMPLEMENTED
[x] Phase 18: Canvas Advanced (25+/50+) - PARTIALLY IMPLEMENTED
[x] Phase 19: WXML Advanced (3/12) - PARTIALLY IMPLEMENTED (MediaQueryObserver done, NodesRef/SelectorQuery already existed)
[x] Phase 20: Location Advanced (9/9) - IMPLEMENTED
[x] Phase 21: File Advanced (5/50+) - PARTIALLY IMPLEMENTED

**Total Documented**: 21 functions remaining across 3 phases
**Implemented**: 375+ functions
**Remaining to Implement**: 21 functions (phases 6, 7, 9)

---

## Phase 22: Media Context - VideoContext (15 functions)

#### 1. `VideoContext.play()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.play.html

**Description**: Play video

**Return Value**: `void`

**Platform Requirements**:
- Base Library >= 1.0.0

#### 2. `VideoContext.pause()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.pause.html

**Description**: Pause video. Paused video resumes from pause position on next play

**Return Value**: `void`

#### 3. `VideoContext.stop()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.stop.html

**Description**: Stop video. Stopped video starts from beginning on next play

**Return Value**: `void`

#### 4. `VideoContext.seek(number position)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.seek.html

**Description**: Jump to specified position

**Parameters**:
- `position` (number): Position in seconds

**Return Value**: `void`

#### 5. `VideoContext.sendDanmu(Object data)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.sendDanmu.html

**Description**: Send danmu (bullet comment)

**Parameters**:
- `data` (object): Danmu data
  - `text` (string): Danmu text content
  - `color` (string): Text color, default white

**Return Value**: `void`

**Platform Requirements**:
- Video component must have `enable-danmu` attribute

#### 6. `VideoContext.playbackRate(number rate)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.playbackRate.html

**Description**: Set playback rate

**Parameters**:
- `rate` (number): Playback rate, range 0.5-2.0, default 1.0

**Platform Requirements**:
- Base Library >= 2.11.0
- Android >= 6.0

**Return Value**: `void`

#### 7. `VideoContext.requestFullScreen(Object object)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.requestFullScreen.html

**Description**: Enter full screen mode. Custom content in full screen needs to be placed inside video node

**Parameters**:
- `object` (object): Options
  - `direction` (number): Screen direction (0: normal vertical, 90: horizontal left, -90: horizontal right), default 0

**Return Value**: `void`

#### 8. `VideoContext.exitFullScreen()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.exitFullScreen.html

**Description**: Exit full screen

**Return Value**: `void`

#### 9. `VideoContext.showStatusBar()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.showStatusBar.html

**Description**: Show status bar, only effective in iOS full screen mode

**Return Value**: `void`

**Platform Requirements**:
- iOS only, full screen mode

#### 10. `VideoContext.hideStatusBar()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.hideStatusBar.html

**Description**: Hide status bar, only effective in iOS full screen mode

**Return Value**: `void`

**Platform Requirements**:
- iOS only, full screen mode

#### 11. `VideoContext.exitPictureInPicture()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.exitPictureInPicture.html

**Description**: Exit picture-in-picture mode. Can be called from any page

**Return Value**: `void`

#### 12. `VideoContext.requestBackgroundPlayback()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.requestBackgroundPlayback.html

**Description**: Enter background audio playback mode

**Return Value**: `void`

**Platform Requirements**:
- Requires `scope.record` or `scope.camera` permission

#### 13. `VideoContext.exitBackgroundPlayback()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.exitBackgroundPlayback.html

**Description**: Exit background audio playback mode

**Return Value**: `void`

#### 14. `VideoContext.startCasting()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.startCasting.html

**Description**: Start casting to another device, opens half-screen device selector

**Return Value**: `void`

**Platform Requirements**:
- Must be called in tap event callback only

#### 15. `VideoContext.switchCasting()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/video/VideoContext.switchCasting.html

**Description**: Switch casting device

**Return Value**: `void`

**Platform Requirements**:
- Must be called in tap event callback only

---

## Phase 23: Media Context - InnerAudioContext (20+ functions)

### Properties

#### `InnerAudioContext.src`
- Type: `string`
- Description: Audio resource URL for direct playback. Base Library 2.2.3 supports cloud file ID

#### `InnerAudioContext.startTime`
- Type: `number`
- Description: Playback start position in seconds, default 0

#### `InnerAudioContext.autoplay`
- Type: `boolean`
- Description: Auto-play on load, default false

#### `InnerAudioContext.loop`
- Type: `boolean`
- Description: Loop playback, default false

#### `InnerAudioContext.obeyMuteSwitch`
- Type: `boolean`
- Description: Follow system mute switch, default true. Deprecated in 2.3.0, use wx.setInnerAudioOption instead

#### `InnerAudioContext.volume`
- Type: `number`
- Description: Volume, range 0-1, default 1

#### `InnerAudioContext.playbackRate`
- Type: `number`
- Description: Playback speed, range 0.5-2.0, default 1

#### `InnerAudioContext.duration`
- Type: `number` (read-only)
- Description: Current audio length in seconds, only available when src is set

#### `InnerAudioContext.currentTime`
- Type: `number` (read-only, writable since 2.26.2)
- Description: Current playback position in seconds

#### `InnerAudioContext.paused`
- Type: `boolean` (read-only)
- Description: Whether currently paused or stopped

#### `InnerAudioContext.buffered`
- Type: `number` (read-only)
- Description: Buffered time point in seconds

### Methods

#### 1. `InnerAudioContext.play()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.play.html

**Description**: Play audio

**Return Value**: `void`

#### 2. `InnerAudioContext.pause()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.pause.html

**Description**: Pause audio. Resumes from pause position on next play

**Return Value**: `void`

#### 3. `InnerAudioContext.stop()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.stop.html

**Description**: Stop audio. Starts from beginning on next play

**Return Value**: `void`

#### 4. `InnerAudioContext.seek(number position)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.seek.html

**Description**: Jump to specified position

**Parameters**:
- `position` (number): Position in seconds

**Return Value**: `void`

#### 5. `InnerAudioContext.destroy()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.destroy.html

**Description**: Destroy current instance

**Return Value**: `void`

### Event Listeners

#### 6. `InnerAudioContext.onCanplay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onCanplay.html

**Description**: Listen for audio entering playable state

**Return Value**: `void`

#### 7. `InnerAudioContext.offCanplay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offCanplay.html

**Description**: Remove canplay event listener

**Return Value**: `void`

#### 8. `InnerAudioContext.onPlay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onPlay.html

**Description**: Listen for audio play event

**Return Value**: `void`

#### 9. `InnerAudioContext.offPlay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offPlay.html

**Description**: Remove play event listener

**Return Value**: `void`

#### 10. `InnerAudioContext.onPause(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onPause.html

**Description**: Listen for audio pause event

**Return Value**: `void`

#### 11. `InnerAudioContext.offPause(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offPause.html

**Description**: Remove pause event listener

**Return Value**: `void`

#### 12. `InnerAudioContext.onStop(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onStop.html

**Description**: Listen for audio stop event

**Return Value**: `void`

#### 13. `InnerAudioContext.offStop(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offStop.html

**Description**: Remove stop event listener

**Return Value**: `void`

#### 14. `InnerAudioContext.onEnded(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onEnded.html

**Description**: Listen for audio natural playback end event

**Return Value**: `void`

#### 15. `InnerAudioContext.offEnded(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offEnded.html

**Description**: Remove ended event listener

**Return Value**: `void`

#### 16. `InnerAudioContext.onTimeUpdate(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onTimeUpdate.html

**Description**: Listen for audio playback progress update event

**Return Value**: `void`

#### 17. `InnerAudioContext.offTimeUpdate(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offTimeUpdate.html

**Description**: Remove time update event listener

**Return Value**: `void`

#### 18. `InnerAudioContext.onError(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onError.html

**Description**: Listen for audio error event

**Return Value**: `void`

#### 19. `InnerAudioContext.offError(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offError.html

**Description**: Remove error event listener

**Return Value**: `void`

#### 20. `InnerAudioContext.onWaiting(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onWaiting.html

**Description**: Listen for audio loading event, triggered when data insufficient

**Return Value**: `void`

#### 21. `InnerAudioContext.offWaiting(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offWaiting.html

**Description**: Remove waiting event listener

**Return Value**: `void`

#### 22. `InnerAudioContext.onSeeking(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onSeeking.html

**Description**: Listen for seek operation event

**Return Value**: `void`

#### 23. `InnerAudioContext.offSeeking(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offSeeking.html

**Description**: Remove seeking event listener

**Return Value**: `void`

#### 24. `InnerAudioContext.onSeeked(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.onSeeked.html

**Description**: Listen for seek operation completion event

**Return Value**: `void`

#### 25. `InnerAudioContext.offSeeked(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/audio/InnerAudioContext.offSeeked.html

**Description**: Remove seeked event listener

**Return Value**: `void`

**Supported Formats**:
- iOS: flac, m4a, wav, mp3, aac, aiff, caf
- Android: m4a, ogg, ape, amr, wma, wav, mp3, mp4, aac

---

## Phase 24: Media Context - BackgroundAudioManager (13+ functions)

### Properties

#### `BackgroundAudioManager.src`
- Type: `string`
- Description: Audio resource URL

#### `BackgroundAudioManager.startTime`
- Type: `number`
- Description: Playback start position in seconds

#### `BackgroundAudioManager.title`
- Type: `string`
- Description: Audio title, used in native audio player

#### `BackgroundAudioManager.epname`
- Type: `string`
- Description: Album name

#### `BackgroundAudioManager.singer`
- Type: `string`
- Description: Singer name

#### `BackgroundAudioManager.coverImgUrl`
- Type: `string`
- Description: Cover image URL

#### `BackgroundAudioManager.webUrl`
- Type: `string`
- Description: Web page URL

#### `BackgroundAudioManager.protocol`
- Type: `string`
- Description: Audio protocol, default 'hls', supports 'http' or 'hls'

#### `BackgroundAudioManager.duration`
- Type: `number` (read-only)
- Description: Current audio length in seconds

#### `BackgroundAudioManager.currentTime`
- Type: `number` (read-only)
- Description: Current playback position in seconds

#### `BackgroundAudioManager.paused`
- Type: `boolean` (read-only)
- Description: Whether currently paused

#### `BackgroundAudioManager.buffered`
- Type: `number` (read-only)
- Description: Buffered time point in seconds

### Methods

#### 1. `BackgroundAudioManager.play()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.play.html

**Description**: Play background audio

**Return Value**: `void`

#### 2. `BackgroundAudioManager.pause()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.pause.html

**Description**: Pause background audio

**Return Value**: `void`

#### 3. `BackgroundAudioManager.seek(number position)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.seek.html

**Description**: Jump to specified position

**Parameters**:
- `position` (number): Position in seconds

**Return Value**: `void`

#### 4. `BackgroundAudioManager.stop()`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.stop.html

**Description**: Stop background audio

**Return Value**: `void`

### Event Listeners

#### 5. `BackgroundAudioManager.onCanplay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onCanplay.html

**Description**: Listen for background audio entering playable state

**Return Value**: `void`

#### 6. `BackgroundAudioManager.offCanplay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offCanplay.html

**Description**: Remove canplay event listener

**Return Value**: `void`

#### 7. `BackgroundAudioManager.onPlay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onPlay.html

**Description**: Listen for background audio play event

**Return Value**: `void`

#### 8. `BackgroundAudioManager.offPlay(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offPlay.html

**Description**: Remove play event listener

**Return Value**: `void`

#### 9. `BackgroundAudioManager.onPause(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onPause.html

**Description**: Listen for background audio pause event

**Return Value**: `void`

#### 10. `BackgroundAudioManager.offPause(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offPause.html

**Description**: Remove pause event listener

**Return Value**: `void`

#### 11. `BackgroundAudioManager.onStop(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onStop.html

**Description**: Listen for background audio stop event

**Return Value**: `void`

#### 12. `BackgroundAudioManager.offStop(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offStop.html

**Description**: Remove stop event listener

**Return Value**: `void`

#### 13. `BackgroundAudioManager.onEnded(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onEnded.html

**Description**: Listen for background audio natural playback end event

**Return Value**: `void`

#### 14. `BackgroundAudioManager.offEnded(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offEnded.html

**Description**: Remove ended event listener

**Return Value**: `void`

#### 15. `BackgroundAudioManager.onTimeUpdate(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onTimeUpdate.html

**Description**: Listen for background audio playback progress update event

**Return Value**: `void`

#### 16. `BackgroundAudioManager.offTimeUpdate(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offTimeUpdate.html

**Description**: Remove time update event listener

**Return Value**: `void`

#### 17. `BackgroundAudioManager.onPrev(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onPrev.html

**Description**: Listen for user clicking previous button event

**Return Value**: `void`

#### 18. `BackgroundAudioManager.offPrev(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offPrev.html

**Description**: Remove prev event listener

**Return Value**: `void`

#### 19. `BackgroundAudioManager.onNext(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onNext.html

**Description**: Listen for user clicking next button event

**Return Value**: `void`

#### 20. `BackgroundAudioManager.offNext(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offNext.html

**Description**: Remove next event listener

**Return Value**: `void`

#### 21. `BackgroundAudioManager.onError(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onError.html

**Description**: Listen for background audio error event

**Return Value**: `void`

#### 22. `BackgroundAudioManager.offError(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offError.html

**Description**: Remove error event listener

**Return Value**: `void`

#### 23. `BackgroundAudioManager.onWaiting(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.onWaiting.html

**Description**: Listen for loading event

**Return Value**: `void`

#### 24. `BackgroundAudioManager.offWaiting(function listener)`

**Documentation**: https://developers.weixin.qq.com/miniprogram/dev/api/media/background-audio/BackgroundAudioManager.offWaiting.html

**Description**: Remove waiting event listener

**Return Value**: `void`

---

## Completion Criteria

[x] Phase 1: Base/System APIs (6/6) - IMPLEMENTED
[x] Phase 2: Network APIs (6/6) - IMPLEMENTED
[x] Phase 3: Media APIs (7/7) - IMPLEMENTED
[x] Phase 4: Open Privacy APIs (3/3) - IMPLEMENTED
[x] Phase 5: Route & Navigation (3/3) - IMPLEMENTED
[ ] Phase 6: EventChannel (0/4) - PENDING
[ ] Phase 7: Jump & Navigate (0/8) - PENDING
[x] Phase 8: Share Advanced (7/7) - IMPLEMENTED
[ ] Phase 9: Chat Tools (0/9) - PENDING
[x] Phase 10: Storage Sync & Advanced (15/15) - IMPLEMENTED
[x] Phase 11: File Advanced (1/1) - IMPLEMENTED
[x] Phase 12: Device Advanced - Bluetooth (7/7) - IMPLEMENTED
[x] Phase 13: Device Advanced - Other (8/8) - IMPLEMENTED
[x] Phase 14: Share Advanced (7/7) - IMPLEMENTED
[x] Phase 15: UI Advanced (20/20) - IMPLEMENTED
[x] Phase 16: Canvas Advanced (10+/10+) - IMPLEMENTED
[x] Phase 17: Base/System (3/3) - IMPLEMENTED
[x] Phase 18: Canvas Advanced (25+/50+) - PARTIALLY IMPLEMENTED
[x] Phase 19: WXML Advanced (3/12) - PARTIALLY IMPLEMENTED
[x] Phase 20: Location Advanced (9/9) - IMPLEMENTED
[x] Phase 21: File Advanced (5/50+) - PARTIALLY IMPLEMENTED
[ ] Phase 22: Media Context - VideoContext (0/15) - PENDING
[ ] Phase 23: Media Context - InnerAudioContext (0/25) - PENDING
[ ] Phase 24: Media Context - BackgroundAudioManager (0/24) - PENDING

**Total Documented**: 48+ functions remaining across 6 phases
**Implemented**: 375+ functions
**Remaining to Implement**: 69+ functions (phases 6, 7, 9, 22, 23, 24)

---

## Summary

This document provides detailed signatures and descriptions for remaining WeChat Mini-Program APIs organized into implementation phases.

**Remaining Phases**:
- **Phase 6: EventChannel** (4 functions) - Cross-page communication
- **Phase 7: Jump & Navigate** (8 functions) - Official Account, embedded mini-programs
- **Phase 9: Chat Tools** (9 functions) - Group chat sharing features
- **Phase 22: Media Context - VideoContext** (15 functions) - Video playback control
- **Phase 23: Media Context - InnerAudioContext** (25 functions) - Inner audio playback
- **Phase 24: Media Context - BackgroundAudioManager** (24 functions) - Background audio

Each phase includes:
- Documentation URLs
- Complete function signatures with parameter types
- Return value structures
- Platform requirements (iOS/Android version)
- Usage notes and limitations

Implementation follows established patterns:
- Async functions use `Promise(WechatResult)` with error handling
- Sync functions return direct values
- Event listeners use callback functions
- All FFI implementations include WechatError wrapping

---

**Document Status**: Updated - 69+ remaining API signatures
**Last Updated**: 2026-01-02
**Next Steps**: Implement phases 6, 7, 9, 22, 23, 24 as needed based on application requirements
