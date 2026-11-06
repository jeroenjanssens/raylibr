# Camera 2d

Create a new camera_2d object.

## Usage

``` r
camera_2d(offset, target, rotation = 0, zoom = 1)
```

## Arguments

- offset:

  A numeric vector of length 2. Camera offset (screen space offset from
  window origin).

- target:

  A numeric vector of length 2. Camera target (world space target point
  that is mapped to screen space offset).

- rotation:

  A number. Camera rotation in degrees (pivots around target).

- zoom:

  A number. Camera zoom (scaling around target), must not be set to 0,
  set to 1.0f for no scale.

## Value

A camera_2d

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Camera2D {
        Vector2 offset;        // Camera offset (screen space offset from window origin)
        Vector2 target;        // Camera target (world space target point that is mapped to screen space offset)
        float rotation;        // Camera rotation in degrees (pivots around target)
        float zoom;        // Camera zoom (scaling around target), must not be set to 0, set to 1.0f for no scale
    } Camera2D;

## See also

Other Structs:
[`bounding_box()`](https://raylibr.jeroenjanssens.com/reference/bounding_box.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
[`glyph_info()`](https://raylibr.jeroenjanssens.com/reference/glyph_info.md),
[`material_map()`](https://raylibr.jeroenjanssens.com/reference/material_map.md),
[`n_patch_info()`](https://raylibr.jeroenjanssens.com/reference/n_patch_info.md),
[`ray()`](https://raylibr.jeroenjanssens.com/reference/ray.md),
[`ray_collision()`](https://raylibr.jeroenjanssens.com/reference/ray_collision.md),
[`raylib_transform()`](https://raylibr.jeroenjanssens.com/reference/raylib_transform.md),
[`rectangle()`](https://raylibr.jeroenjanssens.com/reference/rectangle.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
cam <- camera_2d(c(100, 100), c(100, 100))
cam$offset
#>   x   y 
#> 100 100 
cam$target
#>   x   y 
#> 100 100 
```
