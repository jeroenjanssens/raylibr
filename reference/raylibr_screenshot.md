# Render a 2D scene to an image

Creates a hidden window, calls the supplied drawing function on a black
background, and returns the captured framebuffer as an `image` object.
The image auto-displays in knitr documents (like ggplot2 plots) and can
be saved with
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md).

## Usage

``` r
raylibr_screenshot(draw, width = 400L, height = 300L)
```

## Arguments

- draw:

  A function containing drawing calls (e.g., `draw_circle`,
  `draw_text`).

- width:

  An integer. Window width in pixels.

- height:

  An integer. Window height in pixels.

## Value

An image object.

## Examples

``` r
if (FALSE) {
raylibr_screenshot(function() {
  draw_circle(200L, 150L, 80.0, "yellow")
})
}
```
