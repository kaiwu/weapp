import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

function taskResult(start) {
  let task;
  const result = new Promise(resolve => {
    task = start(resolve);
  });
  return [task, result];
}

export function downloadFile(u, h, cb) {
  return new Promise(resolve => {
    wx.downloadFile({
      url: u,
      header: h,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function downloadFileWithTask(u, h, cb) {
  return taskResult(resolve =>
    wx.downloadFile({
      url: u,
      header: h,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  );
}

export function connectSocket(u, h, p, cb) {
  return new Promise(resolve => {
    wx.connectSocket({
      url: u,
      header: h,
      protocols: p,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onSocketOpen(cb) {
  wx.onSocketOpen(cb);
}

export function onSocketError(cb) {
  wx.onSocketError(cb);
}

export function onSocketMessage(cb) {
  wx.onSocketMessage(cb);
}

export function onSocketClose(cb) {
  wx.onSocketClose(cb);
}

export function offSocketOpen(cb) {
  wx.offSocketOpen(cb);
}

export function offSocketMessage(cb) {
  wx.offSocketMessage(cb);
}

export function offSocketError(cb) {
  wx.offSocketError(cb);
}

export function offSocketClose(cb) {
  wx.offSocketClose(cb);
}

export function sendSocketMessage(d, cb) {
  return new Promise(resolve => {
    wx.sendSocketMessage({
      data: d,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function closeSocket(c, r, cb) {
  return new Promise(resolve => {
    wx.closeSocket({
      code: c,
      reason: r,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onNetworkStatusChange(cb) {
  wx.onNetworkStatusChange(cb);
}

export function offNetworkStatusChange(cb) {
  wx.offNetworkStatusChange(cb);
}

// RequestTask

export function request(u, m, d, h, t, cb) {
  return new Promise(resolve => {
    wx.request({
      url: u,
      method: m,
      data: d,
      header: h,
      timeout: t,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function requestWithTask(u, m, d, h, t, cb) {
  return taskResult(resolve =>
    wx.request({
      url: u,
      method: m,
      data: d,
      header: h,
      timeout: t,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  );
}

export function requestTaskAbort(task) {
  task.abort();
}

export function requestTaskOffHeadersReceived(task, cb) {
  task.offHeadersReceived(cb);
}

export function requestTaskOnChunkReceived(task, cb) {
  task.onChunkReceived(cb);
}

export function requestTaskOnHeadersReceived(task, cb) {
  task.onHeadersReceived(cb);
}

// DownloadTask

export function downloadTaskAbort(task) {
  task.abort();
}

export function downloadTaskOffHeadersReceived(task, cb) {
  task.offHeadersReceived(cb);
}

export function downloadTaskOffProgressUpdate(task, cb) {
  task.offProgressUpdate(cb);
}

export function downloadTaskOnHeadersReceived(task, cb) {
  task.onHeadersReceived(cb);
}

export function downloadTaskOnProgressUpdate(task, cb) {
  task.onProgressUpdate(cb);
}

// UploadTask

export function uploadTaskAbort(task) {
  task.abort();
}

export function uploadTaskOffHeadersReceived(task, cb) {
  task.offHeadersReceived(cb);
}

export function uploadTaskOffProgressUpdate(task, cb) {
  task.offProgressUpdate(cb);
}

export function uploadTaskOnHeadersReceived(task, cb) {
  task.onHeadersReceived(cb);
}

export function uploadTaskOnProgressUpdate(task, cb) {
  task.onProgressUpdate(cb);
}

export function uploadFileWithTask(u, fp, n, h, fd, t, cb) {
  return taskResult(resolve =>
    wx.uploadFile({
      url: u,
      filePath: fp,
      name: n,
      header: h,
      formData: fd,
      timeout: t,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  );
}

// Socket APIs

export function createTCPSocket(options) {
  return wx.createTCPSocket(options);
}

export function tcpSocketBindWifi(socket) {
  socket.bindWifi();
}

export function tcpSocketClose(socket) {
  socket.close();
}

export function tcpSocketConnect(socket, address, port) {
  socket.connect({ address, port });
}

export function tcpSocketWrite(socket, data) {
  socket.write(data);
}

export function tcpSocketOffBindWifi(socket, cb) {
  socket.offBindWifi(cb);
}

export function tcpSocketOffClose(socket, cb) {
  socket.offClose(cb);
}

export function tcpSocketOffConnect(socket, cb) {
  socket.offConnect(cb);
}

export function tcpSocketOffError(socket, cb) {
  socket.offError(cb);
}

export function tcpSocketOffMessage(socket, cb) {
  socket.offMessage(cb);
}

export function tcpSocketOnBindWifi(socket, cb) {
  socket.onBindWifi(cb);
}

export function tcpSocketOnClose(socket, cb) {
  socket.onClose(cb);
}

export function tcpSocketOnConnect(socket, cb) {
  socket.onConnect(cb);
}

export function tcpSocketOnError(socket, cb) {
  socket.onError(cb);
}

export function tcpSocketOnMessage(socket, cb) {
  socket.onMessage(cb);
}

export function createUDPSocket(options) {
  return wx.createUDPSocket(options);
}

export function udpSocketBind(socket, port) {
  socket.bind({ port });
}

export function udpSocketClose(socket) {
  socket.close();
}

export function udpSocketConnect(socket, address, port) {
  socket.connect({ address, port });
}

export function udpSocketSend(socket, address, port, message) {
  socket.send({ address, port, message });
}

export function udpSocketSetTTL(socket, ttl) {
  socket.setTTL({ ttl });
}

export function udpSocketWrite(socket, data) {
  socket.write(data);
}

export function udpSocketOffClose(socket, cb) {
  socket.offClose(cb);
}

export function udpSocketOffError(socket, cb) {
  socket.offError(cb);
}

export function udpSocketOffListened(socket, cb) {
  socket.offListening(cb);
}

export function udpSocketOnListening(socket, cb) {
  socket.onListening(cb);
}

export function udpSocketOnMessage(socket, cb) {
  socket.onMessage(cb);
}

export function udpSocketOffListening(socket, cb) {
  socket.offListening(cb);
}

export function udpSocketOffMessage(socket, cb) {
  socket.offMessage(cb);
}

export function udpSocketOnClose(socket, cb) {
  socket.onClose(cb);
}

export function udpSocketOnError(socket, cb) {
  socket.onError(cb);
}

// mDNS Service Discovery

export function startLocalServiceDiscovery(options) {
  wx.startLocalServiceDiscovery(options);
}

export function stopLocalServiceDiscovery() {
  wx.stopLocalServiceDiscovery();
}

export function onLocalServiceResolveFail(cb) {
  wx.onLocalServiceResolveFail(cb);
}

export function onLocalServiceLost(cb) {
  wx.onLocalServiceLost(cb);
}

export function onLocalServiceFound(cb) {
  wx.onLocalServiceFound(cb);
}

export function onLocalServiceDiscoveryStop(cb) {
  wx.onLocalServiceDiscoveryStop(cb);
}

export function offLocalServiceResolveFail(cb) {
  wx.offLocalServiceResolveFail(cb);
}

export function offLocalServiceLost(cb) {
  wx.offLocalServiceLost(cb);
}

export function offLocalServiceFound(cb) {
  wx.offLocalServiceFound(cb);
}

export function offLocalServiceDiscoveryStop(cb) {
  wx.offLocalServiceDiscoveryStop(cb);
}

// VoIP Real-time Voice

export function updateVoIPChatMuteConfig(config) {
  wx.updateVoIPChatMuteConfig(config);
}

export function subscribeVoIPVideoMembers(config) {
  wx.subscribeVoIPVideoMembers(config);
}

export function setEnable1v1Chat(config) {
  wx.setEnable1v1Chat(config);
}

export function onVoIPVideoMembersChanged(cb) {
  wx.onVoIPVideoMembersChanged(cb);
}

export function onVoIPChatStateChanged(cb) {
  wx.onVoIPChatStateChanged(cb);
}

export function onVoIPChatSpeakersChanged(cb) {
  wx.onVoIPChatSpeakersChanged(cb);
}

export function onVoIPChatMembersChanged(cb) {
  wx.onVoIPChatMembersChanged(cb);
}

export function onVoIPChatInterrupted(cb) {
  wx.onVoIPChatInterrupted(cb);
}

export function offVoIPVideoMembersChanged(cb) {
  wx.offVoIPVideoMembersChanged(cb);
}

export function offVoIPChatStateChanged(cb) {
  wx.offVoIPChatStateChanged(cb);
}

export function offVoIPChatSpeakersChanged(cb) {
  wx.offVoIPChatSpeakersChanged(cb);
}

export function offVoIPChatMembersChanged(cb) {
  wx.offVoIPChatMembersChanged(cb);
}

export function offVoIPChatInterrupted(cb) {
  wx.offVoIPChatInterrupted(cb);
}

export function joinVoIPChat(config, cb) {
  return new Promise(resolve => {
    wx.joinVoIPChat({
      ...config,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function join1v1Chat(config, cb) {
  return new Promise(resolve => {
    wx.join1v1Chat({
      ...config,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function exitVoIPChat(config, cb) {
  return new Promise(resolve => {
    wx.exitVoIPChat({
      ...config,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// Advanced Network

export function getNetworkType(cb) {
  return new Promise(resolve => {
    wx.getNetworkType({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getLocalIPAddress(options, cb) {
  return new Promise(resolve => {
    wx.getLocalIPAddress({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function onNetworkWeakChange(cb) {
  wx.onNetworkWeakChange(cb);
}

export function offNetworkWeakChange(cb) {
  wx.offNetworkWeakChange(cb);
}
