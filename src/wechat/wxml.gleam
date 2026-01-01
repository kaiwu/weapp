//// wxml module provides WXML node query bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/wxml/wx.createSelectorQuery.html)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatResultCallback, type JsObject, type WechatResult}

/// SelectorQuery type for querying node information
///
pub type SelectorQuery

/// NodesRef type for node reference returned by select methods
///
pub type NodesRef

/// `wx.createSelectorQuery()`
/// Returns a SelectorQuery object instance
///
@external(javascript, "../wechat_wxml_ffi.mjs", "create_selector_query")
pub fn create_selector_query() -> SelectorQuery

/// `SelectorQuery.in(component)`
/// Change the selection scope to custom component `component`
///
@external(javascript, "../wechat_wxml_ffi.mjs", "selector_query_in")
pub fn selector_query_in(
  query q: SelectorQuery,
  component c: JsObject,
) -> SelectorQuery

/// `SelectorQuery.select(selector)`
/// Select the first node matching `selector` in the current page
/// Returns a NodesRef object instance
///
@external(javascript, "../wechat_wxml_ffi.mjs", "selector_query_select")
pub fn selector_query_select(
  query q: SelectorQuery,
  selector s: String,
) -> NodesRef

/// `SelectorQuery.selectAll(selector)`
/// Select all nodes matching `selector` in the current page
/// Returns a NodesRef object instance
///
@external(javascript, "../wechat_wxml_ffi.mjs", "selector_query_select_all")
pub fn selector_query_select_all(
  query q: SelectorQuery,
  selector s: String,
) -> NodesRef

/// `SelectorQuery.selectViewport()`
/// Select the display area (viewport)
/// Can be used to get display area dimensions, scroll position, etc.
/// Returns a NodesRef object instance
///
@external(javascript, "../wechat_wxml_ffi.mjs", "selector_query_select_viewport")
pub fn selector_query_select_viewport(query q: SelectorQuery) -> NodesRef

/// `SelectorQuery.exec()`
/// Execute all requests
/// Request results form an array in the order they were requested
/// Returns in the first parameter of the callback
///
@external(javascript, "../wechat_wxml_ffi.mjs", "selector_query_exec")
pub fn selector_query_exec(query q: SelectorQuery) -> Promise(WechatResult)

/// `NodesRef.boundingClientRect()`
/// Add request to get node layout position relative to display area
/// Returns NodesRef for chaining
///
@external(javascript, "../wechat_wxml_ffi.mjs", "nodes_ref_bounding_client_rect")
pub fn nodes_ref_bounding_client_rect(ref r: NodesRef) -> NodesRef

/// `NodesRef.scrollOffset()`
/// Add request to get node scroll position
/// Returns NodesRef for chaining
///
@external(javascript, "../wechat_wxml_ffi.mjs", "nodes_ref_scroll_offset")
pub fn nodes_ref_scroll_offset(ref r: NodesRef) -> NodesRef

/// `NodesRef.fields(rect, dataset, computedStyle, size, scrollOffset, properties)`
/// Add request to get specified node fields
/// Returns NodesRef for chaining
///
@external(javascript, "../wechat_wxml_ffi.mjs", "nodes_ref_fields")
pub fn nodes_ref_fields(ref r: NodesRef, fields f: JsObject) -> NodesRef

/// `NodesRef.context()`
/// Add request to get the corresponding context object
/// Currently supports CanvasContext, Canvas 2D, MapContext, VideoContext, AdContext, EditorContext, CameraContext, LivePlayerContext, LivePusherContext, OpenDataContext
/// Returns NodesRef for chaining
///
@external(javascript, "../wechat_wxml_ffi.mjs", "nodes_ref_context")
pub fn nodes_ref_context(ref r: NodesRef) -> NodesRef

/// `NodesRef.node()`
/// Add request to get Node instance
/// Returns NodesRef for chaining
///
@external(javascript, "../wechat_wxml_ffi.mjs", "nodes_ref_node")
pub fn nodes_ref_node(ref r: NodesRef) -> NodesRef

/// `NodesRef.ref(component)`
/// Add request to get component instance matching the selector
/// Returns NodesRef for chaining
///
@external(javascript, "../wechat_wxml_ffi.mjs", "nodes_ref_ref")
pub fn nodes_ref_ref(ref r: NodesRef) -> NodesRef

/// ScrollViewContext type for scroll-view component context
///
pub type ScrollViewContext

/// `ScrollViewContext.closeRefresh`
/// Close pull-down refresh
///
@external(javascript, "../wechat_wxml_ffi.mjs", "scrollViewContextCloseRefresh")
pub fn scroll_view_context_close_refresh(
  ctx: ScrollViewContext,
) -> Promise(WechatResult)

/// `ScrollViewContext.closeTwoLevel`
/// Close two-level page
///
@external(javascript, "../wechat_wxml_ffi.mjs", "scrollViewContextCloseTwoLevel")
pub fn scroll_view_context_close_two_level(
  ctx: ScrollViewContext,
) -> Promise(WechatResult)

/// `ScrollViewContext.scrollIntoView`
/// Scroll element into view
///
@external(javascript, "../wechat_wxml_ffi.mjs", "scrollViewContextScrollIntoView")
pub fn scroll_view_context_scroll_into_view(
  ctx: ScrollViewContext,
  selector s: String,
) -> Promise(WechatResult)

/// `ScrollViewContext.scrollTo`
/// Scroll to specified position
///
@external(javascript, "../wechat_wxml_ffi.mjs", "scrollViewContextScrollTo")
pub fn scroll_view_context_scroll_to(
  ctx: ScrollViewContext,
  left l: Int,
  top t: Int,
) -> Promise(WechatResult)

/// `ScrollViewContext.triggerRefresh`
/// Trigger pull-down refresh
///
@external(javascript, "../wechat_wxml_ffi.mjs", "scrollViewContextTriggerRefresh")
pub fn scroll_view_context_trigger_refresh(
  ctx: ScrollViewContext,
) -> Promise(WechatResult)

/// `ScrollViewContext.triggerTwoLevel`
/// Trigger two-level page
///
@external(javascript, "../wechat_wxml_ffi.mjs", "scrollViewContextTriggerTwoLevel")
pub fn scroll_view_context_trigger_two_level(
  ctx: ScrollViewContext,
) -> Promise(WechatResult)

/// IntersectionObserver
///
/// IntersectionObserver type
///
pub type IntersectionObserver

/// `wx.createIntersectionObserver`
/// Create intersection observer
///
@external(javascript, "../wechat_wxml_ffi.mjs", "createIntersectionObserver")
pub fn create_intersection_observer(
  component c: JsObject,
  options o: JsObject,
) -> IntersectionObserver

/// IntersectionObserver.disconnect
/// Stop listening
///
@external(javascript, "../wechat_wxml_ffi.mjs", "intersectionObserverDisconnect")
pub fn intersection_observer_disconnect(io: IntersectionObserver) -> Nil

/// IntersectionObserver.observe
/// Listen for intersection state change
///
@external(javascript, "../wechat_wxml_ffi.mjs", "intersectionObserverObserve")
pub fn intersection_observer_observe(
  io: IntersectionObserver,
  target t: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// IntersectionObserver.relativeTo
/// Specify reference node
///
@external(javascript, "../wechat_wxml_ffi.mjs", "intersectionObserverRelativeTo")
pub fn intersection_observer_relative_to(
  io: IntersectionObserver,
  selector s: JsObject,
) -> IntersectionObserver

/// IntersectionObserver.relativeToViewport
/// Use viewport as reference
///
@external(javascript, "../wechat_wxml_ffi.mjs", "intersectionObserverRelativeToViewport")
pub fn intersection_observer_relative_to_viewport(
  io: IntersectionObserver,
) -> IntersectionObserver
