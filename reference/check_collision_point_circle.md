# Check Collision Point Circle

Check if point is inside circle.

## Usage

``` r
check_collision_point_circle(point, center, radius)
```

## Arguments

- point:

  A numeric vector of length 2.

- center:

  A numeric vector of length 2.

- radius:

  A number.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);

## See also

Other circle functions:
[`draw_circle()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle.md),
[`draw_circle_3d()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_3d.md),
[`draw_circle_gradient()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_gradient.md),
[`draw_circle_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_lines.md),
[`draw_circle_lines_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_lines_v.md),
[`draw_circle_sector()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_sector.md),
[`draw_circle_sector_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_sector_lines.md),
[`draw_circle_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_v.md)

Other collision functions:
[`check_collision_box_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_boxes.md),
[`check_collision_circle_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_line.md),
[`check_collision_circle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circles.md),
[`check_collision_point_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_spheres.md),
[`get_collision_rec()`](https://jeroenjanssens.github.io/raylibr/reference/get_collision_rec.md)

Other check functions:
[`check_collision_box_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_boxes.md),
[`check_collision_circle_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_line.md),
[`check_collision_circle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circles.md),
[`check_collision_point_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_spheres.md)

## Examples

``` r
check_collision_point_circle(c(100, 100), c(100, 100), 50.0)
#> [1] TRUE
```
