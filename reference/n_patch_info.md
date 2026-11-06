# n Patch Info

Create a new n_patch_info object.

## Usage

``` r
n_patch_info(source, left, top, right, bottom, layout)
```

## Arguments

- source:

  A rectangle. Texture source rectangle.

- left:

  An integer. Left border offset.

- top:

  An integer. Top border offset.

- right:

  An integer. Right border offset.

- bottom:

  An integer. Bottom border offset.

- layout:

  An integer. Layout of the n-patch: 3x3, 1x3 or 3x1.

## Value

A n_patch_info

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct NPatchInfo {
        Rectangle source;        // Texture source rectangle
        int left;        // Left border offset
        int top;        // Top border offset
        int right;        // Right border offset
        int bottom;        // Bottom border offset
        int layout;        // Layout of the n-patch: 3x3, 1x3 or 3x1
    } NPatchInfo;

## See also

Other Structs:
[`bounding_box()`](https://raylibr.jeroenjanssens.com/reference/bounding_box.md),
[`camera_2d()`](https://raylibr.jeroenjanssens.com/reference/camera_2d.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
[`glyph_info()`](https://raylibr.jeroenjanssens.com/reference/glyph_info.md),
[`material_map()`](https://raylibr.jeroenjanssens.com/reference/material_map.md),
[`ray()`](https://raylibr.jeroenjanssens.com/reference/ray.md),
[`ray_collision()`](https://raylibr.jeroenjanssens.com/reference/ray_collision.md),
[`raylib_transform()`](https://raylibr.jeroenjanssens.com/reference/raylib_transform.md),
[`rectangle()`](https://raylibr.jeroenjanssens.com/reference/rectangle.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
n_p <- n_patch_info(rectangle(10, 10, 200, 100), 0L, 0L, 0L, 0L, 0L)
n_p$source
#> rectangle(x = 10, y = 10, width = 200, height = 100) 
n_p$left
#> [1] 0
```
