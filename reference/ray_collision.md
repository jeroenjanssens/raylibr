# Ray Collision

Create a new ray_collision object.

## Usage

``` r
ray_collision(hit, distance, point, normal)
```

## Arguments

- hit:

  A logical. Did the ray hit something?.

- distance:

  A number. Distance to the nearest hit.

- point:

  A numeric vector of length 3. Point of the nearest hit.

- normal:

  A numeric vector of length 3. Surface normal of hit.

## Value

A ray_collision

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct RayCollision {
        bool hit;        // Did the ray hit something?
        float distance;        // Distance to the nearest hit
        Vector3 point;        // Point of the nearest hit
        Vector3 normal;        // Surface normal of hit
    } RayCollision;

## See also

Other Structs:
[`bounding_box()`](https://raylibr.jeroenjanssens.com/reference/bounding_box.md),
[`camera_2d()`](https://raylibr.jeroenjanssens.com/reference/camera_2d.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
[`glyph_info()`](https://raylibr.jeroenjanssens.com/reference/glyph_info.md),
[`material_map()`](https://raylibr.jeroenjanssens.com/reference/material_map.md),
[`n_patch_info()`](https://raylibr.jeroenjanssens.com/reference/n_patch_info.md),
[`ray()`](https://raylibr.jeroenjanssens.com/reference/ray.md),
[`raylib_transform()`](https://raylibr.jeroenjanssens.com/reference/raylib_transform.md),
[`rectangle()`](https://raylibr.jeroenjanssens.com/reference/rectangle.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
ray <- ray_collision(TRUE, 1.0, c(0, 0, 0), c(0, 0, 0))
ray$hit
#> [1] TRUE
ray$distance
#> [1] 1
```
