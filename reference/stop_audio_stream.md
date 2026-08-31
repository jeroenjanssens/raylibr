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
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`load_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_music_stream.md),
[`pause_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_audio_stream.md),
[`pause_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_music_stream.md),
[`play_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_audio_stream.md),
[`play_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_music_stream.md),
[`resume_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_audio_stream.md),
[`resume_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_music_stream.md),
[`seek_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/seek_music_stream.md),
[`stop_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_music_stream.md),
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)

Other audio functions:
[`close_audio_device()`](https://jeroenjanssens.github.io/raylibr/reference/close_audio_device.md),
[`init_audio_device()`](https://jeroenjanssens.github.io/raylibr/reference/init_audio_device.md),
[`is_audio_device_ready()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_device_ready.md),
[`is_audio_stream_playing()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_stream_playing.md),
[`is_audio_stream_processed()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_stream_processed.md),
[`is_audio_stream_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_stream_valid.md),
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`pause_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_audio_stream.md),
[`play_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_audio_stream.md),
[`resume_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_audio_stream.md),
[`set_audio_stream_buffer_size_default()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_buffer_size_default.md),
[`set_audio_stream_pan()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_pan.md),
[`set_audio_stream_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_pitch.md),
[`set_audio_stream_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_volume.md),
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md)

Other stop functions:
[`stop_automation_event_recording()`](https://jeroenjanssens.github.io/raylibr/reference/stop_automation_event_recording.md),
[`stop_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_music_stream.md),
[`stop_sound()`](https://jeroenjanssens.github.io/raylibr/reference/stop_sound.md)

## Examples

``` r
if (FALSE) {
stop_audio_stream(load_audio_stream(44100L, 16L, 1L))
}
```
