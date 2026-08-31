# Check Collision Recs

Check collision between two rectangles.

## Usage

``` r
check_collision_recs(rec1, rec2)
```

## Arguments

- rec1:

  A rectangle.

- rec2:

  A rectangle.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);

## See also

Other check functions:
[`check_collision_box_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_boxes.md),
[`check_collision_circle_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_line.md),
[`check_collision_circle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circles.md),
[`check_collision_point_circle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_circle.md),
[`check_collision_point_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_triangle.md),
[`check_collision_spheres()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_spheres.md)

## Examples

``` r
if (FALSE) { # \dontrun{
check_collision_recs(rectangle(10, 10, 200, 100), rectangle(10, 10, 200, 100))
} # }
```
