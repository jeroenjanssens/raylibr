# Color Alpha

Get color with alpha applied, alpha goes from 0.0f to 1.0f.

## Usage

``` r
color_alpha(color, alpha)
```

## Arguments

- color:

  A color.

- alpha:

  A number.

## Value

A color

## Note

This function has been auto-generated from the following Raylib function
definition:

    Color ColorAlpha(Color color, float alpha);

## See also

Other alpha functions:
[`color_alpha_blend()`](https://jeroenjanssens.github.io/raylibr/reference/color_alpha_blend.md)

## Examples

``` r
color_alpha("red", 0.0)
#> color(r = 255, g = 0, b = 0, a = 0) 
```
