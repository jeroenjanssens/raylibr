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
[`begin_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/end_shader_mode.md),
[`get_shader_location()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location_attrib.md),
[`is_shader_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_shader_valid.md),
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`set_shader_value()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value.md),
[`set_shader_value_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_matrix.md),
[`set_shader_value_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_texture.md),
[`unload_shader()`](https://jeroenjanssens.github.io/raylibr/reference/unload_shader.md)

Other load functions:
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`load_font()`](https://jeroenjanssens.github.io/raylibr/reference/load_font.md),
[`load_font_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_font_from_image.md),
[`load_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_image.md),
[`load_image_from_screen()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_screen.md),
[`load_image_from_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_texture.md),
[`load_image_raw()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_raw.md),
[`load_material_default()`](https://jeroenjanssens.github.io/raylibr/reference/load_material_default.md),
[`load_model()`](https://jeroenjanssens.github.io/raylibr/reference/load_model.md),
[`load_model_from_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/load_model_from_mesh.md),
[`load_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_music_stream.md),
[`load_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_render_texture.md),
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`load_sound()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound.md),
[`load_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_from_wave.md),
[`load_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture.md),
[`load_texture_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture_from_image.md),
[`load_vr_stereo_config()`](https://jeroenjanssens.github.io/raylibr/reference/load_vr_stereo_config.md),
[`load_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_wave.md)

## Examples

``` r
if (FALSE) {
load_shader_from_memory("text", "text")
}
```
