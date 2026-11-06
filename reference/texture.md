# Texture

Create a new texture object.

## Usage

``` r
texture(id, width, height, mipmaps, format)
```

## Arguments

- id:

  A non-negative integer. OpenGL texture id.

- width:

  An integer. Texture base width.

- height:

  An integer. Texture base height.

- mipmaps:

  An integer. Mipmap levels, 1 by default.

- format:

  An integer. Data format (PixelFormat type).

## Value

A texture

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Texture {
        unsigned int id;        // OpenGL texture id
        int width;        // Texture base width
        int height;        // Texture base height
        int mipmaps;        // Mipmap levels, 1 by default
        int format;        // Data format (PixelFormat type)
    } Texture;

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
[`rectangle()`](https://raylibr.jeroenjanssens.com/reference/rectangle.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md)

## Examples

``` r
tex <- texture(0L, 800L, 450L, 0L, 0L)
tex$id
#> [1] 0
tex$width
#> [1] 800
```
