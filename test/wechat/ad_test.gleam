import wechat/ad

pub fn interstitial_ad_test() {
  let _ = ad.create_interstitial_ad
  let _ = ad.interstitial_ad_destroy
  let _ = ad.interstitial_ad_load
  let _ = ad.interstitial_ad_off_close
  let _ = ad.interstitial_ad_off_error
  let _ = ad.interstitial_ad_off_load
  let _ = ad.interstitial_ad_on_close
  let _ = ad.interstitial_ad_on_error
  let _ = ad.interstitial_ad_on_load
  let _ = ad.interstitial_ad_show
}

pub fn rewarded_video_ad_test() {
  let _ = ad.create_rewarded_video_ad
  let _ = ad.rewarded_video_ad_destroy
  let _ = ad.rewarded_video_ad_load
  let _ = ad.rewarded_video_ad_off_close
  let _ = ad.rewarded_video_ad_off_error
  let _ = ad.rewarded_video_ad_off_load
  let _ = ad.rewarded_video_ad_on_close
  let _ = ad.rewarded_video_ad_on_error
  let _ = ad.rewarded_video_ad_on_load
  let _ = ad.rewarded_video_ad_show
}

pub fn splash_ad_test() {
  let _ = ad.get_show_splash_ad_status
}
