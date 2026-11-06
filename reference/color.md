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

Other Colors:
[`as_color()`](https://raylibr.jeroenjanssens.com/reference/as_color.md),
[`color_alpha()`](https://raylibr.jeroenjanssens.com/reference/color_alpha.md),
[`color_alpha_blend()`](https://raylibr.jeroenjanssens.com/reference/color_alpha_blend.md),
[`color_brightness()`](https://raylibr.jeroenjanssens.com/reference/color_brightness.md),
[`color_contrast()`](https://raylibr.jeroenjanssens.com/reference/color_contrast.md),
[`color_from_hsv()`](https://raylibr.jeroenjanssens.com/reference/color_from_hsv.md),
[`color_from_normalized()`](https://raylibr.jeroenjanssens.com/reference/color_from_normalized.md),
[`color_is_equal()`](https://raylibr.jeroenjanssens.com/reference/color_is_equal.md),
[`color_lerp()`](https://raylibr.jeroenjanssens.com/reference/color_lerp.md),
[`color_normalize()`](https://raylibr.jeroenjanssens.com/reference/color_normalize.md),
[`color_tint()`](https://raylibr.jeroenjanssens.com/reference/color_tint.md),
[`color_to_hsv()`](https://raylibr.jeroenjanssens.com/reference/color_to_hsv.md),
[`color_to_int()`](https://raylibr.jeroenjanssens.com/reference/color_to_int.md),
[`fade()`](https://raylibr.jeroenjanssens.com/reference/fade.md),
[`get_color()`](https://raylibr.jeroenjanssens.com/reference/get_color.md)

## Examples

``` r
col <- color(255L, 255L, 255L)
col$r
#> [1] 255
col$g
#> [1] 255
```
