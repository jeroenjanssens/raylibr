# Generate mesh tangents

Compute mesh tangents. Modifies the mesh in place.

## Usage

``` r
gen_mesh_tangents(mesh)
```

## Arguments

- mesh:

  A mesh.

## See also

Other mesh functions:
[`draw_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/draw_mesh.md),
[`export_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh.md),
[`get_ray_collision_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_mesh.md),
[`load_model_from_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/load_model_from_mesh.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
[`upload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/upload_mesh.md)

## Examples

``` r
if (FALSE) { # \dontrun{
mesh <- gen_mesh_cube(1.0, 1.0, 1.0)
gen_mesh_tangents(mesh)
} # }
```
