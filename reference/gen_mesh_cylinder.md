# Gen Mesh Cylinder

Generate cylinder mesh.

## Usage

``` r
gen_mesh_cylinder(radius, height, slices)
```

## Arguments

- radius:

  A number.

- height:

  A number.

- slices:

  An integer.

## Value

A mesh

## Note

This function has been auto-generated from the following Raylib function
definition:

    Mesh GenMeshCylinder(float radius, float height, int slices);

## See also

Other cylinder functions:
[`draw_cylinder()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder.md),
[`draw_cylinder_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_ex.md),
[`draw_cylinder_wires()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_wires.md),
[`draw_cylinder_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_wires_ex.md)

Other mesh functions:
[`draw_mesh()`](https://raylibr.jeroenjanssens.com/reference/draw_mesh.md),
[`export_mesh()`](https://raylibr.jeroenjanssens.com/reference/export_mesh.md),
[`export_mesh_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_mesh_as_code.md),
[`gen_mesh_cone()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_cone.md),
[`gen_mesh_cube()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_cube.md),
[`gen_mesh_cubicmap()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_cubicmap.md),
[`gen_mesh_heightmap()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_heightmap.md),
[`gen_mesh_hemi_sphere()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_hemi_sphere.md),
[`gen_mesh_knot()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_knot.md),
[`gen_mesh_plane()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_plane.md),
[`gen_mesh_poly()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_poly.md),
[`gen_mesh_sphere()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_sphere.md),
[`gen_mesh_tangents()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_tangents.md),
[`gen_mesh_torus()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_torus.md),
[`get_mesh_bounding_box()`](https://raylibr.jeroenjanssens.com/reference/get_mesh_bounding_box.md),
[`get_ray_collision_mesh()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_mesh.md),
[`load_model_from_mesh()`](https://raylibr.jeroenjanssens.com/reference/load_model_from_mesh.md),
[`unload_mesh()`](https://raylibr.jeroenjanssens.com/reference/unload_mesh.md),
[`upload_mesh()`](https://raylibr.jeroenjanssens.com/reference/upload_mesh.md)

## Examples

``` r
if (FALSE) {
gen_mesh_cylinder(50.0, 100.0, 16L)
}
```
