# Unload Sound Alias

Unload a sound alias (does not deallocate sample data).

## Usage

``` r
unload_sound_alias(alias)
```

## Arguments

- alias:

  A sound.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UnloadSoundAlias(Sound alias);

## See also

Other alias functions:
[`load_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_alias.md)

Other sound functions:
[`is_sound_playing()`](https://jeroenjanssens.github.io/raylibr/reference/is_sound_playing.md),
[`is_sound_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_sound_valid.md),
[`load_sound()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound.md),
[`load_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_from_wave.md),
[`pause_sound()`](https://jeroenjanssens.github.io/raylibr/reference/pause_sound.md),
[`play_sound()`](https://jeroenjanssens.github.io/raylibr/reference/play_sound.md),
[`resume_sound()`](https://jeroenjanssens.github.io/raylibr/reference/resume_sound.md),
[`set_sound_pan()`](https://jeroenjanssens.github.io/raylibr/reference/set_sound_pan.md),
[`set_sound_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/set_sound_pitch.md),
[`set_sound_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_sound_volume.md),
[`stop_sound()`](https://jeroenjanssens.github.io/raylibr/reference/stop_sound.md),
[`unload_sound()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound.md)

Other unload functions:
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md),
[`unload_font()`](https://jeroenjanssens.github.io/raylibr/reference/unload_font.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md),
[`unload_material()`](https://jeroenjanssens.github.io/raylibr/reference/unload_material.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`unload_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_render_texture.md),
[`unload_shader()`](https://jeroenjanssens.github.io/raylibr/reference/unload_shader.md),
[`unload_sound()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound.md),
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md),
[`unload_vr_stereo_config()`](https://jeroenjanssens.github.io/raylibr/reference/unload_vr_stereo_config.md),
[`unload_wave()`](https://jeroenjanssens.github.io/raylibr/reference/unload_wave.md)

## Examples

``` r
if (FALSE) {
unload_sound_alias(load_sound("sound.wav"))
}
```
