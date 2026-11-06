# Draw Capsule Wires

Draw capsule wireframe with the center of its sphere caps at startPos
and endPos.

## Usage

``` r
draw_capsule_wires(start_pos, end_pos, radius, slices, rings, color)
```

## Arguments

- start_pos:

  A numeric vector of length 3.

- end_pos:

  A numeric vector of length 3.

- radius:

  A number.

- slices:

  An integer.

- rings:

  An integer.

- color:

  A color.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);

## See also

Other 3D models & meshes:
[`draw_billboard()`](https://raylibr.jeroenjanssens.com/reference/draw_billboard.md),
[`draw_billboard_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_billboard_pro.md),
[`draw_billboard_rec()`](https://raylibr.jeroenjanssens.com/reference/draw_billboard_rec.md),
[`draw_bounding_box()`](https://raylibr.jeroenjanssens.com/reference/draw_bounding_box.md),
[`draw_capsule()`](https://raylibr.jeroenjanssens.com/reference/draw_capsule.md),
[`draw_circle_3d()`](https://raylibr.jeroenjanssens.com/reference/draw_circle_3d.md),
[`draw_cube()`](https://raylibr.jeroenjanssens.com/reference/draw_cube.md),
[`draw_cube_v()`](https://raylibr.jeroenjanssens.com/reference/draw_cube_v.md),
[`draw_cube_wires()`](https://raylibr.jeroenjanssens.com/reference/draw_cube_wires.md),
[`draw_cube_wires_v()`](https://raylibr.jeroenjanssens.com/reference/draw_cube_wires_v.md),
[`draw_cylinder()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder.md),
[`draw_cylinder_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_ex.md),
[`draw_cylinder_wires()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_wires.md),
[`draw_cylinder_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_wires_ex.md),
[`draw_grid()`](https://raylibr.jeroenjanssens.com/reference/draw_grid.md),
[`draw_line_3d()`](https://raylibr.jeroenjanssens.com/reference/draw_line_3d.md),
[`draw_mesh()`](https://raylibr.jeroenjanssens.com/reference/draw_mesh.md),
[`draw_mesh_instanced()`](https://raylibr.jeroenjanssens.com/reference/draw_mesh_instanced.md),
[`draw_model()`](https://raylibr.jeroenjanssens.com/reference/draw_model.md),
[`draw_model_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_ex.md),
[`draw_model_wires()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires.md),
[`draw_model_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires_ex.md),
[`draw_plane()`](https://raylibr.jeroenjanssens.com/reference/draw_plane.md),
[`draw_point_3d()`](https://raylibr.jeroenjanssens.com/reference/draw_point_3d.md),
[`draw_ray()`](https://raylibr.jeroenjanssens.com/reference/draw_ray.md),
[`draw_sphere()`](https://raylibr.jeroenjanssens.com/reference/draw_sphere.md),
[`draw_sphere_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_sphere_ex.md),
[`draw_sphere_wires()`](https://raylibr.jeroenjanssens.com/reference/draw_sphere_wires.md),
[`draw_triangle_3d()`](https://raylibr.jeroenjanssens.com/reference/draw_triangle_3d.md),
[`draw_triangle_strip_3d()`](https://raylibr.jeroenjanssens.com/reference/draw_triangle_strip_3d.md),
[`export_mesh()`](https://raylibr.jeroenjanssens.com/reference/export_mesh.md),
[`export_mesh_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_mesh_as_code.md),
[`gen_mesh_cone()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_cone.md),
[`gen_mesh_cube()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_cube.md),
[`gen_mesh_cubicmap()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_cubicmap.md),
[`gen_mesh_cylinder()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_cylinder.md),
[`gen_mesh_heightmap()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_heightmap.md),
[`gen_mesh_hemi_sphere()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_hemi_sphere.md),
[`gen_mesh_knot()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_knot.md),
[`gen_mesh_plane()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_plane.md),
[`gen_mesh_poly()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_poly.md),
[`gen_mesh_sphere()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_sphere.md),
[`gen_mesh_tangents()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_tangents.md),
[`gen_mesh_torus()`](https://raylibr.jeroenjanssens.com/reference/gen_mesh_torus.md),
[`get_mesh_bounding_box()`](https://raylibr.jeroenjanssens.com/reference/get_mesh_bounding_box.md),
[`get_model_bounding_box()`](https://raylibr.jeroenjanssens.com/reference/get_model_bounding_box.md),
[`is_material_valid()`](https://raylibr.jeroenjanssens.com/reference/is_material_valid.md),
[`is_model_animation_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_valid.md),
[`load_material_default()`](https://raylibr.jeroenjanssens.com/reference/load_material_default.md),
[`load_model()`](https://raylibr.jeroenjanssens.com/reference/load_model.md),
[`load_model_from_mesh()`](https://raylibr.jeroenjanssens.com/reference/load_model_from_mesh.md),
[`set_material_texture()`](https://raylibr.jeroenjanssens.com/reference/set_material_texture.md),
[`set_model_mesh_material()`](https://raylibr.jeroenjanssens.com/reference/set_model_mesh_material.md),
[`set_model_texture()`](https://raylibr.jeroenjanssens.com/reference/set_model_texture.md),
[`unload_material()`](https://raylibr.jeroenjanssens.com/reference/unload_material.md),
[`unload_mesh()`](https://raylibr.jeroenjanssens.com/reference/unload_mesh.md),
[`unload_model()`](https://raylibr.jeroenjanssens.com/reference/unload_model.md),
[`update_model_animation()`](https://raylibr.jeroenjanssens.com/reference/update_model_animation.md),
[`update_model_animation_ex()`](https://raylibr.jeroenjanssens.com/reference/update_model_animation_ex.md),
[`upload_mesh()`](https://raylibr.jeroenjanssens.com/reference/upload_mesh.md)

## Examples

``` r
raylibr_screenshot_3d(function() draw_capsule_wires(
                                     c(-1, 0, 0),
                                     c(1, 0, 0),
                                     1.0,
                                     16L,
                                     16L,
                                     "red"
                                   ))
```
