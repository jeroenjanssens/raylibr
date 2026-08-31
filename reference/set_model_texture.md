# Set model texture

Set texture for a material map of a model. Modifies the model in place.

## Usage

``` r
set_model_texture(model, material_id, map_type, texture)
```

## Arguments

- model:

  A model.

- material_id:

  An integer. Material index.

- map_type:

  An integer. Material map type.

- texture:

  A texture.

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
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`update_model_animation()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation.md),
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md)

## Examples

``` r
if (FALSE) {
model <- load_model("model.obj")
tex <- load_texture("texture.png")
set_model_texture(model, 0L, material_map_index$albedo, tex)
}
```
