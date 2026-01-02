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

## Summary

This document provides detailed signatures and descriptions for remaining WeChat Mini-Program APIs organized into implementation phases.

**Remaining Phases**:
- **Phase 6: EventChannel** (4 functions) - Cross-page communication
- **Phase 7: Jump & Navigate** (8 functions) - Official Account, embedded mini-programs
- **Phase 9: Chat Tools** (9 functions) - Group chat sharing features

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

**Document Status**: Updated - 21 remaining API signatures
**Last Updated**: 2026-01-02
**Next Steps**: Implement phases 6, 7, 9 as needed based on application requirements
