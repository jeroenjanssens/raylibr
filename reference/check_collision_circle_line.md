# Check Collision Circle Line

Check if circle collides with a line created betweeen two points \\p1\\
and \\p2\\.

## Usage

``` r
check_collision_circle_line(center, radius, p1, p2)
```

## Arguments

- center:

  A numeric vector of length 2.

- radius:

  A number.

- p1:

  A numeric vector of length 2.

- p2:

  A numeric vector of length 2.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool CheckCollisionCircleLine(Vector2 center, float radius, Vector2 p1, Vector2 p2);

## See also

Other line functions:
[`check_collision_point_line()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_line.md),
[`draw_line()`](https://raylibr.jeroenjanssens.com/reference/draw_line.md),
[`draw_line_3d()`](https://raylibr.jeroenjanssens.com/reference/draw_line_3d.md),
[`draw_line_bezier()`](https://raylibr.jeroenjanssens.com/reference/draw_line_bezier.md),
[`draw_line_dashed()`](https://raylibr.jeroenjanssens.com/reference/draw_line_dashed.md),
[`draw_line_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_line_ex.md),
[`draw_line_v()`](https://raylibr.jeroenjanssens.com/reference/draw_line_v.md)

Other collision functions:
[`check_collision_box_sphere()`](https://raylibr.jeroenjanssens.com/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://raylibr.jeroenjanssens.com/reference/check_collision_boxes.md),
[`check_collision_circle_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circles.md),
[`check_collision_point_circle()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_circle.md),
[`check_collision_point_line()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://raylibr.jeroenjanssens.com/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://raylibr.jeroenjanssens.com/reference/check_collision_spheres.md),
[`get_collision_rec()`](https://raylibr.jeroenjanssens.com/reference/get_collision_rec.md)

Other check functions:
[`check_collision_box_sphere()`](https://raylibr.jeroenjanssens.com/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://raylibr.jeroenjanssens.com/reference/check_collision_boxes.md),
[`check_collision_circle_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circles.md),
[`check_collision_point_circle()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_circle.md),
[`check_collision_point_line()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://raylibr.jeroenjanssens.com/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://raylibr.jeroenjanssens.com/reference/check_collision_spheres.md)

## Examples

``` r
check_collision_circle_line(c(100, 100), 50.0, c(100, 100), c(100, 100))
#> [1] TRUE
```
