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
[`export_mesh_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh_as_code.md),
[`gen_mesh_cone()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cone.md),
[`gen_mesh_cube()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cube.md),
[`gen_mesh_cubicmap()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cubicmap.md),
[`gen_mesh_cylinder()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cylinder.md),
[`gen_mesh_heightmap()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_heightmap.md),
[`gen_mesh_hemi_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_hemi_sphere.md),
[`gen_mesh_knot()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_knot.md),
[`gen_mesh_plane()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_plane.md),
[`gen_mesh_poly()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_poly.md),
[`gen_mesh_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_sphere.md),
[`gen_mesh_tangents()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_tangents.md),
[`gen_mesh_torus()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_torus.md),
[`get_mesh_bounding_box()`](https://jeroenjanssens.github.io/raylibr/reference/get_mesh_bounding_box.md),
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
if (FALSE) {
export_mesh(gen_mesh_cube(1.0, 1.0, 1.0), "file.png")
}
```
