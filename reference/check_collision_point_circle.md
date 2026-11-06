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

Other Collision detection:
[`check_collision_box_sphere()`](https://raylibr.jeroenjanssens.com/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://raylibr.jeroenjanssens.com/reference/check_collision_boxes.md),
[`check_collision_circle_line()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circle_line.md),
[`check_collision_circle_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circles.md),
[`check_collision_point_line()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_rec.md),
[`check_collision_point_triangle()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://raylibr.jeroenjanssens.com/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://raylibr.jeroenjanssens.com/reference/check_collision_spheres.md),
[`get_collision_rec()`](https://raylibr.jeroenjanssens.com/reference/get_collision_rec.md),
[`get_ray_collision_box()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_box.md),
[`get_ray_collision_mesh()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_mesh.md),
[`get_ray_collision_quad()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_quad.md),
[`get_ray_collision_sphere()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_sphere.md),
[`get_ray_collision_triangle()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_triangle.md)

## Examples

``` r
check_collision_point_circle(c(100, 100), c(100, 100), 50.0)
#> [1] TRUE
```
