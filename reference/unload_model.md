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
[`draw_model()`](https://raylibr.jeroenjanssens.com/reference/draw_model.md),
[`draw_model_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_ex.md),
[`draw_model_wires()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires.md),
[`draw_model_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires_ex.md),
[`get_model_bounding_box()`](https://raylibr.jeroenjanssens.com/reference/get_model_bounding_box.md),
[`is_model_animation_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_valid.md),
[`load_model()`](https://raylibr.jeroenjanssens.com/reference/load_model.md),
[`load_model_from_mesh()`](https://raylibr.jeroenjanssens.com/reference/load_model_from_mesh.md),
[`set_model_mesh_material()`](https://raylibr.jeroenjanssens.com/reference/set_model_mesh_material.md),
[`set_model_texture()`](https://raylibr.jeroenjanssens.com/reference/set_model_texture.md),
[`update_model_animation()`](https://raylibr.jeroenjanssens.com/reference/update_model_animation.md),
[`update_model_animation_ex()`](https://raylibr.jeroenjanssens.com/reference/update_model_animation_ex.md)

Other unload functions:
[`unload_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_audio_stream.md),
[`unload_font()`](https://raylibr.jeroenjanssens.com/reference/unload_font.md),
[`unload_image()`](https://raylibr.jeroenjanssens.com/reference/unload_image.md),
[`unload_material()`](https://raylibr.jeroenjanssens.com/reference/unload_material.md),
[`unload_mesh()`](https://raylibr.jeroenjanssens.com/reference/unload_mesh.md),
[`unload_music_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_music_stream.md),
[`unload_render_texture()`](https://raylibr.jeroenjanssens.com/reference/unload_render_texture.md),
[`unload_shader()`](https://raylibr.jeroenjanssens.com/reference/unload_shader.md),
[`unload_sound()`](https://raylibr.jeroenjanssens.com/reference/unload_sound.md),
[`unload_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/unload_sound_alias.md),
[`unload_texture()`](https://raylibr.jeroenjanssens.com/reference/unload_texture.md),
[`unload_vr_stereo_config()`](https://raylibr.jeroenjanssens.com/reference/unload_vr_stereo_config.md),
[`unload_wave()`](https://raylibr.jeroenjanssens.com/reference/unload_wave.md)

## Examples

``` r
if (FALSE) {
unload_model(load_model("model.obj"))
}
```
