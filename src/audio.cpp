// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
bool is_audio_device_ready_() {
  return IsAudioDeviceReady();
}

// [[Rcpp::export]]
void set_master_volume_(float volume) {
  return SetMasterVolume(volume);
}

// [[Rcpp::export]]
float get_master_volume_() {
  return GetMasterVolume();
}

// [[Rcpp::export]]
Wave load_wave_(const char * file_name) {
  return LoadWave(file_name);
}

// [[Rcpp::export]]
bool is_wave_valid_(Wave wave) {
  return IsWaveValid(wave);
}

// [[Rcpp::export]]
Sound load_sound_(const char * file_name) {
  return LoadSound(file_name);
}

// [[Rcpp::export]]
Sound load_sound_from_wave_(Wave wave) {
  return LoadSoundFromWave(wave);
}

// [[Rcpp::export]]
Sound load_sound_alias_(Sound source) {
  return LoadSoundAlias(source);
}

// [[Rcpp::export]]
bool is_sound_valid_(Sound sound) {
  return IsSoundValid(sound);
}

// [[Rcpp::export]]
void unload_wave_(Wave wave) {
  return UnloadWave(wave);
}

// [[Rcpp::export]]
void unload_sound_(Sound sound) {
  return UnloadSound(sound);
}

// [[Rcpp::export]]
void unload_sound_alias_(Sound alias) {
  return UnloadSoundAlias(alias);
}

// [[Rcpp::export]]
bool export_wave_(Wave wave, const char * file_name) {
  return ExportWave(wave, file_name);
}

// [[Rcpp::export]]
bool export_wave_as_code_(Wave wave, const char * file_name) {
  return ExportWaveAsCode(wave, file_name);
}

// [[Rcpp::export]]
void play_sound_(Sound sound) {
  return PlaySound(sound);
}

// [[Rcpp::export]]
void stop_sound_(Sound sound) {
  return StopSound(sound);
}

// [[Rcpp::export]]
void pause_sound_(Sound sound) {
  return PauseSound(sound);
}

// [[Rcpp::export]]
void resume_sound_(Sound sound) {
  return ResumeSound(sound);
}

// [[Rcpp::export]]
bool is_sound_playing_(Sound sound) {
  return IsSoundPlaying(sound);
}

// [[Rcpp::export]]
void set_sound_volume_(Sound sound, float volume) {
  return SetSoundVolume(sound, volume);
}

// [[Rcpp::export]]
void set_sound_pitch_(Sound sound, float pitch) {
  return SetSoundPitch(sound, pitch);
}

// [[Rcpp::export]]
void set_sound_pan_(Sound sound, float pan) {
  return SetSoundPan(sound, pan);
}

// [[Rcpp::export]]
Music load_music_stream_(const char * file_name) {
  return LoadMusicStream(file_name);
}

// [[Rcpp::export]]
bool is_music_valid_(Music music) {
  return IsMusicValid(music);
}

// [[Rcpp::export]]
void unload_music_stream_(Music music) {
  return UnloadMusicStream(music);
}

// [[Rcpp::export]]
void play_music_stream_(Music music) {
  return PlayMusicStream(music);
}

// [[Rcpp::export]]
bool is_music_stream_playing_(Music music) {
  return IsMusicStreamPlaying(music);
}

// [[Rcpp::export]]
void update_music_stream_(Music music) {
  return UpdateMusicStream(music);
}

// [[Rcpp::export]]
void stop_music_stream_(Music music) {
  return StopMusicStream(music);
}

// [[Rcpp::export]]
void pause_music_stream_(Music music) {
  return PauseMusicStream(music);
}

// [[Rcpp::export]]
void resume_music_stream_(Music music) {
  return ResumeMusicStream(music);
}

// [[Rcpp::export]]
void seek_music_stream_(Music music, float position) {
  return SeekMusicStream(music, position);
}

// [[Rcpp::export]]
void set_music_volume_(Music music, float volume) {
  return SetMusicVolume(music, volume);
}

// [[Rcpp::export]]
void set_music_pitch_(Music music, float pitch) {
  return SetMusicPitch(music, pitch);
}

// [[Rcpp::export]]
void set_music_pan_(Music music, float pan) {
  return SetMusicPan(music, pan);
}

// [[Rcpp::export]]
float get_music_time_length_(Music music) {
  return GetMusicTimeLength(music);
}

// [[Rcpp::export]]
float get_music_time_played_(Music music) {
  return GetMusicTimePlayed(music);
}

// [[Rcpp::export]]
AudioStream load_audio_stream_(unsigned int sample_rate, unsigned int sample_size, unsigned int channels) {
  return LoadAudioStream(sample_rate, sample_size, channels);
}

// [[Rcpp::export]]
bool is_audio_stream_valid_(AudioStream stream) {
  return IsAudioStreamValid(stream);
}

// [[Rcpp::export]]
void unload_audio_stream_(AudioStream stream) {
  return UnloadAudioStream(stream);
}

// [[Rcpp::export]]
bool is_audio_stream_processed_(AudioStream stream) {
  return IsAudioStreamProcessed(stream);
}

// [[Rcpp::export]]
void play_audio_stream_(AudioStream stream) {
  return PlayAudioStream(stream);
}

// [[Rcpp::export]]
void pause_audio_stream_(AudioStream stream) {
  return PauseAudioStream(stream);
}

// [[Rcpp::export]]
void resume_audio_stream_(AudioStream stream) {
  return ResumeAudioStream(stream);
}

// [[Rcpp::export]]
bool is_audio_stream_playing_(AudioStream stream) {
  return IsAudioStreamPlaying(stream);
}

// [[Rcpp::export]]
void stop_audio_stream_(AudioStream stream) {
  return StopAudioStream(stream);
}

// [[Rcpp::export]]
void set_audio_stream_volume_(AudioStream stream, float volume) {
  return SetAudioStreamVolume(stream, volume);
}

// [[Rcpp::export]]
void set_audio_stream_pitch_(AudioStream stream, float pitch) {
  return SetAudioStreamPitch(stream, pitch);
}

// [[Rcpp::export]]
void set_audio_stream_pan_(AudioStream stream, float pan) {
  return SetAudioStreamPan(stream, pan);
}

// [[Rcpp::export]]
void set_audio_stream_buffer_size_default_(int size) {
  return SetAudioStreamBufferSizeDefault(size);
}
