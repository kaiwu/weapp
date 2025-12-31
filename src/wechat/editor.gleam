//// editor module provides EditorContext API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/component/editor/EditorContext.html)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// EditorContext type for rich text editor
///
pub type EditorContext

/// `wx.createEditorContext`
/// Create editor context
///
@external(javascript, "../wechat_wxml_ffi.mjs", "createEditorContext")
pub fn create_editor_context(component c: JsObject) -> EditorContext

/// EditorContext.setContents
/// Set editor contents
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextSetContents")
pub fn editor_context_set_contents(
  ctx: EditorContext,
  contents: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// EditorContext.getContents
/// Get editor contents
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextGetContents")
pub fn editor_context_get_contents(
  ctx: EditorContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// EditorContext.clear
/// Clear editor contents
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextClear")
pub fn editor_context_clear(
  ctx: EditorContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// EditorContext.blur
/// Remove focus from editor
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextBlur")
pub fn editor_context_blur(ctx: EditorContext) -> Nil

/// EditorContext.focus
/// Set focus to editor
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextFocus")
pub fn editor_context_focus(ctx: EditorContext) -> Nil

/// EditorContext.format
/// Format selected text
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextFormat")
pub fn editor_context_format(
  ctx: EditorContext,
  name n: String,
  value v: String,
) -> Nil

/// EditorContext.insertText
/// Insert text at cursor position
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextInsertText")
pub fn editor_context_insert_text(ctx: EditorContext, text t: String) -> Nil

/// EditorContext.setContents
/// Get selection info
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextGetSelectionText")
pub fn editor_context_get_selection_text(
  ctx: EditorContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// EditorContext.scrollIntoView
/// Scroll editor into view
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextScrollIntoView")
pub fn editor_context_scroll_into_view(ctx: EditorContext) -> Nil

/// EditorContext.status
/// Get editor status
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextStatus")
pub fn editor_context_status(
  ctx: EditorContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// EditorContext.ready
/// Check if editor is ready
///
@external(javascript, "../wechat_wxml_ffi.mjs", "editorContextReady")
pub fn editor_context_ready(
  ctx: EditorContext,
  complete cb: WechatCallback,
) -> Promise(WechatResult)
