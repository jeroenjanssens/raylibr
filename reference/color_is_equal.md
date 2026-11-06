# Color Is Equal

Check if two colors are equal.

## Usage

``` r
color_is_equal(col1, col2)
```

## Arguments

- col1:

  A color.

- col2:

  A color.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool ColorIsEqual(Color col1, Color col2);

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
[`color_lerp()`](https://raylibr.jeroenjanssens.com/reference/color_lerp.md),
[`color_normalize()`](https://raylibr.jeroenjanssens.com/reference/color_normalize.md),
[`color_tint()`](https://raylibr.jeroenjanssens.com/reference/color_tint.md),
[`color_to_hsv()`](https://raylibr.jeroenjanssens.com/reference/color_to_hsv.md),
[`color_to_int()`](https://raylibr.jeroenjanssens.com/reference/color_to_int.md),
[`fade()`](https://raylibr.jeroenjanssens.com/reference/fade.md),
[`get_color()`](https://raylibr.jeroenjanssens.com/reference/get_color.md)

## Examples

``` r
color_is_equal("red", "red")
#> [1] TRUE
```
