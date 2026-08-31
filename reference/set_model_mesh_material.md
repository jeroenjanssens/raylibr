# Set model mesh material

Set material for a mesh in a model. Modifies the model in place.

## Usage

``` r
set_model_mesh_material(model, mesh_id, material_id)
```

## Arguments

- model:

  A model.

- mesh_id:

  An integer. Mesh index.

- material_id:

  An integer. Material index.

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
[`set_model_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_texture.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`update_model_animation()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation.md),
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md)

## Examples

``` r
if (FALSE) {
model <- load_model("model.obj")
set_model_mesh_material(model, 0L, 0L)
}
```
