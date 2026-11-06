# Glyph Info

Create a new glyph_info object.

## Usage

``` r
glyph_info(value, offset_x, offset_y, advance_x, image)
```

## Arguments

- value:

  An integer. Character value (Unicode).

- offset_x:

  An integer. Character offset X when drawing.

- offset_y:

  An integer. Character offset Y when drawing.

- advance_x:

  An integer. Character advance position X.

- image:

  An image. Character image data.

## Value

A glyph_info

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct GlyphInfo {
        int value;        // Character value (Unicode)
        int offsetX;        // Character offset X when drawing
        int offsetY;        // Character offset Y when drawing
        int advanceX;        // Character advance position X
        Image image;        // Character image data
    } GlyphInfo;

## See also

Other Structs:
[`bounding_box()`](https://raylibr.jeroenjanssens.com/reference/bounding_box.md),
[`camera_2d()`](https://raylibr.jeroenjanssens.com/reference/camera_2d.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
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
gly <- glyph_info(0L, 0L, 0L, 0L, gen_image_color(200, 200, "blue"))
gly$value
#> [1] 0
gly$offset_x
#> [1] 0
```
