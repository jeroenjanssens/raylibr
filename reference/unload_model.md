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
[`draw_model_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_ex.md),
[`draw_model_wires()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_wires.md),
[`draw_model_wires_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_wires_ex.md),
[`get_model_bounding_box()`](https://jeroenjanssens.github.io/raylibr/reference/get_model_bounding_box.md),
[`is_model_animation_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_model_valid.md),
[`load_model()`](https://jeroenjanssens.github.io/raylibr/reference/load_model.md),
[`load_model_from_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/load_model_from_mesh.md),
[`set_model_mesh_material()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_mesh_material.md),
[`set_model_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_texture.md),
[`update_model_animation()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation.md),
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md)

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
if (FALSE) {
unload_model(load_model("model.obj"))
}
```
