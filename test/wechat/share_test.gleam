import wechat/share

pub fn share_test() {
  let _ = share.update_share_menu
  let _ = share.show_share_menu
  let _ = share.hide_share_menu
  let _ = share.get_share_info
  let _ = share.share_app_message
  let _ = share.on_share_app_message
  let _ = share.off_share_app_message
  let _ = share.show_share_image_menu
  let _ = share.share_video_message
  let _ = share.share_to_official_account
  let _ = share.share_file_message
  let _ = share.share_file_message_named
  let _ = share.on_copy_url
  let _ = share.off_copy_url
  let _ = share.auth_private_message
}
