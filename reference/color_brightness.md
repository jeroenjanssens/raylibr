# Color Brightness

Get color with brightness correction, brightness factor goes from -1.0f
to 1.0f.

## Usage

``` r
color_brightness(color, factor)
```

## Arguments

- color:

  A color.

- factor:

  A number.

## Value

A color

## Note

This function has been auto-generated from the following Raylib function
definition:

    Color ColorBrightness(Color color, float factor);

## See also

Other Colors:
[`as_color()`](https://raylibr.jeroenjanssens.com/reference/as_color.md),
[`color()`](https://raylibr.jeroenjanssens.com/reference/color.md),
[`color_alpha()`](https://raylibr.jeroenjanssens.com/reference/color_alpha.md),
[`color_alpha_blend()`](https://raylibr.jeroenjanssens.com/reference/color_alpha_blend.md),
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
color_brightness("red", 0.0)
#> color(r = 255, g = 0, b = 0, a = 255) 
```
