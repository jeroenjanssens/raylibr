# Gen Image Gradient Linear

Generate image: linear gradient, direction in degrees \\0..360\\,
0=Vertical gradient.

## Usage

``` r
gen_image_gradient_linear(width, height, direction, start, end)
```

## Arguments

- width:

  An integer.

- height:

  An integer.

- direction:

  An integer.

- start:

  A color.

- end:

  A color.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image GenImageGradientLinear(int width, int height, int direction, Color start, Color end);

## See also

Other linear functions:
[`draw_spline_segment_linear()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_segment_linear.md),
[`get_spline_point_linear()`](https://jeroenjanssens.github.io/raylibr/reference/get_spline_point_linear.md)

## Examples

``` r
if (FALSE) { # \dontrun{
gen_image_gradient_linear(800L, 450L, 0L, "red", "red")
} # }
```
