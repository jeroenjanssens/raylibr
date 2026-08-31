# Unload Render Texture

Unload render texture from GPU memory (VRAM).

## Usage

``` r
unload_render_texture(target)
```

## Arguments

- target:

  A render texture.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UnloadRenderTexture(RenderTexture2D target);

## See also

Other texture functions:
[`draw_texture()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture.md),
[`get_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/get_shapes_texture.md),
[`load_image_from_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_texture.md),
[`load_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_render_texture.md),
[`load_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture.md),
[`set_shader_value_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_texture.md),
[`set_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shapes_texture.md),
[`texture()`](https://jeroenjanssens.github.io/raylibr/reference/texture.md),
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md)

Other unload functions:
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md),
[`unload_font()`](https://jeroenjanssens.github.io/raylibr/reference/unload_font.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md),
[`unload_material()`](https://jeroenjanssens.github.io/raylibr/reference/unload_material.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`unload_shader()`](https://jeroenjanssens.github.io/raylibr/reference/unload_shader.md),
[`unload_sound()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound.md),
[`unload_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/unload_sound_alias.md),
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md),
[`unload_vr_stereo_config()`](https://jeroenjanssens.github.io/raylibr/reference/unload_vr_stereo_config.md),
[`unload_wave()`](https://jeroenjanssens.github.io/raylibr/reference/unload_wave.md)

## Examples

``` r
if (FALSE) { # \dontrun{
unload_render_texture(load_render_texture(800, 450))
} # }
```
