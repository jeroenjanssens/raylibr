# Unload Model

Unload model (including meshes) from memory (RAM and/or VRAM).

## Usage

``` r
unload_model(model)
```

## Arguments

- model:

  A model.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UnloadModel(Model model);

## See also

Other model functions:
[`draw_model()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model.md),
[`load_model()`](https://jeroenjanssens.github.io/raylibr/reference/load_model.md),
[`set_model_mesh_material()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_mesh_material.md),
[`set_model_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_texture.md)

Other unload functions:
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md),
[`unload_font()`](https://jeroenjanssens.github.io/raylibr/reference/unload_font.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md),
[`unload_material()`](https://jeroenjanssens.github.io/raylibr/reference/unload_material.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
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
unload_model(load_model("model.obj"))
} # }
```
