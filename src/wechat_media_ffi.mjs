import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function chooseImage(c, st, s, cb) {
  return new Promise(resolve => {
    wx.chooseImage({
      count: c,
      sizeType: st,
      sourceType: s,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function previewImage(u, c, cb) {
  return new Promise(resolve => {
    wx.previewImage({
      urls: u,
      current: c,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getImageInfo(s, cb) {
  return new Promise(resolve => {
    wx.getImageInfo({
      src: s,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function saveImageToPhotosAlbum(fp, cb) {
  return new Promise(resolve => {
    wx.saveImageToPhotosAlbum({
      filePath: fp,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function compressImage(s, q, cb) {
  return new Promise(resolve => {
    wx.compressImage({
      src: s,
      quality: q,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function chooseMessageFile(c, t, e, cb) {
  return new Promise(resolve => {
    wx.chooseMessageFile({
      count: c,
      type: t,
      extension: e,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function createInnerAudioContext() {
  return wx.createInnerAudioContext();
}

export function playVoiceAsync(fp, d, cb) {
  return new Promise(resolve => {
    wx.playVoice({
      filePath: fp,
      duration: d,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function pauseVoiceAsync(cb) {
  return new Promise(resolve => {
    wx.pauseVoice({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopVoiceAsync(cb) {
  return new Promise(resolve => {
    wx.stopVoice({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setInnerAudioSrc(ctx, s) {
  ctx.src = s;
}

export function setInnerAudioStartTime(ctx, startTime) {
  ctx.startTime = startTime;
}

export function setInnerAudioAutoplay(ctx, autoplay) {
  ctx.autoplay = autoplay;
}

export function setInnerAudioLoop(ctx, loop) {
  ctx.loop = loop;
}

export function setInnerAudioObeyMuteSwitch(ctx, obeyMuteSwitch) {
  ctx.obeyMuteSwitch = obeyMuteSwitch;
}

export function setInnerAudioVolume(ctx, volume) {
  ctx.volume = volume;
}

export function setInnerAudioPlaybackRate(ctx, playbackRate) {
  ctx.playbackRate = playbackRate;
}

export function getInnerAudioDuration(ctx) {
  return ctx.duration;
}

export function getInnerAudioCurrentTime(ctx) {
  return ctx.currentTime;
}

export function getInnerAudioPaused(ctx) {
  return ctx.paused;
}

export function getInnerAudioBuffered(ctx) {
  return ctx.buffered;
}

export function innerAudioPlay(ctx) {
  ctx.play();
}

export function innerAudioPause(ctx) {
  ctx.pause();
}

export function innerAudioStop(ctx) {
  ctx.stop();
}

export function innerAudioSeek(ctx, p) {
  ctx.seek(p);
}

export function innerAudioDestroy(ctx) {
  ctx.destroy();
}

export function setAudioSrc(ctx, s) {
  ctx.src = s;
}

export function audioPlay(ctx) {
  ctx.play();
}

export function audioPause(ctx) {
  ctx.pause();
}

export function audioSeek(ctx, p) {
  ctx.seek(p);
}

export function onInnerAudioPlay(ctx, cb) {
  ctx.onPlay(cb);
}

export function onInnerAudioPause(ctx, cb) {
  ctx.onPause(cb);
}

export function onInnerAudioStop(ctx, cb) {
  ctx.onStop(cb);
}

export function onInnerAudioEnded(ctx, cb) {
  ctx.onEnded(cb);
}

export function onInnerAudioError(ctx, cb) {
  ctx.onError(cb);
}

export function onInnerAudioTimeUpdate(ctx, cb) {
  ctx.onTimeUpdate(cb);
}

export function onInnerAudioCanplay(ctx, cb) {
  ctx.onCanplay(cb);
}

export function onInnerAudioWaiting(ctx, cb) {
  ctx.onWaiting(cb);
}

export function onInnerAudioSeeking(ctx, cb) {
  ctx.onSeeking(cb);
}

export function onInnerAudioSeeked(ctx, cb) {
  ctx.onSeeked(cb);
}

export function offInnerAudioPlay(ctx, cb) {
  ctx.offPlay(cb);
}

export function offInnerAudioPause(ctx, cb) {
  ctx.offPause(cb);
}

export function offInnerAudioStop(ctx, cb) {
  ctx.offStop(cb);
}

export function offInnerAudioEnded(ctx, cb) {
  ctx.offEnded(cb);
}

export function offInnerAudioError(ctx, cb) {
  ctx.offError(cb);
}

export function offInnerAudioTimeUpdate(ctx, cb) {
  ctx.offTimeUpdate(cb);
}

export function offInnerAudioCanplay(ctx, cb) {
  ctx.offCanplay(cb);
}

export function offInnerAudioWaiting(ctx, cb) {
  ctx.offWaiting(cb);
}

export function offInnerAudioSeeking(ctx, cb) {
  ctx.offSeeking(cb);
}

export function offInnerAudioSeeked(ctx, cb) {
  ctx.offSeeked(cb);
}

export function createVideoContext(id) {
  return wx.createVideoContext(id);
}

export function videoContextPlay(vc) {
  vc.play();
}

export function videoContextPause(vc) {
  vc.pause();
}

export function videoContextStop(vc) {
  vc.stop();
}

export function videoContextSeek(vc, p) {
  vc.seek(p);
}

export function videoContextPlaybackRate(vc, r) {
  vc.playbackRate(r);
}

export function videoContextRequestFullScreen(vc, direction) {
  vc.requestFullScreen({ direction });
}

export function videoContextExitFullScreen(vc) {
  vc.exitFullScreen();
}

export function videoContextRequestBackgroundPlayback(vc) {
  vc.requestBackgroundPlayback();
}

export function videoContextExitBackgroundPlayback(vc) {
  vc.exitBackgroundPlayback();
}

export function videoContextShowStatusBar(vc, s) {
  vc.showStatusBar(s);
}

export function videoContextHideStatusBar(vc) {
  vc.hideStatusBar();
}

export function videoContextSendDanmu(vc, t, c) {
  vc.sendDanmu(t, c);
}

// Camera Context

export function createCameraContext() {
  return wx.createCameraContext();
}

export function cameraContextStartRecord(cc, timeout, selfieMirror, cb) {
  return new Promise(resolve => {
    cc.startRecord({
      timeout: timeout,
      selfieMirror: selfieMirror,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cameraContextStopRecord(cc, cb) {
  return new Promise(resolve => {
    cc.stopRecord({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cameraContextTakePhoto(cc, quality, cb) {
  return new Promise(resolve => {
    cc.takePhoto({
      quality: quality,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cameraContextSetZoom(cc, zoom) {
  cc.setZoom({
    zoom: zoom
  });
}

export function cameraContextOnCameraFrame(cc, cb) {
  return cc.onCameraFrame(cb);
}

export function cameraFrameListenerStart(listener) {
  listener.start();
}

export function cameraFrameListenerStop(listener) {
  listener.stop();
}

// Recorder Manager

export function getRecorderManager() {
  return wx.getRecorderManager();
}

export function recorderManagerStart(rm, options) {
  rm.start(options);
}

export function recorderManagerPause(rm) {
  rm.pause();
}

export function recorderManagerResume(rm) {
  rm.resume();
}

export function recorderManagerStop(rm) {
  rm.stop();
}

export function recorderManagerOnStart(rm, cb) {
  rm.onStart(cb);
}

export function recorderManagerOnStop(rm, cb) {
  rm.onStop(cb);
}

export function recorderManagerOnPause(rm, cb) {
  rm.onPause(cb);
}

export function recorderManagerOnResume(rm, cb) {
  rm.onResume(cb);
}

export function recorderManagerOnError(rm, cb) {
  rm.onError(cb);
}

export function recorderManagerOnFrameRecorded(rm, cb) {
  rm.onFrameRecorded(cb);
}

export function recorderManagerOnInterruptionBegin(rm, cb) {
  rm.onInterruptionBegin(cb);
}

export function recorderManagerOnInterruptionEnd(rm, cb) {
  rm.onInterruptionEnd(cb);
}

// BackgroundAudioManager

export function getBackgroundAudioManager() {
  return wx.getBackgroundAudioManager();
}

export function setBackgroundAudioManagerSrc(bam, src) {
  bam.src = src;
}

export function setBackgroundAudioManagerStartTime(bam, startTime) {
  bam.startTime = startTime;
}

export function setBackgroundAudioManagerTitle(bam, title) {
  bam.title = title;
}

export function setBackgroundAudioManagerEpname(bam, epname) {
  bam.epname = epname;
}

export function setBackgroundAudioManagerSinger(bam, singer) {
  bam.singer = singer;
}

export function setBackgroundAudioManagerCoverImgUrl(bam, coverImgUrl) {
  bam.coverImgUrl = coverImgUrl;
}

export function setBackgroundAudioManagerWebUrl(bam, webUrl) {
  bam.webUrl = webUrl;
}

export function setBackgroundAudioManagerProtocol(bam, protocol) {
  bam.protocol = protocol;
}

export function getBackgroundAudioManagerDuration(bam) {
  return bam.duration;
}

export function getBackgroundAudioManagerCurrentTime(bam) {
  return bam.currentTime;
}

export function getBackgroundAudioManagerPaused(bam) {
  return bam.paused;
}

export function getBackgroundAudioManagerBuffered(bam) {
  return bam.buffered;
}

export function backgroundAudioManagerPlay(bam) {
  bam.play();
}

export function backgroundAudioManagerPause(bam) {
  bam.pause();
}

export function backgroundAudioManagerStop(bam) {
  bam.stop();
}

export function backgroundAudioManagerSeek(bam, position) {
  bam.seek(position);
}

export function backgroundAudioManagerOnCanplay(bam, cb) {
  bam.onCanplay(cb);
}

export function backgroundAudioManagerOnEnded(bam, cb) {
  bam.onEnded(cb);
}

export function backgroundAudioManagerOnError(bam, cb) {
  bam.onError(cb);
}

export function backgroundAudioManagerOnNext(bam, cb) {
  bam.onNext(cb);
}

export function backgroundAudioManagerOnPause(bam, cb) {
  bam.onPause(cb);
}

export function backgroundAudioManagerOnPlay(bam, cb) {
  bam.onPlay(cb);
}

export function backgroundAudioManagerOnPrev(bam, cb) {
  bam.onPrev(cb);
}

export function backgroundAudioManagerOnSeeked(bam, cb) {
  bam.onSeeked(cb);
}

export function backgroundAudioManagerOnSeeking(bam, cb) {
  bam.onSeeking(cb);
}

export function backgroundAudioManagerOnStop(bam, cb) {
  bam.onStop(cb);
}

export function backgroundAudioManagerOnTimeUpdate(bam, cb) {
  bam.onTimeUpdate(cb);
}

export function backgroundAudioManagerOnWaiting(bam, cb) {
  bam.onWaiting(cb);
}

export function backgroundAudioManagerOffCanplay(bam, cb) {
  bam.offCanplay(cb);
}

export function backgroundAudioManagerOffEnded(bam, cb) {
  bam.offEnded(cb);
}

export function backgroundAudioManagerOffError(bam, cb) {
  bam.offError(cb);
}

export function backgroundAudioManagerOffNext(bam, cb) {
  bam.offNext(cb);
}

export function backgroundAudioManagerOffPause(bam, cb) {
  bam.offPause(cb);
}

export function backgroundAudioManagerOffPlay(bam, cb) {
  bam.offPlay(cb);
}

export function backgroundAudioManagerOffPrev(bam, cb) {
  bam.offPrev(cb);
}

export function backgroundAudioManagerOffSeeked(bam, cb) {
  bam.offSeeked(cb);
}

export function backgroundAudioManagerOffSeeking(bam, cb) {
  bam.offSeeking(cb);
}

export function backgroundAudioManagerOffStop(bam, cb) {
  bam.offStop(cb);
}

export function backgroundAudioManagerOffTimeUpdate(bam, cb) {
  bam.offTimeUpdate(cb);
}

export function backgroundAudioManagerOffWaiting(bam, cb) {
  bam.offWaiting(cb);
}

// WebAudioContext

export function createWebAudioContext() {
  return wx.createWebAudioContext();
}

export function webAudioCreateAnalyser(wac) {
  return wac.createAnalyser();
}

export function webAudioCreateBiquadFilter(wac) {
  return wac.createBiquadFilter();
}

export function webAudioCreateBuffer(wac, numChannels, length, sampleRate) {
  return wac.createBuffer(numChannels, length, sampleRate);
}

export function webAudioCreateBufferSource(wac) {
  return wac.createBufferSource();
}

export function webAudioCreateChannelMerger(wac, inputs) {
  return wac.createChannelMerger(inputs);
}

export function webAudioCreateChannelSplitter(wac, outputs) {
  return wac.createChannelSplitter(outputs);
}

export function webAudioCreateConstantSource(wac) {
  return wac.createConstantSource();
}

export function webAudioCreateDelay(wac, maxDelay) {
  return wac.createDelay(maxDelay);
}

export function webAudioCreateDynamicsCompressor(wac) {
  return wac.createDynamicsCompressor();
}

export function webAudioCreateGain(wac) {
  return wac.createGain();
}

export function webAudioCreateIIRFilter(wac, feedforward, feedback) {
  return wac.createIIRFilter(feedforward, feedback);
}

export function webAudioCreateOscillator(wac) {
  return wac.createOscillator();
}

export function webAudioCreatePanner(wac) {
  return wac.createPanner();
}

export function webAudioCreatePeriodicWave(wac, options) {
  return wac.createPeriodicWave(options);
}

export function webAudioCreateScriptProcessor(wac, bufferSize, numInputs, numOutputs) {
  return wac.createScriptProcessor(bufferSize, numInputs, numOutputs);
}

export function webAudioCreateWaveShaper(wac, curve) {
  return wac.createWaveShaper(curve);
}

export function webAudioDecodeAudioData(wac, arrayBuffer, cb) {
  return new Promise(resolve => {
    wac.decodeAudioData(
      arrayBuffer,
      (res) => {
        if (cb) cb();
        resolve(new Ok(res))
      },
      (err) => {
        if (cb) cb();
        resolve(new Error(new WechatError(err.errMsg || 'Decode audio data failed')))
      }
    )
  })
}

export function webAudioClose(wac) {
  wac.close();
}

export function webAudioResume(wac) {
  wac.resume();
}

export function webAudioSuspend(wac) {
  wac.suspend();
}

// MediaRecorder - Screen Recording

export function getMediaRecorder() {
  return wx.getMediaRecorder();
}

export function mediaRecorderStart(recorder, options, cb) {
  return new Promise(resolve => {
    recorder.start({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mediaRecorderPause(recorder, cb) {
  return new Promise(resolve => {
    recorder.pause({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mediaRecorderResume(recorder, cb) {
  return new Promise(resolve => {
    recorder.resume({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mediaRecorderStop(recorder, cb) {
  return new Promise(resolve => {
    recorder.stop({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mediaRecorderRequestFrame(recorder) {
  return recorder.requestFrame();
}

export function mediaRecorderOn(recorder, event, cb) {
  recorder.on(event, cb);
}

export function mediaRecorderOff(recorder, event, cb) {
  recorder.off(event, cb);
}

// LivePlayer - Live Streaming Playback

export function createLivePlayerContext(id) {
  return wx.createLivePlayerContext(id);
}

export function livePlayerPlay(player) {
  player.play();
}

export function livePlayerStop(player) {
  player.stop();
}

export function livePlayerMute(player, m) {
  player.mute(m);
}

export function livePlayerRequestFullScreen(player, direction) {
  player.requestFullScreen({ direction });
}

export function livePlayerExitFullScreen(player) {
  player.exitFullScreen();
}

export function livePlayerSnapshot(player, cb) {
  return new Promise(resolve => {
    player.snapshot({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function livePlayerOn(player, event, cb) {
  player.on(event, cb);
}

export function livePlayerOff(player, event, cb) {
  player.off(event, cb);
}

// LivePusher - Live Streaming

export function createLivePusherContext(id) {
  return wx.createLivePusherContext(id);
}

export function livePusherStart(pusher) {
  pusher.start();
}

export function livePusherStop(pusher) {
  pusher.stop();
}

export function livePusherPause(pusher) {
  pusher.pause();
}

export function livePusherResume(pusher) {
  pusher.resume();
}

export function livePusherSwitchCamera(pusher) {
  pusher.switchCamera();
}

export function livePusherSnapshot(pusher, cb) {
  return new Promise(resolve => {
    pusher.snapshot({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function livePusherOn(pusher, event, cb) {
  pusher.on(event, cb);
}

export function livePusherOff(pusher, event, cb) {
  pusher.off(event, cb);
}

// Extended LivePlayer

export function livePlayerExitBackgroundPlayback(player) {
  player.exitBackgroundPlayback();
}

export function livePlayerExitCasting(player) {
  player.exitCasting();
}

export function livePlayerExitPictureInPicture(player) {
  player.exitPictureInPicture();
}

export function livePlayerReconnectCasting(player) {
  player.reconnectCasting();
}

export function livePlayerStartCasting(player) {
  player.startCasting();
}

export function livePlayerSwitchCasting(player) {
  player.switchCasting();
}

export function livePlayerResume(player) {
  player.resume();
}

// Extended LivePusher

export function livePusherPauseBGM(pusher) {
  pusher.pauseBGM();
}

export function livePusherPlayBGM(pusher) {
  pusher.playBGM();
}

export function livePusherResumeBGM(pusher) {
  pusher.resumeBGM();
}

export function livePusherStopBGM(pusher) {
  pusher.stopBGM();
}

export function livePusherSetBGMVolume(pusher, volume) {
  pusher.setBGMVolume({ volume });
}

export function livePusherSetMICVolume(pusher, volume) {
  pusher.setMICVolume({ volume });
}

export function livePusherSetZoom(pusher, zoom) {
  pusher.setZoom({ zoom });
}

export function livePusherGetMaxZoom(pusher, cb) {
  return new Promise(resolve => {
    pusher.getMaxZoom({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function livePusherApplyFilter(pusher, filter) {
  pusher.applyFilter(filter);
}

export function livePusherClearFilters(pusher) {
  pusher.clearFilters();
}

export function livePusherApplyBlusherStickMakeup(pusher, makeup) {
  pusher.applyBlusherStickMakeup(makeup);
}

export function livePusherApplyEyeBrowMakeup(pusher, makeup) {
  pusher.applyEyeBrowMakeup(makeup);
}

export function livePusherApplyEyeShadowMakeup(pusher, makeup) {
  pusher.applyEyeShadowMakeup(makeup);
}

export function livePusherApplyFaceContourMakeup(pusher, makeup) {
  pusher.applyFaceContourMakeup(makeup);
}

export function livePusherApplyLipStickMakeup(pusher, makeup) {
  pusher.applyLipStickMakeup(makeup);
}

export function livePusherClearMakeups(pusher) {
  pusher.clearMakeups();
}

export function livePusherApplySticker(pusher, sticker) {
  pusher.applySticker(sticker);
}

export function livePusherClearStickers(pusher) {
  pusher.clearStickers();
}

export function livePusherCreateOffscreenCanvas(pusher) {
  return pusher.createOffscreenCanvas();
}

export function livePusherExitPictureInPicture(pusher) {
  pusher.exitPictureInPicture();
}

export function livePusherOnCustomRendererEvent(pusher, cb) {
  pusher.onCustomRendererEvent(cb);
}

export function livePusherSendMessage(pusher, message) {
  pusher.sendMessage(message);
}

export function livePusherStartPreview(pusher) {
  pusher.startPreview();
}

export function livePusherStopPreview(pusher) {
  pusher.stopPreview();
}

export function livePusherToggleTorch(pusher) {
  pusher.toggleTorch();
}

// Extended VideoContext

export function videoContextExitCasting(vc) {
  vc.exitCasting();
}

export function videoContextExitPictureInPicture(vc) {
  vc.exitPictureInPicture();
}

export function videoContextReconnectCasting(vc) {
  vc.reconnectCasting();
}

export function videoContextStartCasting(vc) {
  vc.startCasting();
}

export function videoContextSwitchCasting(vc) {
  vc.switchCasting();
}

// MediaAudioPlayer

export function createMediaAudioPlayer() {
  return wx.createMediaAudioPlayer();
}

export function mediaAudioPlayerAddAudioSource(player, source) {
  player.addAudioSource(source);
}

export function mediaAudioPlayerDestroy(player) {
  player.destroy();
}

export function mediaAudioPlayerRemoveAudioSource(player, source) {
  player.removeAudioSource(source);
}

export function mediaAudioPlayerStart(player) {
  player.start();
}

export function mediaAudioPlayerStop(player) {
  player.stop();
}

// MediaContainer - 音视频合成

export function createMediaContainer(options) {
  return wx.createMediaContainer(options);
}

export function mediaContainerAddTrack(container, track) {
  container.addTrack(track);
}

export function mediaContainerDestroy(container) {
  container.destroy();
}

export function mediaContainerExport(container, options, cb) {
  return new Promise(resolve => {
    container.export({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mediaContainerExtractDataSource(container, source, options, cb) {
  return new Promise(resolve => {
    container.extractDataSource({
      ...source,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function mediaContainerRemoveTrack(container, track) {
  container.removeTrack(track);
}

// VideoDecoder - 视频解码器

export function createVideoDecoder(options) {
  return wx.createVideoDecoder(options);
}

export function videoDecoderGetFrameData(decoder, cb) {
  return new Promise(resolve => {
    decoder.getFrameData({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function videoDecoderOff(decoder, event, cb) {
  decoder.off(event, cb);
}

export function videoDecoderOn(decoder, event, cb) {
  decoder.on(event, cb);
}

export function videoDecoderRemove(decoder) {
  decoder.remove();
}

export function videoDecoderSeek(decoder, time) {
  decoder.seek({ time });
}

export function videoDecoderStart(decoder) {
  decoder.start();
}

export function videoDecoderStop(decoder) {
  decoder.stop();
}

export function audioContextPause(ctx) {
  ctx.pause();
}

export function audioContextPlay(ctx) {
  ctx.play();
}

export function audioContextSeek(ctx, position) {
  ctx.seek({ position });
}

export function audioContextSetSrc(ctx, src) {
  ctx.setSrc(src);
}

export function createAudioContext(id) {
  return wx.createAudioContext(id);
}

// Voice (旧音频API)

export function stopVoice() {
  wx.stopVoice();
}

export function playVoice() {
  wx.playVoice();
}

export function pauseVoice() {
  wx.pauseVoice();
}


// Video Editing

export function editImage(src, options, cb) {
  return new Promise(resolve => {
    wx.editImage({
      src,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function cropImage(src, options, cb) {
  return new Promise(resolve => {
    wx.cropImage({
      src,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function compressVideo(src, options, cb) {
  return new Promise(resolve => {
    wx.compressVideo({
      src,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function openVideoEditor(src, options, cb) {
  return new Promise(resolve => {
    wx.openVideoEditor({
      src,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function saveVideoToPhotosAlbum(filePath, cb) {
  return new Promise(resolve => {
    wx.saveVideoToPhotosAlbum({
      filePath,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function chooseVideo(options, cb) {
  return new Promise(resolve => {
    wx.chooseVideo({
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function chooseMedia(count, mediaType, sourceType, maxDuration, camera, cb) {
  return new Promise(resolve => {
    wx.chooseMedia({
      count,
      mediaType,
      sourceType,
      maxDuration,
      camera,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getVideoInfo(src, cb) {
  return new Promise(resolve => {
    wx.getVideoInfo({
      src,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function checkDeviceSupportHevc(cb) {
  return new Promise(resolve => {
    wx.checkDeviceSupportHevc({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function previewMedia(urls, current, showMenu, cb) {
  return new Promise(resolve => {
    wx.previewMedia({
      urls,
      current,
      showMenu,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

// Phase 3: Media APIs
export function getAvailableAudioSources(cb) {
  return new Promise(resolve => {
    wx.getAvailableAudioSources({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function setInnerAudioOption(mixWithOthers, obeyMuteSwitch, cb) {
  return new Promise(resolve => {
    wx.setInnerAudioOption({
      mixWithOthers,
      obeyMuteSwitch,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function startRecord(cb) {
  return new Promise(resolve => {
    wx.startRecord({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function stopRecord(cb) {
  return new Promise(resolve => {
    wx.stopRecord({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function createMediaRecorder(component, options) {
  return wx.createMediaRecorder(component, options)
}
