import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

// Performance

export function performanceNow(perf) {
  return perf.now();
}

export function performanceGetEntries(perf) {
  return perf.getEntries();
}

export function performanceGetEntriesByType(perf, entryType) {
  return perf.getEntriesByType(entryType);
}

export function performanceGetEntriesByName(perf, name) {
  return perf.getEntriesByName(name);
}

export function performanceMark(perf, name) {
  perf.mark(name);
}

export function performanceMeasure(perf, measureName, startMark, endMark) {
  perf.measure(measureName, startMark, endMark);
}

export function performanceClearMarks(perf, name) {
  if (name) {
    perf.clearMarks(name);
  } else {
    perf.clearMarks();
  }
}

export function performanceClearMeasures(perf, name) {
  if (name) {
    perf.clearMeasures(name);
  } else {
    perf.clearMeasures();
  }
}

export function performanceCreateObserver(perf, callback) {
  return perf.createObserver(callback);
}

export function performanceObserverDisconnect(observer) {
  observer.disconnect();
}

export function performanceObserverObserve(observer, options) {
  observer.observe(options);
}

export function performanceSetBufferSize(perf, size) {
  perf.setBufferSize(size);
}
