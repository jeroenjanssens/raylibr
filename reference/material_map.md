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
mat <- material_map(texture(0L, 64L, 64L, 1L, 7L), "red", 0.0)
mat$texture
#> texture(id = 0, width = 64, height = 64, mipmaps = 1, format = 7) 
mat$color
#> color(r = 255, g = 0, b = 0, a = 255) 
```
