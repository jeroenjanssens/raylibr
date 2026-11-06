# Get Ray Collision Quad

Get collision info between ray and quad.

## Usage

``` r
get_ray_collision_quad(ray, p1, p2, p3, p4)
```

## Arguments

- ray:

  A ray.

- p1:

  A numeric vector of length 3.

- p2:

  A numeric vector of length 3.

- p3:

  A numeric vector of length 3.

- p4:

  A numeric vector of length 3.

## Value

A ray_collision

## Note

This function has been auto-generated from the following Raylib function
definition:

    RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);

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
[`check_collision_point_triangle()`](https://raylibr.jeroenjanssens.com/reference/check_collision_point_triangle.md),
[`check_collision_recs()`](https://raylibr.jeroenjanssens.com/reference/check_collision_recs.md),
[`check_collision_spheres()`](https://raylibr.jeroenjanssens.com/reference/check_collision_spheres.md),
[`get_collision_rec()`](https://raylibr.jeroenjanssens.com/reference/get_collision_rec.md),
[`get_ray_collision_box()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_box.md),
[`get_ray_collision_mesh()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_mesh.md),
[`get_ray_collision_sphere()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_sphere.md),
[`get_ray_collision_triangle()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_triangle.md)

## Examples

``` r
get_ray_collision_quad(
    ray(c(0, 0, 0), c(0, 0, 1)),
    c(0, 0, 0),
    c(0, 0, 0),
    c(0, 0, 0),
    c(0, 0, 0)
  )
#> ray_collision(hit = FALSE, distance = 0, point = 0, 0, 0, normal = 0, 0, 0) 
```
