# Load Audio Stream

Load audio stream (to stream raw audio pcm data).

## Usage

``` r
load_audio_stream(sample_rate, sample_size, channels)
```

## Arguments

- sample_rate:

  A non-negative integer.

- sample_size:

  A non-negative integer.

- channels:

  A non-negative integer.

## Value

An audio_stream

## Note

This function has been auto-generated from the following Raylib function
definition:

    AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels);

## See also

Other stream functions:
[`load_music_stream()`](https://raylibr.jeroenjanssens.com/reference/load_music_stream.md),
[`pause_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_audio_stream.md),
[`pause_music_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_music_stream.md),
[`play_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/play_audio_stream.md),
[`play_music_stream()`](https://raylibr.jeroenjanssens.com/reference/play_music_stream.md),
[`resume_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_audio_stream.md),
[`resume_music_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_music_stream.md),
[`seek_music_stream()`](https://raylibr.jeroenjanssens.com/reference/seek_music_stream.md),
[`stop_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_audio_stream.md),
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
[`pause_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_audio_stream.md),
[`play_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/play_audio_stream.md),
[`resume_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_audio_stream.md),
[`set_audio_stream_buffer_size_default()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_buffer_size_default.md),
[`set_audio_stream_pan()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pan.md),
[`set_audio_stream_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pitch.md),
[`set_audio_stream_volume()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_volume.md),
[`stop_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_audio_stream.md),
[`unload_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_audio_stream.md)

Other load functions:
[`load_file_text()`](https://raylibr.jeroenjanssens.com/reference/load_file_text.md),
[`load_font()`](https://raylibr.jeroenjanssens.com/reference/load_font.md),
[`load_font_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_font_from_image.md),
[`load_image()`](https://raylibr.jeroenjanssens.com/reference/load_image.md),
[`load_image_from_screen()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_screen.md),
[`load_image_from_texture()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_texture.md),
[`load_image_raw()`](https://raylibr.jeroenjanssens.com/reference/load_image_raw.md),
[`load_material_default()`](https://raylibr.jeroenjanssens.com/reference/load_material_default.md),
[`load_model()`](https://raylibr.jeroenjanssens.com/reference/load_model.md),
[`load_model_from_mesh()`](https://raylibr.jeroenjanssens.com/reference/load_model_from_mesh.md),
[`load_music_stream()`](https://raylibr.jeroenjanssens.com/reference/load_music_stream.md),
[`load_render_texture()`](https://raylibr.jeroenjanssens.com/reference/load_render_texture.md),
[`load_shader()`](https://raylibr.jeroenjanssens.com/reference/load_shader.md),
[`load_shader_from_memory()`](https://raylibr.jeroenjanssens.com/reference/load_shader_from_memory.md),
[`load_sound()`](https://raylibr.jeroenjanssens.com/reference/load_sound.md),
[`load_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`load_texture()`](https://raylibr.jeroenjanssens.com/reference/load_texture.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`load_vr_stereo_config()`](https://raylibr.jeroenjanssens.com/reference/load_vr_stereo_config.md),
[`load_wave()`](https://raylibr.jeroenjanssens.com/reference/load_wave.md)

## Examples

``` r
if (FALSE) {
load_audio_stream(0L, 32L, 0L)
}
```
