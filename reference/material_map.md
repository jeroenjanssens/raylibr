# Material Map

Create a new material_map object.

## Usage

``` r
material_map(texture, color, value)
```

## Arguments

- texture:

  A texture. Material map texture.

- color:

  A color. Material map color.

- value:

  A number. Material map value.

## Value

A material_map

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct MaterialMap {
        Texture2D texture;        // Material map texture
        Color color;        // Material map color
        float value;        // Material map value
    } MaterialMap;

## Examples

``` r
mat <- material_map(load_texture("file.png"), "red", 0.0)
mat$texture
#> texture(id = 0, width = 0, height = 0, mipmaps = 0, format = 0) 
mat$color
#> color(r = 255, g = 0, b = 0, a = 255) 
```
