# Unload Audio Stream

Unload audio stream and free memory.

## Usage

``` r
unload_audio_stream(stream)
```

## Arguments

- stream:

  An audio_stream.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UnloadAudioStream(AudioStream stream);

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
[`stop_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_audio_stream.md),
[`stop_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_music_stream.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)

Other unload functions:
[`unload_font()`](https://jeroenjanssens.github.io/raylibr/reference/unload_font.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md),
[`unload_material()`](https://jeroenjanssens.github.io/raylibr/reference/unload_material.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`unload_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_render_texture.md),
[`unload_shader()`](https://jeroenjanssens.github.io/raylibr/reference/unload_shader.md),
[`unload_sound()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound.md),
[`unload_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound_alias.md),
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md),
[`unload_vr_stereo_config()`](https://jeroenjanssens.github.io/raylibr/reference/unload_vr_stereo_config.md),
[`unload_wave()`](https://jeroenjanssens.github.io/raylibr/reference/unload_wave.md)

## Examples

``` r
if (FALSE) { # \dontrun{
unload_audio_stream(load_audio_stream(44100L, 16L, 1L))
} # }
```
