# Color

Create a new color object.

## Usage

``` r
color(r, g, b, a = 255)
```

## Arguments

- r:

  A non-negative integer (0-255). Color red value.

- g:

  A non-negative integer (0-255). Color green value.

- b:

  A non-negative integer (0-255). Color blue value.

- a:

  A non-negative integer (0-255). Color alpha value.

## Value

A color

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Color {
        unsigned char r;        // Color red value
        unsigned char g;        // Color green value
        unsigned char b;        // Color blue value
        unsigned char a;        // Color alpha value
    } Color;

## See also

Other color functions:
[`gen_image_color()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_color.md),
[`get_color()`](https://jeroenjanssens.github.io/raylibr/reference/get_color.md),
[`get_image_color()`](https://jeroenjanssens.github.io/raylibr/reference/get_image_color.md)

## Examples

``` r
col <- color(255L, 255L, 255L)
col$r
#> [1] 255
col$g
#> [1] 255
```
