# Rectangle

Create a new rectangle object.

## Usage

``` r
rectangle(x, y, width, height)
```

## Arguments

- x:

  A number. Rectangle top-left corner position x.

- y:

  A number. Rectangle top-left corner position y.

- width:

  A number. Rectangle width.

- height:

  A number. Rectangle height.

## Value

A rectangle

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Rectangle {
        float x;        // Rectangle top-left corner position x
        float y;        // Rectangle top-left corner position y
        float width;        // Rectangle width
        float height;        // Rectangle height
    } Rectangle;

## See also

Other rectangle functions:
[`draw_rectangle()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle.md),
[`draw_rectangle_gradient_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_gradient_ex.md),
[`draw_rectangle_gradient_h()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_gradient_h.md),
[`draw_rectangle_gradient_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_gradient_v.md),
[`draw_rectangle_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_lines.md),
[`draw_rectangle_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_lines_ex.md),
[`draw_rectangle_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_pro.md),
[`draw_rectangle_rec()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rec.md),
[`draw_rectangle_rounded()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded.md),
[`draw_rectangle_rounded_lines()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded_lines.md),
[`draw_rectangle_rounded_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded_lines_ex.md),
[`draw_rectangle_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_v.md),
[`get_shapes_texture_rectangle()`](https://jeroenjanssens.github.io/raylibr/reference/get_shapes_texture_rectangle.md)

## Examples

``` r
rec <- rectangle(0.0, 0.0, 200.0, 100.0)
rec$x
#> [1] 0
rec$y
#> [1] 0
```
