# Export Mesh

Export mesh data to file, returns true on success.

## Usage

``` r
export_mesh(mesh, file_name)
```

## Arguments

- mesh:

  A mesh.

- file_name:

  A string.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool ExportMesh(Mesh mesh, const char * fileName);

## See also

Other mesh functions:
[`draw_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/draw_mesh.md),
[`gen_mesh_tangents()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_tangents.md),
[`get_ray_collision_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_mesh.md),
[`load_model_from_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/load_model_from_mesh.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
[`upload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/upload_mesh.md)

Other export functions:
[`export_font_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_font_as_code.md),
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md),
[`export_image_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_image_as_code.md),
[`export_mesh_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh_as_code.md),
[`export_wave()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave.md),
[`export_wave_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave_as_code.md)

## Examples

``` r
if (FALSE) { # \dontrun{
export_mesh(gen_mesh_cube(1.0, 1.0, 1.0), "file.png")
} # }
```
