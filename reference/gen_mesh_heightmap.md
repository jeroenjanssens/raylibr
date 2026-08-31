# Gen Mesh Heightmap

Generate heightmap mesh from image data.

## Usage

``` r
gen_mesh_heightmap(heightmap, size)
```

## Arguments

- heightmap:

  An image.

- size:

  A numeric vector of length 3.

## Value

A mesh

## Note

This function has been auto-generated from the following Raylib function
definition:

    Mesh GenMeshHeightmap(Image heightmap, Vector3 size);

## See also

Other mesh functions:
[`draw_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/draw_mesh.md),
[`export_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh.md),
[`export_mesh_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh_as_code.md),
[`gen_mesh_cone()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cone.md),
[`gen_mesh_cube()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cube.md),
[`gen_mesh_cubicmap()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cubicmap.md),
[`gen_mesh_cylinder()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cylinder.md),
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

## Examples

``` r
if (FALSE) {
gen_mesh_heightmap(gen_image_color(100, 100, "blue"), c(1, 1, 1))
}
```
