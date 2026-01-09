import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function create_selector_query() {
  return wx.createSelectorQuery();
}

export function selector_query_in(query, component) {
  return query.in(component);
}

export function selector_query_select(query, selector) {
  return query.select(selector);
}

export function selector_query_select_all(query, selector) {
  return query.selectAll(selector);
}

export function selector_query_select_viewport(query) {
  return query.selectViewport();
}

export function selector_query_exec(query) {
  return new Promise(resolve => {
    query.exec((res) => {
      resolve(new Ok(res));
    });
  });
}

export function nodes_ref_bounding_client_rect(ref, cb) {
  return ref.boundingClientRect(cb);
}

export function nodes_ref_scroll_offset(ref) {
  return ref.scrollOffset();
}

export function nodes_ref_fields(ref, fields) {
  return ref.fields(fields);
}

export function nodes_ref_context(ref) {
  return ref.context();
}

export function nodes_ref_node(ref) {
  return ref.node();
}

export function nodes_ref_ref(ref) {
  return ref.ref();
}

// ScrollViewContext

export function scrollViewContextCloseRefresh(ctx) {
  return new Promise(resolve => {
    ctx.closeRefresh({
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function scrollViewContextCloseTwoLevel(ctx) {
  return new Promise(resolve => {
    ctx.closeTwoLevel({
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function scrollViewContextScrollIntoView(ctx, selector) {
  return new Promise(resolve => {
    ctx.scrollIntoView({
      selector: selector,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function scrollViewContextScrollTo(ctx, left, top) {
  return new Promise(resolve => {
    ctx.scrollTo({
      left: left,
      top: top,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function scrollViewContextTriggerRefresh(ctx) {
  return new Promise(resolve => {
    ctx.triggerRefresh({
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function scrollViewContextTriggerTwoLevel(ctx) {
  return new Promise(resolve => {
    ctx.triggerTwoLevel({
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// EditorContext

export function createEditorContext(component) {
  return component.createEditorContext();
}

export function editorContextSetContents(ctx, contents, cb) {
  return new Promise(resolve => {
    ctx.setContents({
      ...contents,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function editorContextGetContents(ctx, cb) {
  return new Promise(resolve => {
    ctx.getContents({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function editorContextClear(ctx, cb) {
  return new Promise(resolve => {
    ctx.clear({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function editorContextBlur(ctx) {
  ctx.blur();
}

export function editorContextFocus(ctx) {
  ctx.focus();
}

export function editorContextFormat(ctx, name, value) {
  ctx.format(name, value);
}

export function editorContextInsertText(ctx, text) {
  ctx.insertText(text);
}

export function editorContextGetSelectionText(ctx, cb) {
  return new Promise(resolve => {
    ctx.getSelectionText({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function editorContextScrollIntoView(ctx) {
  ctx.scrollIntoView();
}

export function editorContextStatus(ctx, cb) {
  return new Promise(resolve => {
    ctx.status({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function editorContextReady(ctx, cb) {
  return new Promise(resolve => {
    ctx.ready({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// IntersectionObserver

export function createIntersectionObserver(component, options) {
  return wx.createIntersectionObserver(component, options);
}

export function intersectionObserverDisconnect(io) {
  io.disconnect();
}

export function intersectionObserverObserve(io, target, cb) {
  io.observe(target, cb);
}

export function intersectionObserverRelativeTo(io, selector) {
  return io.relativeTo(selector);
}

export function intersectionObserverRelativeToViewport(io) {
  return io.relativeToViewport();
}

// Phase 19: WXML Advanced - MediaQueryObserver

export function createMediaQueryObserver(component) {
  return wx.createMediaQueryObserver(component)
}

export function mediaQueryObserverDisconnect(mq) {
  mq.disconnect()
}

export function mediaQueryObserverObserve(mq, descriptor, cb) {
  mq.observe(descriptor, cb)
}

