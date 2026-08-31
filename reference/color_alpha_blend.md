# Color Alpha Blend

Get src alpha-blended into dst color with tint.

## Usage

``` r
color_alpha_blend(dst, src, tint)
```

## Arguments

- dst:

  A color.

- src:

  A color.

- tint:

  A color.

## Value

A color

## Note

This function has been auto-generated from the following Raylib function
definition:

    Color ColorAlphaBlend(Color dst, Color src, Color tint);

## See also

Other blend functions:
[`begin_blend_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_blend_mode.md),
[`end_blend_mode()`](https://jeroenjanssens.github.io/raylibr/reference/end_blend_mode.md)

Other alpha functions:
[`color_alpha()`](https://jeroenjanssens.github.io/raylibr/reference/color_alpha.md)

## Examples

``` r
color_alpha_blend("red", "red", "red")
#> color(r = 255, g = 0, b = 0, a = 255) 
```
