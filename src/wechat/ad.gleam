//// ad module provides ad component API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/ad/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{
  type JsObject, type WechatCallback, type WechatResult,
  type WechatResultCallback,
}

/// InterstitialAd type
///
pub type InterstitialAd

/// RewardedVideoAd type
///
pub type RewardedVideoAd

/// `wx.createInterstitialAd`
/// Create interstitial ad instance
///
@external(javascript, "../wechat_base_ffi.mjs", "createInterstitialAd")
pub fn create_interstitial_ad(options o: JsObject) -> InterstitialAd

/// `wx.createRewardedVideoAd`
/// Create rewarded video ad instance
///
@external(javascript, "../wechat_base_ffi.mjs", "createRewardedVideoAd")
pub fn create_rewarded_video_ad(options o: JsObject) -> RewardedVideoAd

/// InterstitialAd.destroy
/// Destroy ad instance
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdDestroy")
pub fn interstitial_ad_destroy(ad: InterstitialAd) -> Nil

/// InterstitialAd.load
/// Load ad
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdLoad")
pub fn interstitial_ad_load(
  ad: InterstitialAd,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// InterstitialAd.offClose
/// Remove close event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdOffClose")
pub fn interstitial_ad_off_close(
  ad: InterstitialAd,
  callback cb: WechatResultCallback,
) -> Nil

/// InterstitialAd.offError
/// Remove error event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdOffError")
pub fn interstitial_ad_off_error(
  ad: InterstitialAd,
  callback cb: WechatResultCallback,
) -> Nil

/// InterstitialAd.offLoad
/// Remove load event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdOffLoad")
pub fn interstitial_ad_off_load(
  ad: InterstitialAd,
  callback cb: WechatResultCallback,
) -> Nil

/// InterstitialAd.onClose
/// Listen for close event
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdOnClose")
pub fn interstitial_ad_on_close(
  ad: InterstitialAd,
  callback cb: WechatResultCallback,
) -> Nil

/// InterstitialAd.onError
/// Listen for error event
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdOnError")
pub fn interstitial_ad_on_error(
  ad: InterstitialAd,
  callback cb: WechatResultCallback,
) -> Nil

/// InterstitialAd.onLoad
/// Listen for load event
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdOnLoad")
pub fn interstitial_ad_on_load(
  ad: InterstitialAd,
  callback cb: WechatResultCallback,
) -> Nil

/// InterstitialAd.show
/// Show ad
///
@external(javascript, "../wechat_base_ffi.mjs", "interstitialAdShow")
pub fn interstitial_ad_show(
  ad: InterstitialAd,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// RewardedVideoAd.destroy
/// Destroy ad instance
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdDestroy")
pub fn rewarded_video_ad_destroy(ad: RewardedVideoAd) -> Nil

/// RewardedVideoAd.load
/// Load ad
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdLoad")
pub fn rewarded_video_ad_load(
  ad: RewardedVideoAd,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// RewardedVideoAd.offClose
/// Remove close event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdOffClose")
pub fn rewarded_video_ad_off_close(
  ad: RewardedVideoAd,
  callback cb: WechatResultCallback,
) -> Nil

/// RewardedVideoAd.offError
/// Remove error event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdOffError")
pub fn rewarded_video_ad_off_error(
  ad: RewardedVideoAd,
  callback cb: WechatResultCallback,
) -> Nil

/// RewardedVideoAd.offLoad
/// Remove load event listener
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdOffLoad")
pub fn rewarded_video_ad_off_load(
  ad: RewardedVideoAd,
  callback cb: WechatResultCallback,
) -> Nil

/// RewardedVideoAd.onClose
/// Listen for close event
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdOnClose")
pub fn rewarded_video_ad_on_close(
  ad: RewardedVideoAd,
  callback cb: WechatResultCallback,
) -> Nil

/// RewardedVideoAd.onError
/// Listen for error event
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdOnError")
pub fn rewarded_video_ad_on_error(
  ad: RewardedVideoAd,
  callback cb: WechatResultCallback,
) -> Nil

/// RewardedVideoAd.onLoad
/// Listen for load event
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdOnLoad")
pub fn rewarded_video_ad_on_load(
  ad: RewardedVideoAd,
  callback cb: WechatResultCallback,
) -> Nil

/// RewardedVideoAd.show
/// Show ad
///
@external(javascript, "../wechat_base_ffi.mjs", "rewardedVideoAdShow")
pub fn rewarded_video_ad_show(
  ad: RewardedVideoAd,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `wx.getShowSplashAdStatus`
/// Get splash ad status
///
@external(javascript, "../wechat_base_ffi.mjs", "getShowSplashAdStatus")
pub fn get_show_splash_ad_status(
  complete cb: WechatCallback,
) -> Promise(WechatResult)
