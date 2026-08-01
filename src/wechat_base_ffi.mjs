import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function login(cb) {
    return new Promise(resolve => {
        wx.login({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function checkSession(cb) {
    return new Promise(resolve => {
        wx.checkSession({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function setStorage(k, v, cb) {
    return new Promise(resolve => {
        wx.setStorage({
            key: k,
            data: v,
            complete: cb,
            success(res) { resolve(new Ok({})) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getStorage(k, cb) {
    return new Promise(resolve => {
        wx.getStorage({
            key: k,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function removeStorage(k, cb) {
    return new Promise(resolve => {
        wx.removeStorage({
            key: k,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function clearStorage(cb) {
    return new Promise(resolve => {
        wx.clearStorage({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getStorageInfo(cb) {
    return new Promise(resolve => {
        wx.getStorageInfo({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function saveFile(p, cb) {
    return new Promise(resolve => {
        wx.saveFile({
            tempFilePath: p,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getFileInfo(p, a, cb) {
    return new Promise(resolve => {
        wx.getFileInfo({
            filePath: p,
            digestAlgorithm: a,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getSavedFileList(cb) {
    return new Promise(resolve => {
        wx.getSavedFileList({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function removeSavedFile(fp, cb) {
    return new Promise(resolve => {
        wx.removeSavedFile({
            filePath: fp,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function openDocument(p, t, cb) {
    return new Promise(resolve => {
        wx.openDocument({
            filePath: p,
            fileType: t,
            complete: cb,
            success() { resolve(new Ok({})) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function uploadFile(u, p, h, f, cb) {
    return new Promise(resolve => {
        wx.uploadFile({
            url: u,
            filePath: p,
            name: "file",
            header: h,
            formData: f,
            complete: cb,
            success() { resolve(new Ok({})) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

// getSystemInfo moved to wechat_ffi.mjs to avoid duplication

export function getSetting(s, cb) {
    return new Promise(resolve => {
        wx.getSetting({
            withSubscriptions: s,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function setClipboardData(d, cb) {
    return new Promise(resolve => {
        wx.setClipboardData({
            data: d,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getClipboardData(cb) {
    return new Promise(resolve => {
        wx.getClipboardData({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function setNavigationBarTitle(t, cb) {
    return new Promise(resolve => {
        wx.setNavigationBarTitle({
            title: t,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function vibrateShort(t, cb) {
    return new Promise(resolve => {
        wx.vibrateShort({
            type: t,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function vibrateLong(cb) {
    return new Promise(resolve => {
        wx.vibrateLong({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function showTabbar(a, cb) {
    return new Promise(resolve => {
        wx.showTabBar({
            animation: a,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function hideTabbar(a, cb) {
    return new Promise(resolve => {
        wx.hideTabBar({
            animation: a,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function showLoading(t, m, cb) {
    return new Promise(resolve => {
        wx.showLoading({
            title: t,
            mask: m,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function hideLoading(cb) {
    return new Promise(resolve => {
        wx.hideLoading({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function showToast(t, i, m, d, cb) {
    return new Promise(resolve => {
        wx.showToast({
            title: t,
            icon: i,
            mask: m,
            duration: d,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getPrivacySetting(cb) {
    return new Promise(resolve => {
        wx.getPrivacySetting({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getPrivacyContract(cb) {
    return new Promise(resolve => {
        wx.getPrivacyContract({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function switchTab(u, cb) {
    return new Promise(resolve => {
        wx.switchTab({
            url: u,
            complete: cb,
            success(res) { resolve(new Ok({})) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function reLaunch(u, cb) {
    return new Promise(resolve => {
        wx.reLaunch({
            url: u,
            complete: cb,
            success(res) { resolve(new Ok({})) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function navigateTo(u, cb) {
    return new Promise(resolve => {
        wx.navigateTo({
            url: u,
            complete: cb,
            success(res) { resolve(new Ok({})) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function navigateBack(d, cb) {
    return new Promise(resolve => {
        wx.navigateBack({
            delta: d,
            complete: cb,
            success(res) { resolve(new Ok({})) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function request(o) {
    return new Promise(resolve => {
        wx.request({
            ...o,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) },
        })
    })
}

export function requestPayment(o) {
    return new Promise(resolve => {
        wx.requestPayment({
            ...o,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) },
        })
    })
}

export function now() {
    return new Date();
}

export function ymd(dt) {
    return new Promise(resolve => {
        let y = dt.getFullYear();
        let m = dt.getMonth() + 1;
        let d = dt.getDate();

        let month = m < 10 ? `0${m}` : `${m}`;
        let day = d < 10 ? `0${d}` : `${d}`;
        resolve(new Ok(`${y}-${month}-${day}`));
    })
}

export function scanCode(st, cb) {
    return new Promise(resolve => {
        wx.scanCode({
            scanType: st,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getLocation(a, cb) {
    return new Promise(resolve => {
        wx.getLocation({
            altitude: a,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function chooseLocation(lat, lon, cb) {
    return new Promise(resolve => {
        wx.chooseLocation({
            latitude: lat,
            longitude: lon,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function openLocation(lat, lon, s, n, a, cb) {
    return new Promise(resolve => {
        wx.openLocation({
            latitude: lat,
            longitude: lon,
            scale: s,
            name: n,
            address: a,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function createGlobalPayment() {
    return wx.createGlobalPayment();
}

export function requestCommonPayment(o, cb) {
    return new Promise(resolve => {
        wx.requestCommonPayment({
            ...o,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function globalPaymentOpenMethodPicker(gp) {
    gp.openMethodPicker();
}

export function globalPaymentRequestGlobalPayment(gp, o) {
    gp.requestGlobalPayment(o);
}

export function globalPaymentAbort(gp) {
    gp.abort();
}

export function chooseAddress(cb) {
    return new Promise(resolve => {
        wx.chooseAddress({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getUserProfile(d, cb) {
    return new Promise(resolve => {
        wx.getUserProfile({
            desc: d,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getUserInfo(wc, l, cb) {
    return new Promise(resolve => {
        wx.getUserInfo({
            withCredentials: wc,
            lang: l,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function requestSubscribeMessage(t, cb) {
    return new Promise(resolve => {
        wx.requestSubscribeMessage({
            tmplIds: t,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function authorize(s, cb) {
    return new Promise(resolve => {
        wx.authorize({
            scope: s,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function openSetting(cb) {
    return new Promise(resolve => {
        wx.openSetting({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function makePhoneCall(pn, cb) {
    return new Promise(resolve => {
        wx.makePhoneCall({
            phoneNumber: pn,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function navigateToMiniProgram(a, p, ed, cb) {
    return new Promise(resolve => {
        wx.navigateToMiniProgram({
            appId: a,
            path: p,
            extraData: ed,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function navigateBackMiniProgram(ed, cb) {
    return new Promise(resolve => {
        wx.navigateBackMiniProgram({
            extraData: ed,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function exitMiniProgram(cb) {
    return new Promise(resolve => {
        wx.exitMiniProgram({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}


export function getPerformance() {
    return wx.getPerformance();
}

export function reportPerformance(name, duration, options) {
    wx.reportPerformance(name, duration, options);
}

export function reportEvent(name, data, options) {
    wx.reportEvent(name, data, options);
}

export function reportMonitor(name, value, options) {
    wx.reportMonitor(name, value, options);
}

export function reportAnalytics(eventId, data) {
    wx.reportAnalytics(eventId, data);
}

export function getExptInfoSync() {
    return wx.getExptInfoSync();
}

export function requestIdleCallback(callback, options) {
    return wx.requestIdleCallback(callback, options);
}

export function cancelIdleCallback(handle) {
    return wx.cancelIdleCallback(handle);
}

export function getUpdateManager() {
    return wx.getUpdateManager();
}

export function updateManagerApplyUpdate(um) {
    um.applyUpdate();
}

export function updateManagerOnCheckForUpdate(um, cb) {
    um.onCheckForUpdate(cb);
}

export function updateManagerOnUpdateFailed(um, cb) {
    um.onUpdateFailed(cb);
}

export function updateManagerOnUpdateReady(um, cb) {
    um.onUpdateReady(cb);
}

export function createWorker(scriptPath) {
    return wx.createWorker(scriptPath);
}

export function workerGetCameraFrameData(worker) {
    return worker.getCameraFrameData();
}

export function workerOnError(worker, cb) {
    worker.onError(cb);
}

export function workerOnMessage(worker, cb) {
    worker.onMessage(cb);
}

export function workerOnProcessKilled(worker, cb) {
    worker.onProcessKilled(cb);
}

export function workerPostMessage(worker, message, transferList) {
    worker.postMessage(message, transferList);
}

export function workerTerminate(worker) {
    worker.terminate();
}

export function workerTestOnProcessKilled(worker) {
    worker.testOnProcessKilled();
}

// Calendar & Contact

export function addPhoneRepeatCalendar(options, cb) {
    return new Promise(resolve => {
        wx.addPhoneRepeatCalendar({
            ...options,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function addPhoneCalendar(options, cb) {
    return new Promise(resolve => {
        wx.addPhoneCalendar({
            ...options,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function chooseContact(options, cb) {
    return new Promise(resolve => {
        wx.chooseContact({
            ...options,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function addPhoneContact(options, cb) {
    return new Promise(resolve => {
        wx.addPhoneContact({
            ...options,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

// SMS

export function sendSms(options, cb) {
    return new Promise(resolve => {
        wx.sendSms({
            ...options,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

// Encryption (Random)

export function getRandomValues(length) {
    wx.getRandomValues({ length });
}

// Advanced Storage (Batch)

export function createBufferURL(buffer) {
    return wx.createBufferURL(buffer);
}

export function revokeBufferURL(url) {
    wx.revokeBufferURL(url);
}

export function batchSetStorage(items, cb) {
    return new Promise(resolve => {
        wx.batchSetStorage({
            ...items,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function batchSetStorageSync(items) {
    wx.batchSetStorageSync(items);
}

export function batchGetStorage(keys, cb) {
    return new Promise(resolve => {
        wx.batchGetStorage({
            keyList: keys,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function batchGetStorageSync(keys) {
    return wx.batchGetStorageSync(keys);
}

// Ad Components

export function createInterstitialAd(options) {
    return wx.createInterstitialAd(options);
}

export function createRewardedVideoAd(options) {
    return wx.createRewardedVideoAd(options);
}

export function interstitialAdDestroy(ad) {
    ad.destroy();
}

export function interstitialAdLoad(ad, cb) {
    return new Promise(resolve => {
        ad.load({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function interstitialAdOffClose(ad, cb) {
    ad.offClose(cb);
}

export function interstitialAdOffError(ad, cb) {
    ad.offError(cb);
}

export function interstitialAdOffLoad(ad, cb) {
    ad.offLoad(cb);
}

export function interstitialAdOnClose(ad, cb) {
    ad.onClose(cb);
}

export function interstitialAdOnError(ad, cb) {
    ad.onError(cb);
}

export function interstitialAdOnLoad(ad, cb) {
    ad.onLoad(cb);
}

export function interstitialAdShow(ad, cb) {
    return new Promise(resolve => {
        ad.show({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function rewardedVideoAdDestroy(ad) {
    ad.destroy();
}

export function rewardedVideoAdLoad(ad, cb) {
    return new Promise(resolve => {
        ad.load({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function rewardedVideoAdOffClose(ad, cb) {
    ad.offClose(cb);
}

export function rewardedVideoAdOffError(ad, cb) {
    ad.offError(cb);
}

export function rewardedVideoAdOffLoad(ad, cb) {
    ad.offLoad(cb);
}

export function rewardedVideoAdOnClose(ad, cb) {
    ad.onClose(cb);
}

export function rewardedVideoAdOnError(ad, cb) {
    ad.onError(cb);
}

export function rewardedVideoAdOnLoad(ad, cb) {
    ad.onLoad(cb);
}

export function rewardedVideoAdShow(ad, cb) {
    return new Promise(resolve => {
        ad.show({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getShowSplashAdStatus(cb) {
    return new Promise(resolve => {
        wx.getShowSplashAdStatus({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

// Background Fetch

export function setBackgroundFetchToken(token) {
    wx.setBackgroundFetchToken(token);
}

export function onBackgroundFetchData(cb) {
    wx.onBackgroundFetchData(cb);
}

export function getBackgroundFetchToken(cb) {
    return new Promise(resolve => {
        wx.getBackgroundFetchToken({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getBackgroundFetchData(cb) {
    return new Promise(resolve => {
        wx.getBackgroundFetchData({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

// Subpackage Pre-download

export function preDownloadSubpackage(rootDir, name) {
    return wx.preDownloadSubpackage({ rootDir, name });
}

// User Crypto Manager

export function getUserCryptoManager() {
    return wx.getUserCryptoManager();
}

export function userCryptoManagerGetLatestUserKey(manager, cb) {
    return new Promise(resolve => {
        manager.getLatestUserKey({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function userCryptoManagerGetRandomValues(manager, length) {
    return manager.getRandomValues({ length });
}

// Custom Router

export function getRouter() {
    return wx.router;
}

export function routerAddRouteBuilder(router, name, builder) {
    router.addRouteBuilder(name, builder);
}

export function routerGetRouteContext(router) {
    return router.getRouteContext();
}

export function routerRemoveRouteBuilder(router, name) {
    router.removeRouteBuilder(name);
}

// App Event Listeners

export function onAppShow(cb) {
    wx.onAppShow(cb);
}

export function onAppHide(cb) {
    wx.onAppHide(cb);
}

export function onError(cb) {
    wx.onError(cb);
}

export function onAudioInterruptionBegin(cb) {
    wx.onAudioInterruptionBegin(cb);
}

export function onAudioInterruptionEnd(cb) {
    wx.onAudioInterruptionEnd(cb);
}

export function onThemeChange(cb) {
    wx.onThemeChange(cb);
}

export function onPageNotFound(cb) {
    wx.onPageNotFound(cb);
}

export function onUnhandledRejection(cb) {
    wx.onUnhandledRejection(cb);
}

export function onLazyLoadError(cb) {
    wx.onLazyLoadError(cb);
}

export function offAppShow(cb) {
    wx.offAppShow(cb);
}

export function offAppHide(cb) {
    wx.offAppHide(cb);
}

export function offError(cb) {
    wx.offError(cb);
}

export function offThemeChange(cb) {
    wx.offThemeChange(cb);
}

export function offPageNotFound(cb) {
    wx.offPageNotFound(cb);
}

export function offUnhandledRejection(cb) {
    wx.offUnhandledRejection(cb);
}

export function offLazyLoadError(cb) {
    wx.offLazyLoadError(cb);
}


// Phase 4: Privacy APIs
export function onNeedPrivacyAuthorization(cb) {
    wx.onNeedPrivacyAuthorization(cb)
}

export function openPrivacyContract(cb) {
    return new Promise(resolve => {
        wx.openPrivacyContract({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function requirePrivacyAuthorize(cb) {
    return new Promise(resolve => {
        wx.requirePrivacyAuthorize({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

// Phase 5: Route APIs
export function redirectTo(url, cb) {
    return new Promise(resolve => {
        wx.redirectTo({
            url,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function rewriteRoute(options, cb) {
    return new Promise(resolve => {
        wx.rewriteRoute({
            ...options,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

// Phase 10: Storage Sync Functions
export function setStorageSync(key, data) {
    wx.setStorageSync(key, data)
}

export function getStorageSync(key) {
    return wx.getStorageSync(key)
}

export function removeStorageSync(key) {
    wx.removeStorageSync(key)
}

export function clearStorageSync() {
    wx.clearStorageSync()
}

// Phase 17: Base/System (Remaining)

export function updateWeChatApp(cb) {
    return new Promise(resolve => {
        wx.updateWeChatApp({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function getApiCategory() {
    return wx.getApiCategory()
}

export function getEnvUserDataPath() {
    return wx.env.USER_DATA_PATH
}

// Phase 20: Location Advanced

export function startLocationUpdate(type, cb) {
    return new Promise(resolve => {
        wx.startLocationUpdate({
            type,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function startLocationUpdateBackground(type, cb) {
    return new Promise(resolve => {
        wx.startLocationUpdateBackground({
            type,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function stopLocationUpdate(cb) {
    return new Promise(resolve => {
        wx.stopLocationUpdate({
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function onLocationChange(cb) {
    wx.onLocationChange(cb)
}

export function offLocationChange(cb) {
    wx.offLocationChange(cb)
}

export function onLocationChangeError(cb) {
    wx.onLocationChangeError(cb)
}

export function offLocationChangeError(cb) {
    wx.offLocationChangeError(cb)
}

export function getFuzzyLocation(type, cb) {
    return new Promise(resolve => {
        wx.getFuzzyLocation({
            type,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function choosePoi(latitude, longitude, cb) {
    return new Promise(resolve => {
        wx.choosePoi({
            latitude,
            longitude,
            complete: cb,
            success(res) { resolve(new Ok(res)) },
            fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
        })
    })
}

export function requireSync(p) {
    return require(p)
}

export function requireAsync(p) {
    return new Promise(resolve => {
        require(p,
            (mod) => {
                resolve(new Ok(mod))
            },
            (err) => {
                resolve(new Error(new WechatError(err.errMsg)))
            })
    })
}

export function toExport(k, v) {
    module.exports[k] = v
}
