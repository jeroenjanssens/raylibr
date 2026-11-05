# Stop Audio Stream

Stop audio stream.

## Usage

``` r
stop_audio_stream(stream)
```

## Arguments

- stream:

  An audio_stream.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void StopAudioStream(AudioStream stream);

## See also

Other stream functions:
[`load_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/load_audio_stream.md),
[`load_music_stream()`](https://raylibr.jeroenjanssens.com/reference/load_music_stream.md),
[`pause_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_audio_stream.md),
[`pause_music_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_music_stream.md),
[`play_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/play_audio_stream.md),
[`play_music_stream()`](https://raylibr.jeroenjanssens.com/reference/play_music_stream.md),
[`resume_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_audio_stream.md),
[`resume_music_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_music_stream.md),
[`seek_music_stream()`](https://raylibr.jeroenjanssens.com/reference/seek_music_stream.md),
[`stop_music_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_music_stream.md),
[`unload_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_audio_stream.md),
[`unload_music_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_music_stream.md),
[`update_music_stream()`](https://raylibr.jeroenjanssens.com/reference/update_music_stream.md)

Other audio functions:
[`close_audio_device()`](https://raylibr.jeroenjanssens.com/reference/close_audio_device.md),
[`init_audio_device()`](https://raylibr.jeroenjanssens.com/reference/init_audio_device.md),
[`is_audio_device_ready()`](https://raylibr.jeroenjanssens.com/reference/is_audio_device_ready.md),
[`is_audio_stream_playing()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_playing.md),
[`is_audio_stream_processed()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_processed.md),
[`is_audio_stream_valid()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_valid.md),
[`load_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/load_audio_stream.md),
[`pause_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_audio_stream.md),
[`play_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/play_audio_stream.md),
[`resume_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_audio_stream.md),
[`set_audio_stream_buffer_size_default()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_buffer_size_default.md),
[`set_audio_stream_pan()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pan.md),
[`set_audio_stream_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pitch.md),
[`set_audio_stream_volume()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_volume.md),
[`unload_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_audio_stream.md)

Other stop functions:
[`stop_automation_event_recording()`](https://raylibr.jeroenjanssens.com/reference/stop_automation_event_recording.md),
[`stop_music_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_music_stream.md),
[`stop_sound()`](https://raylibr.jeroenjanssens.com/reference/stop_sound.md)

## Examples

``` r
if (FALSE) {
stop_audio_stream(load_audio_stream(44100L, 16L, 1L))
}
```
