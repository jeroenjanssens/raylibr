# Update Model Animation

Update model animation pose (vertex buffers and bone matrices).

## Usage

``` r
update_model_animation(model, anim, frame)
```

## Arguments

- model:

  A model.

- anim:

  A model_animation.

- frame:

  A number.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UpdateModelAnimation(Model model, ModelAnimation anim, float frame);

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
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md)

Other update functions:
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md),
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)

## Examples

``` r
if (FALSE) {
update_model_animation(load_model("model.obj"), anim, 0.0)
}
```
