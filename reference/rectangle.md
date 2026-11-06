# Rectangle

Create a new rectangle object.

## Usage

``` r
rectangle(x, y, width, height)
```

## Arguments

- x:

  A number. Rectangle top-left corner position x.

- y:

  A number. Rectangle top-left corner position y.

- width:

  A number. Rectangle width.

- height:

  A number. Rectangle height.

## Value

A rectangle

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Rectangle {
        float x;        // Rectangle top-left corner position x
        float y;        // Rectangle top-left corner position y
        float width;        // Rectangle width
        float height;        // Rectangle height
    } Rectangle;

## See also

Other Structs:
[`bounding_box()`](https://raylibr.jeroenjanssens.com/reference/bounding_box.md),
[`camera_2d()`](https://raylibr.jeroenjanssens.com/reference/camera_2d.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
[`glyph_info()`](https://raylibr.jeroenjanssens.com/reference/glyph_info.md),
[`material_map()`](https://raylibr.jeroenjanssens.com/reference/material_map.md),
[`n_patch_info()`](https://raylibr.jeroenjanssens.com/reference/n_patch_info.md),
[`ray()`](https://raylibr.jeroenjanssens.com/reference/ray.md),
[`ray_collision()`](https://raylibr.jeroenjanssens.com/reference/ray_collision.md),
[`raylib_transform()`](https://raylibr.jeroenjanssens.com/reference/raylib_transform.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
rec <- rectangle(0.0, 0.0, 200.0, 100.0)
rec$x
#> [1] 0
rec$y
#> [1] 0
```
