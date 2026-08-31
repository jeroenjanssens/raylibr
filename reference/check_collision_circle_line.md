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
[`check_collision_point_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_line.md),
[`draw_line()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line.md),
[`draw_line_3d()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_3d.md),
[`draw_line_bezier()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_bezier.md),
[`draw_line_dashed()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_dashed.md),
[`draw_line_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_ex.md),
[`draw_line_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_v.md)

Other collision functions:
[`check_collision_box_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_boxes.md),
[`check_collision_circle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circles.md),
[`check_collision_point_circle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_circle.md),
[`check_collision_point_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_spheres.md),
[`get_collision_rec()`](https://jeroenjanssens.github.io/raylibr/reference/get_collision_rec.md)

Other check functions:
[`check_collision_box_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_boxes.md),
[`check_collision_circle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circles.md),
[`check_collision_point_circle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_circle.md),
[`check_collision_point_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_spheres.md)

## Examples

``` r
check_collision_circle_line(c(100, 100), 50.0, c(100, 100), c(100, 100))
#> [1] TRUE
```
