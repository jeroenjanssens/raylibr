# Draw Rectangle Lines

Draw rectangle outline.

## Usage

``` r
draw_rectangle_lines(pos_x, pos_y, width, height, color)
```

## Arguments

- pos_x:

  An integer.

- pos_y:

  An integer.

- width:

  An integer.

- height:

  An integer.

- color:

  A color.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void DrawRectangleLines(int posX, int posY, int width, int height, Color color);

## See also

Other lines functions:
[`draw_circle_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_lines.md),
[`draw_circle_sector_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_sector_lines.md),
[`draw_ellipse_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ellipse_lines.md),
[`draw_poly_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_poly_lines.md),
[`draw_rectangle_rounded_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded_lines.md),
[`draw_ring_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ring_lines.md),
[`draw_triangle_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_triangle_lines.md)

Other draw functions:
[`draw_billboard()`](https://jeroenjanssens.github.io/raylibr/reference/draw_billboard.md),
[`draw_billboard_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_billboard_pro.md),
[`draw_billboard_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_billboard_rec.md),
[`draw_bounding_box()`](https://jeroenjanssens.github.io/raylibr/reference/draw_bounding_box.md),
[`draw_capsule()`](https://jeroenjanssens.github.io/raylibr/reference/draw_capsule.md),
[`draw_capsule_wires()`](https://jeroenjanssens.github.io/raylibr/reference/draw_capsule_wires.md),
[`draw_circle()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle.md),
[`draw_circle_3d()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_3d.md),
[`draw_circle_gradient()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_gradient.md),
[`draw_circle_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_lines.md),
[`draw_circle_lines_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_lines_v.md),
[`draw_circle_sector()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_sector.md),
[`draw_circle_sector_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_sector_lines.md),
[`draw_circle_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_v.md),
[`draw_cube()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cube.md),
[`draw_cube_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cube_v.md),
[`draw_cube_wires()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cube_wires.md),
[`draw_cube_wires_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cube_wires_v.md),
[`draw_cylinder()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cylinder.md),
[`draw_cylinder_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cylinder_ex.md),
[`draw_cylinder_wires()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cylinder_wires.md),
[`draw_cylinder_wires_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cylinder_wires_ex.md),
[`draw_ellipse()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ellipse.md),
[`draw_ellipse_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ellipse_lines.md),
[`draw_ellipse_lines_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ellipse_lines_v.md),
[`draw_ellipse_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ellipse_v.md),
[`draw_fps()`](https://jeroenjanssens.github.io/raylibr/reference/draw_fps.md),
[`draw_grid()`](https://jeroenjanssens.github.io/raylibr/reference/draw_grid.md),
[`draw_line()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line.md),
[`draw_line_3d()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_3d.md),
[`draw_line_bezier()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_bezier.md),
[`draw_line_dashed()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_dashed.md),
[`draw_line_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_ex.md),
[`draw_line_strip()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_strip.md),
[`draw_line_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_v.md),
[`draw_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/draw_mesh.md),
[`draw_mesh_instanced()`](https://jeroenjanssens.github.io/raylibr/reference/draw_mesh_instanced.md),
[`draw_model()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model.md),
[`draw_model_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_ex.md),
[`draw_model_wires()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_wires.md),
[`draw_model_wires_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_wires_ex.md),
[`draw_pixel()`](https://jeroenjanssens.github.io/raylibr/reference/draw_pixel.md),
[`draw_pixel_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_pixel_v.md),
[`draw_plane()`](https://jeroenjanssens.github.io/raylibr/reference/draw_plane.md),
[`draw_point_3d()`](https://jeroenjanssens.github.io/raylibr/reference/draw_point_3d.md),
[`draw_poly()`](https://jeroenjanssens.github.io/raylibr/reference/draw_poly.md),
[`draw_poly_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_poly_lines.md),
[`draw_poly_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_poly_lines_ex.md),
[`draw_ray()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ray.md),
[`draw_rectangle()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle.md),
[`draw_rectangle_gradient_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_gradient_ex.md),
[`draw_rectangle_gradient_h()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_gradient_h.md),
[`draw_rectangle_gradient_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_gradient_v.md),
[`draw_rectangle_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_lines_ex.md),
[`draw_rectangle_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_pro.md),
[`draw_rectangle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rec.md),
[`draw_rectangle_rounded()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded.md),
[`draw_rectangle_rounded_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded_lines.md),
[`draw_rectangle_rounded_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded_lines_ex.md),
[`draw_rectangle_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_v.md),
[`draw_ring()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ring.md),
[`draw_ring_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ring_lines.md),
[`draw_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/draw_sphere.md),
[`draw_sphere_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_sphere_ex.md),
[`draw_sphere_wires()`](https://jeroenjanssens.github.io/raylibr/reference/draw_sphere_wires.md),
[`draw_spline_basis()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_basis.md),
[`draw_spline_bezier_cubic()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_bezier_cubic.md),
[`draw_spline_bezier_quadratic()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_bezier_quadratic.md),
[`draw_spline_catmull_rom()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_catmull_rom.md),
[`draw_spline_linear()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_linear.md),
[`draw_spline_segment_basis()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_segment_basis.md),
[`draw_spline_segment_bezier_cubic()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_segment_bezier_cubic.md),
[`draw_spline_segment_bezier_quadratic()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_segment_bezier_quadratic.md),
[`draw_spline_segment_catmull_rom()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_segment_catmull_rom.md),
[`draw_spline_segment_linear()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_segment_linear.md),
[`draw_text()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text.md),
[`draw_text_codepoint()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_codepoint.md),
[`draw_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_ex.md),
[`draw_text_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_pro.md),
[`draw_texture()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture.md),
[`draw_texture_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_ex.md),
[`draw_texture_n_patch()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_n_patch.md),
[`draw_texture_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_pro.md),
[`draw_texture_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_rec.md),
[`draw_texture_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_v.md),
[`draw_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/draw_triangle.md),
[`draw_triangle_3d()`](https://jeroenjanssens.github.io/raylibr/reference/draw_triangle_3d.md),
[`draw_triangle_fan()`](https://jeroenjanssens.github.io/raylibr/reference/draw_triangle_fan.md),
[`draw_triangle_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_triangle_lines.md),
[`draw_triangle_strip()`](https://jeroenjanssens.github.io/raylibr/reference/draw_triangle_strip.md),
[`draw_triangle_strip_3d()`](https://jeroenjanssens.github.io/raylibr/reference/draw_triangle_strip_3d.md)

## Examples

``` r
if (FALSE) { # \dontrun{
draw_rectangle_lines(100L, 100L, 800L, 450L, "red")
} # }
```
