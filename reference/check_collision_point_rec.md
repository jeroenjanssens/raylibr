# Check Collision Point Rec

Check if point is inside rectangle.

## Usage

``` r
check_collision_point_rec(point, rec)
```

## Arguments

- point:

  A numeric vector of length 2.

- rec:

  A rectangle.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool CheckCollisionPointRec(Vector2 point, Rectangle rec);

## See also

Other rec functions:
[`check_collision_circle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_rec.md),
[`draw_billboard_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_billboard_rec.md),
[`draw_rectangle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rec.md),
[`draw_texture_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_rec.md),
[`get_collision_rec()`](https://jeroenjanssens.github.io/raylibr/reference/get_collision_rec.md),
[`get_glyph_atlas_rec()`](https://jeroenjanssens.github.io/raylibr/reference/get_glyph_atlas_rec.md)

Other check functions:
[`check_collision_box_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_boxes.md),
[`check_collision_circle_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_line.md),
[`check_collision_circle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circles.md),
[`check_collision_point_circle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_circle.md),
[`check_collision_point_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_line.md),
[`check_collision_point_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_spheres.md)

## Examples

``` r
if (FALSE) { # \dontrun{
check_collision_point_rec(c(100, 100), rectangle(10, 10, 200, 100))
} # }
```
