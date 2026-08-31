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

Other texture functions:
[`begin_texture_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_texture_mode.md),
[`draw_texture()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture.md),
[`draw_texture_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_ex.md),
[`draw_texture_n_patch()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_n_patch.md),
[`draw_texture_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_pro.md),
[`draw_texture_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_rec.md),
[`draw_texture_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_v.md),
[`end_texture_mode()`](https://jeroenjanssens.github.io/raylibr/reference/end_texture_mode.md),
[`get_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/get_shapes_texture.md),
[`is_texture_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_texture_valid.md),
[`load_image_from_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_texture.md),
[`load_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_render_texture.md),
[`load_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture.md),
[`load_texture_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture_from_image.md),
[`set_shader_value_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_texture.md),
[`set_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shapes_texture.md),
[`set_texture_filter()`](https://jeroenjanssens.github.io/raylibr/reference/set_texture_filter.md),
[`set_texture_wrap()`](https://jeroenjanssens.github.io/raylibr/reference/set_texture_wrap.md),
[`unload_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_render_texture.md),
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md)

## Examples

``` r
tex <- texture(0L, 800L, 450L, 0L, 0L)
tex$id
#> [1] 0
tex$width
#> [1] 800
```
