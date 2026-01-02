import wechat/editor

pub fn editor_test() {
  let _ = editor.create_editor_context
  let _ = editor.editor_context_set_contents
  let _ = editor.editor_context_get_contents
  let _ = editor.editor_context_clear
  let _ = editor.editor_context_blur
  let _ = editor.editor_context_focus
  let _ = editor.editor_context_format
  let _ = editor.editor_context_insert_text
  let _ = editor.editor_context_get_selection_text
  let _ = editor.editor_context_scroll_into_view
  let _ = editor.editor_context_status
  let _ = editor.editor_context_ready
}
