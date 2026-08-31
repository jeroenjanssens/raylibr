# Unload Shader

Unload shader from GPU memory (VRAM).

## Usage

``` r
unload_shader(shader)
```

## Arguments

- shader:

  A shader.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UnloadShader(Shader shader);

## See also

Other shader functions:
[`begin_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/end_shader_mode.md),
[`get_shader_location()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location_attrib.md),
[`is_shader_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_shader_valid.md),
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`load_shader_from_memory()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader_from_memory.md),
[`set_shader_value()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value.md),
[`set_shader_value_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_matrix.md),
[`set_shader_value_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_texture.md)

Other unload functions:
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md),
[`unload_font()`](https://jeroenjanssens.github.io/raylibr/reference/unload_font.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md),
[`unload_material()`](https://jeroenjanssens.github.io/raylibr/reference/unload_material.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`unload_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_render_texture.md),
[`unload_sound()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound.md),
[`unload_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound_alias.md),
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md),
[`unload_vr_stereo_config()`](https://jeroenjanssens.github.io/raylibr/reference/unload_vr_stereo_config.md),
[`unload_wave()`](https://jeroenjanssens.github.io/raylibr/reference/unload_wave.md)

## Examples

``` r
if (FALSE) {
unload_shader(load_shader("", "shader.fs"))
}
```
