# Check Collision Point Triangle

Check if point is inside a triangle.

## Usage

``` r
check_collision_point_triangle(point, p1, p2, p3)
```

## Arguments

- point:

  A numeric vector of length 2.

- p1:

  A numeric vector of length 2.

- p2:

  A numeric vector of length 2.

- p3:

  A numeric vector of length 2.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);

## See also

Other Collision detection:
[`check_collision_box_sphere()`](https://raylibr.jeroenjanssens.com/reference/check_collision_box_sphere.md),
[`check_collision_boxes()`](https://raylibr.jeroenjanssens.com/reference/check_collision_boxes.md),
[`check_collision_circle_line()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circle_line.md),
[`check_collision_circle_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circle_rec.md),
[`check_collision_circles()`](https://raylibr.jeroenjanssens.com/reference/check_collision_circles.md),
[`check_collision_point_circle()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_circle.md),
[`check_collision_point_line()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_line.md),
[`check_collision_point_rec()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_rec.md),
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
check_collision_point_triangle(c(100, 100), c(100, 100), c(100, 100), c(100, 100))
#> [1] FALSE
```
