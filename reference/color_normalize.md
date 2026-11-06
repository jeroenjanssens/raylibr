# Color Normalize

Get Color normalized as float \\0..1\\.

## Usage

``` r
color_normalize(color)
```

## Arguments

- color:

  A color.

## Value

A numeric vector of length 4

## Note

This function has been auto-generated from the following Raylib function
definition:

    Vector4 ColorNormalize(Color color);

## See also

Other Colors:
[`as_color()`](https://raylibr.jeroenjanssens.com/reference/as_color.md),
[`color()`](https://raylibr.jeroenjanssens.com/reference/color.md),
[`color_alpha()`](https://raylibr.jeroenjanssens.com/reference/color_alpha.md),
[`color_alpha_blend()`](https://raylibr.jeroenjanssens.com/reference/color_alpha_blend.md),
[`color_brightness()`](https://raylibr.jeroenjanssens.com/reference/color_brightness.md),
[`color_contrast()`](https://raylibr.jeroenjanssens.com/reference/color_contrast.md),
[`color_from_hsv()`](https://raylibr.jeroenjanssens.com/reference/color_from_hsv.md),
[`color_from_normalized()`](https://raylibr.jeroenjanssens.com/reference/color_from_normalized.md),
[`color_is_equal()`](https://raylibr.jeroenjanssens.com/reference/color_is_equal.md),
[`color_lerp()`](https://raylibr.jeroenjanssens.com/reference/color_lerp.md),
[`color_tint()`](https://raylibr.jeroenjanssens.com/reference/color_tint.md),
[`color_to_hsv()`](https://raylibr.jeroenjanssens.com/reference/color_to_hsv.md),
[`color_to_int()`](https://raylibr.jeroenjanssens.com/reference/color_to_int.md),
[`fade()`](https://raylibr.jeroenjanssens.com/reference/fade.md),
[`get_color()`](https://raylibr.jeroenjanssens.com/reference/get_color.md)

## Examples

``` r
color_normalize("red")
#> x y z w 
#> 1 0 0 1 
```
