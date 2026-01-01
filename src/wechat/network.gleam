//// network module provides network request bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/network/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type WechatResultCallback, type JsObject, type WechatCallback, type WechatResult}

/// `wx.downloadFile`
/// Download a file from the network
///
@external(javascript, "../wechat_network_ffi.mjs", "downloadFile")
pub fn download_file(
  url u: String,
  header h: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.connectSocket`
/// Create a WebSocket connection
///
@external(javascript, "../wechat_network_ffi.mjs", "connectSocket")
pub fn connect_socket(
  url u: String,
  header h: JsObject,
  protocols p: List(String),
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onSocketOpen`
/// Listen for WebSocket connection opening events
///
@external(javascript, "../wechat_network_ffi.mjs", "onSocketOpen")
pub fn on_socket_open(callback cb: WechatResultCallback) -> Nil

/// `wx.onSocketError`
/// Listen for WebSocket error events
///
@external(javascript, "../wechat_network_ffi.mjs", "onSocketError")
pub fn on_socket_error(callback cb: WechatResultCallback) -> Nil

/// `wx.onSocketMessage`
/// Listen for WebSocket message events
///
@external(javascript, "../wechat_network_ffi.mjs", "onSocketMessage")
pub fn on_socket_message(callback cb: WechatResultCallback) -> Nil

/// `wx.onSocketClose`
/// Listen for WebSocket connection closing events
///
@external(javascript, "../wechat_network_ffi.mjs", "onSocketClose")
pub fn on_socket_close(callback cb: WechatResultCallback) -> Nil

/// `wx.sendSocketMessage`
/// Send data through WebSocket connection
///
@external(javascript, "../wechat_network_ffi.mjs", "sendSocketMessage")
pub fn send_socket_message(
  data d: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.closeSocket`
/// Close WebSocket connection
///
@external(javascript, "../wechat_network_ffi.mjs", "closeSocket")
pub fn close_socket(
  code c: Int,
  reason r: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onNetworkStatusChange`
/// Listen for network status change events
///
@external(javascript, "../wechat_network_ffi.mjs", "onNetworkStatusChange")
pub fn on_network_status_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offNetworkStatusChange`
/// Cancel listening for network status change events
///
@external(javascript, "../wechat_network_ffi.mjs", "offNetworkStatusChange")
pub fn off_network_status_change(callback cb: WechatResultCallback) -> Nil

/// `wx.request`
/// Initiate an HTTP request
///
@external(javascript, "../wechat_network_ffi.mjs", "request")
pub fn request(
  url u: String,
  method m: String,
  data d: JsObject,
  header h: JsObject,
  timeout t: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `RequestTask.abort`
/// Abort the request
///
@external(javascript, "../wechat_network_ffi.mjs", "requestTaskAbort")
pub fn request_task_abort(task: JsObject) -> Nil

/// `RequestTask.offHeadersReceived`
/// Cancel listening for headers received event
///
@external(javascript, "../wechat_network_ffi.mjs", "requestTaskOffHeadersReceived")
pub fn request_task_off_headers_received(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `RequestTask.onChunkReceived`
/// Listen for chunk received event
///
@external(javascript, "../wechat_network_ffi.mjs", "requestTaskOnChunkReceived")
pub fn request_task_on_chunk_received(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `RequestTask.onHeadersReceived`
/// Listen for headers received event
///
@external(javascript, "../wechat_network_ffi.mjs", "requestTaskOnHeadersReceived")
pub fn request_task_on_headers_received(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `DownloadTask.abort`
/// Abort the download task
///
@external(javascript, "../wechat_network_ffi.mjs", "downloadTaskAbort")
pub fn download_task_abort(task: JsObject) -> Nil

/// `DownloadTask.offHeadersReceived`
/// Cancel listening for headers received event
///
@external(javascript, "../wechat_network_ffi.mjs", "downloadTaskOffHeadersReceived")
pub fn download_task_off_headers_received(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `DownloadTask.offProgressUpdate`
/// Cancel listening for progress update event
///
@external(javascript, "../wechat_network_ffi.mjs", "downloadTaskOffProgressUpdate")
pub fn download_task_off_progress_update(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `DownloadTask.onHeadersReceived`
/// Listen for headers received event
///
@external(javascript, "../wechat_network_ffi.mjs", "downloadTaskOnHeadersReceived")
pub fn download_task_on_headers_received(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `DownloadTask.onProgressUpdate`
/// Listen for progress update event
///
@external(javascript, "../wechat_network_ffi.mjs", "downloadTaskOnProgressUpdate")
pub fn download_task_on_progress_update(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `UploadTask.abort`
/// Abort the upload task
///
@external(javascript, "../wechat_network_ffi.mjs", "uploadTaskAbort")
pub fn upload_task_abort(task: JsObject) -> Nil

/// `UploadTask.offHeadersReceived`
/// Cancel listening for headers received event
///
@external(javascript, "../wechat_network_ffi.mjs", "uploadTaskOffHeadersReceived")
pub fn upload_task_off_headers_received(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `UploadTask.offProgressUpdate`
/// Cancel listening for progress update event
///
@external(javascript, "../wechat_network_ffi.mjs", "uploadTaskOffProgressUpdate")
pub fn upload_task_off_progress_update(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `UploadTask.onHeadersReceived`
/// Listen for headers received event
///
@external(javascript, "../wechat_network_ffi.mjs", "uploadTaskOnHeadersReceived")
pub fn upload_task_on_headers_received(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// `UploadTask.onProgressUpdate`
/// Listen for progress update event
///
@external(javascript, "../wechat_network_ffi.mjs", "uploadTaskOnProgressUpdate")
pub fn upload_task_on_progress_update(
  task: JsObject,
  callback cb: WechatResultCallback,
) -> Nil

/// Socket APIs
///
/// TCPSocket type
///
pub type TCPSocket

/// UDPSocket type
///
pub type UDPSocket

/// `wx.createTCPSocket`
/// Create a TCP Socket instance
///
@external(javascript, "../wechat_network_ffi.mjs", "createTCPSocket")
pub fn create_tcp_socket(options o: JsObject) -> TCPSocket

/// TCPSocket.bindWifi
/// Bind TCP Socket to current wifi network
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketBindWifi")
pub fn tcp_socket_bind_wifi(socket: TCPSocket) -> Nil

/// TCPSocket.close
/// Close connection
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketClose")
pub fn tcp_socket_close(socket: TCPSocket) -> Nil

/// TCPSocket.connect
/// Connect to specified address
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketConnect")
pub fn tcp_socket_connect(
  socket: TCPSocket,
  address a: String,
  port p: Int,
) -> Nil

/// TCPSocket.write
/// Write data
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketWrite")
pub fn tcp_socket_write(socket: TCPSocket, data d: JsObject) -> Nil

/// TCPSocket.offBindWifi
/// Remove bind wifi event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOffBindWifi")
pub fn tcp_socket_off_bind_wifi(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.offClose
/// Remove close event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOffClose")
pub fn tcp_socket_off_close(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.offConnect
/// Remove connect event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOffConnect")
pub fn tcp_socket_off_connect(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.offError
/// Remove error event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOffError")
pub fn tcp_socket_off_error(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.offMessage
/// Remove message event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOffMessage")
pub fn tcp_socket_off_message(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.onBindWifi
/// Listen for bind wifi event
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOnBindWifi")
pub fn tcp_socket_on_bind_wifi(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.onClose
/// Listen for close event
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOnClose")
pub fn tcp_socket_on_close(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.onConnect
/// Listen for connect event
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOnConnect")
pub fn tcp_socket_on_connect(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.onError
/// Listen for error event
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOnError")
pub fn tcp_socket_on_error(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// TCPSocket.onMessage
/// Listen for message event
///
@external(javascript, "../wechat_network_ffi.mjs", "tcpSocketOnMessage")
pub fn tcp_socket_on_message(
  socket: TCPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// `wx.createUDPSocket`
/// Create a UDP Socket instance
///
@external(javascript, "../wechat_network_ffi.mjs", "createUDPSocket")
pub fn create_udp_socket(options o: JsObject) -> UDPSocket

/// UDPSocket.bind
/// Bind to a random port or specified port
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketBind")
pub fn udp_socket_bind(socket: UDPSocket, port p: Int) -> Nil

/// UDPSocket.close
/// Close UDP Socket
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketClose")
pub fn udp_socket_close(socket: UDPSocket) -> Nil

/// UDPSocket.connect
/// Pre-connect to specified IP and port
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketConnect")
pub fn udp_socket_connect(
  socket: UDPSocket,
  address a: String,
  port p: Int,
) -> Nil

/// UDPSocket.send
/// Send message to specified IP and port
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketSend")
pub fn udp_socket_send(
  socket: UDPSocket,
  address a: String,
  port p: Int,
  message m: JsObject,
) -> Nil

/// UDPSocket.setTTL
/// Set IP_TTL socket option
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketSetTTL")
pub fn udp_socket_set_ttl(socket: UDPSocket, ttl t: Int) -> Nil

/// UDPSocket.write
/// Write data
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketWrite")
pub fn udp_socket_write(socket: UDPSocket, data d: JsObject) -> Nil

/// UDPSocket.offClose
/// Remove close event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOffClose")
pub fn udp_socket_off_close(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// UDPSocket.offError
/// Remove error event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOffError")
pub fn udp_socket_off_error(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// UDPSocket.offListening
/// Remove listening event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOffListened")
pub fn udp_socket_off_listened(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// UDPSocket.offMessage
/// Remove message event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOffMessage")
pub fn udp_socket_off_message(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// UDPSocket.onClose
/// Listen for close event
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOnClose")
pub fn udp_socket_on_close(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// UDPSocket.onError
/// Listen for error event
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOnError")
pub fn udp_socket_on_error(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// UDPSocket.onListening
/// Listen for listening event
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOnListening")
pub fn udp_socket_on_listening(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// UDPSocket.onMessage
/// Listen for message event
///
@external(javascript, "../wechat_network_ffi.mjs", "udpSocketOnMessage")
pub fn udp_socket_on_message(
  socket: UDPSocket,
  callback cb: WechatResultCallback,
) -> Nil

/// mDNS Service Discovery
///
/// `wx.startLocalServiceDiscovery`
/// Start searching for mDNS services
///
@external(javascript, "../wechat_network_ffi.mjs", "startLocalServiceDiscovery")
pub fn start_local_service_discovery(options o: JsObject) -> Nil

/// `wx.stopLocalServiceDiscovery`
/// Stop searching for mDNS services
///
@external(javascript, "../wechat_network_ffi.mjs", "stopLocalServiceDiscovery")
pub fn stop_local_service_discovery() -> Nil

/// `wx.onLocalServiceResolveFail`
/// Listen for mDNS service resolve fail event
///
@external(javascript, "../wechat_network_ffi.mjs", "onLocalServiceResolveFail")
pub fn on_local_service_resolve_fail(callback cb: WechatResultCallback) -> Nil

/// `wx.onLocalServiceLost`
/// Listen for mDNS service lost event
///
@external(javascript, "../wechat_network_ffi.mjs", "onLocalServiceLost")
pub fn on_local_service_lost(callback cb: WechatResultCallback) -> Nil

/// `wx.onLocalServiceFound`
/// Listen for mDNS service found event
///
@external(javascript, "../wechat_network_ffi.mjs", "onLocalServiceFound")
pub fn on_local_service_found(callback cb: WechatResultCallback) -> Nil

/// `wx.onLocalServiceDiscoveryStop`
/// Listen for mDNS service discovery stop event
///
@external(javascript, "../wechat_network_ffi.mjs", "onLocalServiceDiscoveryStop")
pub fn on_local_service_discovery_stop(callback cb: WechatResultCallback) -> Nil

/// `wx.offLocalServiceResolveFail`
/// Remove mDNS service resolve fail event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offLocalServiceResolveFail")
pub fn off_local_service_resolve_fail(callback cb: WechatResultCallback) -> Nil

/// `wx.offLocalServiceLost`
/// Remove mDNS service lost event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offLocalServiceLost")
pub fn off_local_service_lost(callback cb: WechatResultCallback) -> Nil

/// `wx.offLocalServiceFound`
/// Remove mDNS service found event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offLocalServiceFound")
pub fn off_local_service_found(callback cb: WechatResultCallback) -> Nil

/// `wx.offLocalServiceDiscoveryStop`
/// Remove mDNS service discovery stop event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offLocalServiceDiscoveryStop")
pub fn off_local_service_discovery_stop(callback cb: WechatResultCallback) -> Nil

/// VoIP Real-time Voice
///
/// `wx.updateVoIPChatMuteConfig`
/// Update VoIP mute configuration
///
@external(javascript, "../wechat_network_ffi.mjs", "updateVoIPChatMuteConfig")
pub fn update_voip_chat_mute_config(config c: JsObject) -> Nil

/// `wx.subscribeVoIPVideoMembers`
/// Subscribe to VoIP video members
///
@external(javascript, "../wechat_network_ffi.mjs", "subscribeVoIPVideoMembers")
pub fn subscribe_voip_video_members(config c: JsObject) -> Nil

/// `wx.setEnable1v1Chat`
/// Enable 1v1 chat
///
@external(javascript, "../wechat_network_ffi.mjs", "setEnable1v1Chat")
pub fn set_enable_1v1_chat(config c: JsObject) -> Nil

/// `wx.onVoIPVideoMembersChanged`
/// Listen for VoIP video members changed event
///
@external(javascript, "../wechat_network_ffi.mjs", "onVoIPVideoMembersChanged")
pub fn on_voip_video_members_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.onVoIPChatStateChanged`
/// Listen for VoIP chat state changed event
///
@external(javascript, "../wechat_network_ffi.mjs", "onVoIPChatStateChanged")
pub fn on_voip_chat_state_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.onVoIPChatSpeakersChanged`
/// Listen for VoIP chat speakers changed event
///
@external(javascript, "../wechat_network_ffi.mjs", "onVoIPChatSpeakersChanged")
pub fn on_voip_chat_speakers_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.onVoIPChatMembersChanged`
/// Listen for VoIP chat members changed event
///
@external(javascript, "../wechat_network_ffi.mjs", "onVoIPChatMembersChanged")
pub fn on_voip_chat_members_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.onVoIPChatInterrupted`
/// Listen for VoIP chat interrupted event
///
@external(javascript, "../wechat_network_ffi.mjs", "onVoIPChatInterrupted")
pub fn on_voip_chat_interrupted(callback cb: WechatResultCallback) -> Nil

/// `wx.offVoIPVideoMembersChanged`
/// Remove VoIP video members changed event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offVoIPVideoMembersChanged")
pub fn off_voip_video_members_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.offVoIPChatStateChanged`
/// Remove VoIP chat state changed event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offVoIPChatStateChanged")
pub fn off_voip_chat_state_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.offVoIPChatSpeakersChanged`
/// Remove VoIP chat speakers changed event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offVoIPChatSpeakersChanged")
pub fn off_voip_chat_speakers_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.offVoIPChatMembersChanged`
/// Remove VoIP chat members changed event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offVoIPChatMembersChanged")
pub fn off_voip_chat_members_changed(callback cb: WechatResultCallback) -> Nil

/// `wx.offVoIPChatInterrupted`
/// Remove VoIP chat interrupted event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offVoIPChatInterrupted")
pub fn off_voip_chat_interrupted(callback cb: WechatResultCallback) -> Nil

/// `wx.joinVoIPChat`
/// Join VoIP chat room
///
@external(javascript, "../wechat_network_ffi.mjs", "joinVoIPChat")
pub fn join_voip_chat(
  config c: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.join1v1Chat`
/// Join 1v1 VoIP chat
///
@external(javascript, "../wechat_network_ffi.mjs", "join1v1Chat")
pub fn join_1v1_chat(
  config c: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.exitVoIPChat`
/// Exit VoIP chat
///
@external(javascript, "../wechat_network_ffi.mjs", "exitVoIPChat")
pub fn exit_voip_chat(
  config c: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// Advanced Network
///
/// `wx.getNetworkType`
/// Get network type
///
@external(javascript, "../wechat_network_ffi.mjs", "getNetworkType")
pub fn get_network_type(complete cb: WechatCallback) -> Promise(WechatResult)

/// `wx.getLocalIPAddress`
/// Get local IP address
///
@external(javascript, "../wechat_network_ffi.mjs", "getLocalIPAddress")
pub fn get_local_ip_address(
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.onNetworkWeakChange`
/// Listen for network weak change event
///
@external(javascript, "../wechat_network_ffi.mjs", "onNetworkWeakChange")
pub fn on_network_weak_change(callback cb: WechatResultCallback) -> Nil

/// `wx.offNetworkWeakChange`
/// Remove network weak change event listener
///
@external(javascript, "../wechat_network_ffi.mjs", "offNetworkWeakChange")
pub fn off_network_weak_change(callback cb: WechatResultCallback) -> Nil
