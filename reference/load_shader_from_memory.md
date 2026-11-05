# Load Shader From Memory

Load shader from code strings and bind default locations.

## Usage

``` r
load_shader_from_memory(vs_code, fs_code)
```

## Arguments

- vs_code:

  A string.

- fs_code:

  A string.

## Value

A shader

## Note

This function has been auto-generated from the following Raylib function
definition:

    Shader LoadShaderFromMemory(const char * vsCode, const char * fsCode);

## See also

Other shader functions:
[`begin_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/end_shader_mode.md),
[`get_shader_location()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location_attrib.md),
[`is_shader_valid()`](https://raylibr.jeroenjanssens.com/reference/is_shader_valid.md),
[`load_shader()`](https://raylibr.jeroenjanssens.com/reference/load_shader.md),
[`set_shader_value()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value.md),
[`set_shader_value_matrix()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_matrix.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`unload_shader()`](https://raylibr.jeroenjanssens.com/reference/unload_shader.md)

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
load_shader_from_memory("text", "text")
}
```
