# Load Sound Alias

Create a new sound that shares the same sample data as the source sound,
does not own the sound data.

## Usage

``` r
load_sound_alias(source)
```

## Arguments

- source:

  A sound.

## Value

A sound

## Note

This function has been auto-generated from the following Raylib function
definition:

    Sound LoadSoundAlias(Sound source);

## See also

Other alias functions:
[`unload_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/unload_sound_alias.md)

Other sound functions:
[`is_sound_playing()`](https://raylibr.jeroenjanssens.com/reference/is_sound_playing.md),
[`is_sound_valid()`](https://raylibr.jeroenjanssens.com/reference/is_sound_valid.md),
[`load_sound()`](https://raylibr.jeroenjanssens.com/reference/load_sound.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`pause_sound()`](https://raylibr.jeroenjanssens.com/reference/pause_sound.md),
[`play_sound()`](https://raylibr.jeroenjanssens.com/reference/play_sound.md),
[`resume_sound()`](https://raylibr.jeroenjanssens.com/reference/resume_sound.md),
[`set_sound_pan()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pan.md),
[`set_sound_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pitch.md),
[`set_sound_volume()`](https://raylibr.jeroenjanssens.com/reference/set_sound_volume.md),
[`stop_sound()`](https://raylibr.jeroenjanssens.com/reference/stop_sound.md),
[`unload_sound()`](https://raylibr.jeroenjanssens.com/reference/unload_sound.md),
[`unload_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/unload_sound_alias.md)

Other load functions:
[`load_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/load_audio_stream.md),
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
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`load_texture()`](https://raylibr.jeroenjanssens.com/reference/load_texture.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`load_vr_stereo_config()`](https://raylibr.jeroenjanssens.com/reference/load_vr_stereo_config.md),
[`load_wave()`](https://raylibr.jeroenjanssens.com/reference/load_wave.md)

## Examples

``` r
if (FALSE) {
load_sound_alias(load_sound("sound.wav"))
}
```
