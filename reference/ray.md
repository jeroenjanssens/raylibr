# Ray

Create a new ray object.

## Usage

``` r
ray(position, direction)
```

## Arguments

- position:

  A numeric vector of length 3. Ray position (origin).

- direction:

  A numeric vector of length 3. Ray direction (normalized).

## Value

A ray

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Ray {
        Vector3 position;        // Ray position (origin)
        Vector3 direction;        // Ray direction (normalized)
    } Ray;

## See also

Other ray functions:
[`draw_ray()`](https://raylibr.jeroenjanssens.com/reference/draw_ray.md),
[`get_ray_collision_box()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_box.md),
[`get_ray_collision_mesh()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_mesh.md),
[`get_ray_collision_quad()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_quad.md),
[`get_ray_collision_sphere()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_sphere.md),
[`get_ray_collision_triangle()`](https://raylibr.jeroenjanssens.com/reference/get_ray_collision_triangle.md),
[`get_screen_to_world_ray()`](https://raylibr.jeroenjanssens.com/reference/get_screen_to_world_ray.md)

## Examples

``` r
ray <- ray(c(0, 5, 0), c(0, 0, 0))
ray$position
#> x y z 
#> 0 5 0 
ray$direction
#> x y z 
#> 0 0 0 
```
