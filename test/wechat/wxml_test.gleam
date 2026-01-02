import wechat/wxml

pub fn selector_query_test() {
  let _ = wxml.create_selector_query
  let _ = wxml.selector_query_in
  let _ = wxml.selector_query_select
  let _ = wxml.selector_query_select_all
  let _ = wxml.selector_query_select_viewport
  let _ = wxml.selector_query_exec
}

pub fn nodes_ref_test() {
  let _ = wxml.nodes_ref_bounding_client_rect
  let _ = wxml.nodes_ref_scroll_offset
  let _ = wxml.nodes_ref_fields
  let _ = wxml.nodes_ref_context
  let _ = wxml.nodes_ref_node
  let _ = wxml.nodes_ref_ref
}

pub fn scroll_view_context_test() {
  let _ = wxml.scroll_view_context_close_refresh
  let _ = wxml.scroll_view_context_close_two_level
  let _ = wxml.scroll_view_context_scroll_into_view
  let _ = wxml.scroll_view_context_scroll_to
  let _ = wxml.scroll_view_context_trigger_refresh
  let _ = wxml.scroll_view_context_trigger_two_level
}

pub fn intersection_observer_test() {
  let _ = wxml.create_intersection_observer
  let _ = wxml.intersection_observer_disconnect
  let _ = wxml.intersection_observer_observe
  let _ = wxml.intersection_observer_relative_to
  let _ = wxml.intersection_observer_relative_to_viewport
}

pub fn media_query_observer_test() {
  let _ = wxml.create_media_query_observer
  let _ = wxml.media_query_observer_disconnect
  let _ = wxml.media_query_observer_observe
}
