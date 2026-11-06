# Render Texture

Create a new render_texture object.

## Usage

``` r
render_texture(id, texture, depth)
```

## Arguments

- id:

  A non-negative integer. OpenGL framebuffer object id.

- texture:

  A texture. Color buffer attachment texture.

- depth:

  A texture. Depth buffer attachment texture.

## Value

A render_texture

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct RenderTexture {
        unsigned int id;        // OpenGL framebuffer object id
        Texture texture;        // Color buffer attachment texture
        Texture depth;        // Depth buffer attachment texture
    } RenderTexture;

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
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
ren <- render_texture(0L, texture(0L, 64L, 64L, 1L, 7L), texture(0L, 64L, 64L, 1L, 7L))
ren$id
#> [1] 0
ren$texture
#> texture(id = 0, width = 64, height = 64, mipmaps = 1, format = 7) 
```
