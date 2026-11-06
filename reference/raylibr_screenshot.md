# Render a 2D scene to an image

Creates a hidden window, calls the supplied drawing function on a black
background, and returns the captured framebuffer as an `image` object.
The image auto-displays in knitr documents (like ggplot2 plots) and can
be saved with
[`export_image()`](https://raylibr.jeroenjanssens.com/reference/export_image.md).

## Usage

``` r
raylibr_screenshot(draw, width = 640L, height = 480L)
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

An image object. On HiDPI displays the framebuffer is captured at full
pixel density (e.g., 1280x960 for a 640x480 window at 2x scale); knitr
still displays it at `width` x `height`.

## See also

Other Utility:
[`get_clipboard_image()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_image.md),
[`get_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_text.md),
[`get_random_value()`](https://raylibr.jeroenjanssens.com/reference/get_random_value.md),
[`open_url()`](https://raylibr.jeroenjanssens.com/reference/open_url.md),
[`raylib_version()`](https://raylibr.jeroenjanssens.com/reference/raylib_version.md),
[`raylibr_resource()`](https://raylibr.jeroenjanssens.com/reference/raylibr_resource.md),
[`raylibr_screenshot_3d()`](https://raylibr.jeroenjanssens.com/reference/raylibr_screenshot_3d.md),
[`set_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/set_clipboard_text.md),
[`set_config_flags()`](https://raylibr.jeroenjanssens.com/reference/set_config_flags.md),
[`set_exit_key()`](https://raylibr.jeroenjanssens.com/reference/set_exit_key.md),
[`set_random_seed()`](https://raylibr.jeroenjanssens.com/reference/set_random_seed.md),
[`set_trace_log_level()`](https://raylibr.jeroenjanssens.com/reference/set_trace_log_level.md),
[`take_screenshot()`](https://raylibr.jeroenjanssens.com/reference/take_screenshot.md),
[`wait_time()`](https://raylibr.jeroenjanssens.com/reference/wait_time.md)

## Examples

``` r
if (FALSE) {
raylibr_screenshot(function() {
  draw_circle(200L, 150L, 80.0, "yellow")
})
}
```
