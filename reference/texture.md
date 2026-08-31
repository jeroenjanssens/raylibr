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
[`draw_texture()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture.md),
[`get_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/get_shapes_texture.md),
[`load_image_from_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_texture.md),
[`load_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_render_texture.md),
[`load_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture.md),
[`set_shader_value_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_texture.md),
[`set_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shapes_texture.md),
[`unload_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_render_texture.md),
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md)

## Examples

``` r
if (FALSE) { # \dontrun{
tex <- texture(0L, 800L, 450L, 0L, 0L)
tex$id
tex$width
} # }
```
