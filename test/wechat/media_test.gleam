import wechat/media

pub fn media_image_test() {
  let _ = media.choose_image
  let _ = media.preview_image
  let _ = media.get_image_info
  let _ = media.save_image_to_photos_album
  let _ = media.compress_image
  let _ = media.choose_message_file
}

pub fn media_video_test() {
  let _ = media.choose_video
  let _ = media.choose_media
  let _ = media.get_video_info
  let _ = media.edit_image
  let _ = media.crop_image
  let _ = media.compress_video
  let _ = media.open_video_editor
  let _ = media.save_video_to_photos_album
  let _ = media.check_device_support_hevc
  let _ = media.preview_media
}

pub fn media_recorder_test() {
  let _ = media.get_media_recorder
  let _ = media.create_media_recorder
  let _ = media.media_recorder_start
  let _ = media.media_recorder_pause
  let _ = media.media_recorder_resume
  let _ = media.media_recorder_stop
  let _ = media.media_recorder_request_frame
  let _ = media.media_recorder_on
  let _ = media.media_recorder_off
}

pub fn media_live_test() {
  let _ = media.create_live_player_context
  let _ = media.live_player_play
  let _ = media.live_player_stop
  let _ = media.live_player_mute
  let _ = media.live_player_request_full_screen
  let _ = media.live_player_exit_full_screen
  let _ = media.live_player_snapshot
  let _ = media.live_player_on
  let _ = media.live_player_off
  let _ = media.live_player_exit_background_playback
  let _ = media.live_player_exit_casting
  let _ = media.live_player_exit_picture_in_picture
  let _ = media.live_player_reconnect_casting
  let _ = media.live_player_start_casting
  let _ = media.live_player_switch_casting
  let _ = media.live_player_resume
}

pub fn media_pusher_test() {
  let _ = media.create_live_pusher_context
  let _ = media.live_pusher_start
  let _ = media.live_pusher_stop
  let _ = media.live_pusher_pause
  let _ = media.live_pusher_resume
  let _ = media.live_pusher_switch_camera
  let _ = media.live_pusher_snapshot
  let _ = media.live_pusher_on
  let _ = media.live_pusher_off
  let _ = media.live_pusher_pause_bgm
  let _ = media.live_pusher_play_bgm
  let _ = media.live_pusher_resume_bgm
  let _ = media.live_pusher_stop_bgm
  let _ = media.live_pusher_set_bgm_volume
  let _ = media.live_pusher_set_mic_volume
  let _ = media.live_pusher_set_zoom
  let _ = media.live_pusher_get_max_zoom
  let _ = media.live_pusher_apply_filter
  let _ = media.live_pusher_clear_filters
  let _ = media.live_pusher_apply_blusher_stick_makeup
  let _ = media.live_pusher_apply_eye_brow_makeup
  let _ = media.live_pusher_apply_eye_shadow_makeup
  let _ = media.live_pusher_apply_face_contour_makeup
  let _ = media.live_pusher_apply_lip_stick_makeup
  let _ = media.live_pusher_clear_makeups
  let _ = media.live_pusher_apply_sticker
  let _ = media.live_pusher_clear_stickers
  let _ = media.live_pusher_create_offscreen_canvas
  let _ = media.live_pusher_exit_picture_in_picture
  let _ = media.live_pusher_on_custom_renderer_event
  let _ = media.live_pusher_send_message
  let _ = media.live_pusher_start_preview
  let _ = media.live_pusher_stop_preview
  let _ = media.live_pusher_toggle_torch
}

pub fn media_container_test() {
  let _ = media.create_media_container
  let _ = media.media_container_add_track
  let _ = media.media_container_destroy
  let _ = media.media_container_export
  let _ = media.media_container_extract_data_source
  let _ = media.media_container_remove_track
}

pub fn media_decoder_test() {
  let _ = media.create_video_decoder
  let _ = media.video_decoder_get_frame_data
  let _ = media.video_decoder_off
  let _ = media.video_decoder_on
  let _ = media.video_decoder_remove
  let _ = media.video_decoder_seek
  let _ = media.video_decoder_start
  let _ = media.video_decoder_stop
}

pub fn media_voice_test() {
  let _ = media.stop_voice
  let _ = media.play_voice
  let _ = media.pause_voice
}

pub fn media_audio_context_test() {
  let _ = media.create_audio_context
  let _ = media.audio_context_pause
  let _ = media.audio_context_play
  let _ = media.audio_context_seek
  let _ = media.audio_context_set_src
}

pub fn media_audio_player_test() {
  let _ = media.create_media_audio_player
  let _ = media.media_audio_player_add_audio_source
  let _ = media.media_audio_player_destroy
  let _ = media.media_audio_player_remove_audio_source
  let _ = media.media_audio_player_start
  let _ = media.media_audio_player_stop
}
