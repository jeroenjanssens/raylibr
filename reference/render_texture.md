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
