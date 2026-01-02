import wechat/audio

pub fn audio_test() {
  let _ = audio.create_inner_audio_context
  let _ = audio.get_available_audio_sources
  let _ = audio.set_inner_audio_option
  let _ = audio.play_voice
  let _ = audio.pause_voice
  let _ = audio.stop_voice
  let _ = audio.set_inner_audio_src
  let _ = audio.set_inner_audio_start_time
  let _ = audio.set_inner_audio_autoplay
  let _ = audio.set_inner_audio_loop
  let _ = audio.set_inner_audio_obey_mute_switch
  let _ = audio.set_inner_audio_volume
  let _ = audio.set_inner_audio_playback_rate
  let _ = audio.get_inner_audio_duration
  let _ = audio.get_inner_audio_current_time
  let _ = audio.get_inner_audio_paused
  let _ = audio.get_inner_audio_buffered
  let _ = audio.inner_audio_play
  let _ = audio.inner_audio_pause
  let _ = audio.inner_audio_stop
  let _ = audio.inner_audio_seek
  let _ = audio.inner_audio_destroy
  let _ = audio.on_inner_audio_play
  let _ = audio.on_inner_audio_pause
  let _ = audio.on_inner_audio_stop
  let _ = audio.on_inner_audio_ended
  let _ = audio.on_inner_audio_error
  let _ = audio.on_inner_audio_time_update
  let _ = audio.on_inner_audio_canplay
  let _ = audio.on_inner_audio_waiting
  let _ = audio.on_inner_audio_seeking
  let _ = audio.on_inner_audio_seeked
  let _ = audio.off_inner_audio_play
  let _ = audio.off_inner_audio_pause
  let _ = audio.off_inner_audio_stop
  let _ = audio.off_inner_audio_ended
  let _ = audio.off_inner_audio_error
  let _ = audio.off_inner_audio_time_update
  let _ = audio.off_inner_audio_canplay
  let _ = audio.off_inner_audio_waiting
  let _ = audio.off_inner_audio_seeking
  let _ = audio.off_inner_audio_seeked
}

pub fn audio_context_test() {
  let _ = audio.create_audio_context
  let _ = audio.set_audio_src
  let _ = audio.audio_play
  let _ = audio.audio_pause
  let _ = audio.audio_seek
}

pub fn web_audio_test() {
  let _ = audio.create_web_audio_context
  let _ = audio.web_audio_create_analyser
  let _ = audio.web_audio_create_biquad_filter
  let _ = audio.web_audio_create_buffer
  let _ = audio.web_audio_create_buffer_source
  let _ = audio.web_audio_create_channel_merger
  let _ = audio.web_audio_create_channel_splitter
  let _ = audio.web_audio_create_constant_source
  let _ = audio.web_audio_create_delay
  let _ = audio.web_audio_create_dynamics_compressor
  let _ = audio.web_audio_create_gain
  let _ = audio.web_audio_create_iir_filter
  let _ = audio.web_audio_create_oscillator
  let _ = audio.web_audio_create_panner
  let _ = audio.web_audio_create_periodic_wave
  let _ = audio.web_audio_create_script_processor
  let _ = audio.web_audio_create_wave_shaper
  let _ = audio.web_audio_decode_audio_data
  let _ = audio.web_audio_close
  let _ = audio.web_audio_resume
  let _ = audio.web_audio_suspend
}
