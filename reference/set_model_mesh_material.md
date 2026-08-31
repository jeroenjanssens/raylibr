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
[`load_model()`](https://jeroenjanssens.github.io/raylibr/reference/load_model.md),
[`set_model_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_texture.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md)

## Examples

``` r
if (FALSE) { # \dontrun{
model <- load_model("model.obj")
set_model_mesh_material(model, 0L, 0L)
} # }
```
