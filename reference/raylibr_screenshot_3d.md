# Render a 3D scene to an image

Creates a hidden window with a default camera, calls the supplied
drawing function inside a 3D mode block, and returns the captured
framebuffer as an `image` object.

## Usage

``` r
raylibr_screenshot_3d(draw, width = 400L, height = 300L)
```

## Arguments

- draw:

  A function containing 3D drawing calls (e.g., `draw_cube`,
  `draw_sphere`).

- width:

  An integer. Window width in pixels.

- height:

  An integer. Window height in pixels.

## Value

An image object.

## Examples

``` r
if (FALSE) {
raylibr_screenshot_3d(function() {
  draw_cube(c(0, 0, 0), 2.0, 2.0, 2.0, "red")
})
}
```
