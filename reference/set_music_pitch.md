# Set Music Pitch

Set pitch for a music (1.0 is base level).

## Usage

``` r
set_music_pitch(music, pitch)
```

## Arguments

- music:

  A music.

- pitch:

  A number.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void SetMusicPitch(Music music, float pitch);

## See also

Other Audio:
[`close_audio_device()`](https://raylibr.jeroenjanssens.com/reference/close_audio_device.md),
[`export_wave()`](https://raylibr.jeroenjanssens.com/reference/export_wave.md),
[`export_wave_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_wave_as_code.md),
[`get_master_volume()`](https://raylibr.jeroenjanssens.com/reference/get_master_volume.md),
[`get_music_time_length()`](https://raylibr.jeroenjanssens.com/reference/get_music_time_length.md),
[`get_music_time_played()`](https://raylibr.jeroenjanssens.com/reference/get_music_time_played.md),
[`init_audio_device()`](https://raylibr.jeroenjanssens.com/reference/init_audio_device.md),
[`is_audio_device_ready()`](https://raylibr.jeroenjanssens.com/reference/is_audio_device_ready.md),
[`is_audio_stream_playing()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_playing.md),
[`is_audio_stream_processed()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_processed.md),
[`is_audio_stream_valid()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_valid.md),
[`is_music_stream_playing()`](https://raylibr.jeroenjanssens.com/reference/is_music_stream_playing.md),
[`is_music_valid()`](https://raylibr.jeroenjanssens.com/reference/is_music_valid.md),
[`is_sound_playing()`](https://raylibr.jeroenjanssens.com/reference/is_sound_playing.md),
[`is_sound_valid()`](https://raylibr.jeroenjanssens.com/reference/is_sound_valid.md),
[`is_wave_valid()`](https://raylibr.jeroenjanssens.com/reference/is_wave_valid.md),
[`load_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/load_audio_stream.md),
[`load_music_stream()`](https://raylibr.jeroenjanssens.com/reference/load_music_stream.md),
[`load_sound()`](https://raylibr.jeroenjanssens.com/reference/load_sound.md),
[`load_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`load_wave()`](https://raylibr.jeroenjanssens.com/reference/load_wave.md),
[`pause_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_audio_stream.md),
[`pause_music_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_music_stream.md),
[`pause_sound()`](https://raylibr.jeroenjanssens.com/reference/pause_sound.md),
[`play_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/play_audio_stream.md),
[`play_music_stream()`](https://raylibr.jeroenjanssens.com/reference/play_music_stream.md),
[`play_sound()`](https://raylibr.jeroenjanssens.com/reference/play_sound.md),
[`resume_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_audio_stream.md),
[`resume_music_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_music_stream.md),
[`resume_sound()`](https://raylibr.jeroenjanssens.com/reference/resume_sound.md),
[`seek_music_stream()`](https://raylibr.jeroenjanssens.com/reference/seek_music_stream.md),
[`set_audio_stream_buffer_size_default()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_buffer_size_default.md),
[`set_audio_stream_pan()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pan.md),
[`set_audio_stream_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pitch.md),
[`set_audio_stream_volume()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_volume.md),
[`set_master_volume()`](https://raylibr.jeroenjanssens.com/reference/set_master_volume.md),
[`set_music_pan()`](https://raylibr.jeroenjanssens.com/reference/set_music_pan.md),
[`set_music_volume()`](https://raylibr.jeroenjanssens.com/reference/set_music_volume.md),
[`set_sound_pan()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pan.md),
[`set_sound_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pitch.md),
[`set_sound_volume()`](https://raylibr.jeroenjanssens.com/reference/set_sound_volume.md),
[`stop_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_audio_stream.md),
[`stop_music_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_music_stream.md),
[`stop_sound()`](https://raylibr.jeroenjanssens.com/reference/stop_sound.md),
[`unload_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_audio_stream.md),
[`unload_music_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_music_stream.md),
[`unload_sound()`](https://raylibr.jeroenjanssens.com/reference/unload_sound.md),
[`unload_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/unload_sound_alias.md),
[`unload_wave()`](https://raylibr.jeroenjanssens.com/reference/unload_wave.md),
[`update_music_stream()`](https://raylibr.jeroenjanssens.com/reference/update_music_stream.md),
[`wave_copy()`](https://raylibr.jeroenjanssens.com/reference/wave_copy.md),
[`wave_crop()`](https://raylibr.jeroenjanssens.com/reference/wave_crop.md),
[`wave_format()`](https://raylibr.jeroenjanssens.com/reference/wave_format.md)

## Examples

``` r
if (FALSE) {
set_music_pitch(load_music_stream("music.mp3"), 1.0)
}
```
