# Check Collision Box Sphere

Check collision between box and sphere.

## Usage

``` r
check_collision_box_sphere(box, center, radius)
```

## Arguments

- box:

  A bounding_box.

- center:

  A numeric vector of length 3.

- radius:

  A number.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);

## See also

Other sphere functions:
[`draw_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/draw_sphere.md),
[`gen_mesh_hemi_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_hemi_sphere.md),
[`gen_mesh_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_sphere.md),
[`get_ray_collision_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_sphere.md)

Other check functions:
[`check_collision_boxes()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_boxes.md),
[`check_collision_circle_line()`](https://jeroenjanssens.github.io/raylibr/reference/check_collision_circle_line.md),
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
if (FALSE) { # \dontrun{
check_collision_box_sphere(bounding_box(c(-1, -1, -1), c(1, 1, 1)), c(0, 0, 0), 50.0)
} # }
```
