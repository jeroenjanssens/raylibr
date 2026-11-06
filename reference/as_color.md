# Convert to color

Convert a value to a color object. Accepts R color names (strings), hex
integers, lists with r/g/b/a components, or existing color objects.

## Usage

``` r
as_color(x)
```

## Arguments

- x:

  A color name (string), hex integer, list, or color object.

## Value

A color object.

## See also

Other Colors:
[`color()`](https://raylibr.jeroenjanssens.com/reference/color.md),
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
as_color("red")
#> color(r = 255, g = 0, b = 0, a = 255) 
as_color(list(r = 255, g = 0, b = 0, a = 255))
#> color(r = 255, g = 0, b = 0, a = 255) 
```
