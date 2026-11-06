# Draw Fps

Draw current FPS.

## Usage

``` r
draw_fps(pos_x = 10L, pos_y = 10L)
```

## Arguments

- pos_x:

  An integer.

- pos_y:

  An integer.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void DrawFPS(int posX, int posY);

## See also

Other Drawing & timing:
[`begin_drawing()`](https://raylibr.jeroenjanssens.com/reference/begin_drawing.md),
[`clear_background()`](https://raylibr.jeroenjanssens.com/reference/clear_background.md),
[`end_drawing()`](https://raylibr.jeroenjanssens.com/reference/end_drawing.md),
[`get_fps()`](https://raylibr.jeroenjanssens.com/reference/get_fps.md),
[`get_frame_time()`](https://raylibr.jeroenjanssens.com/reference/get_frame_time.md),
[`get_time()`](https://raylibr.jeroenjanssens.com/reference/get_time.md),
[`poll_input_events()`](https://raylibr.jeroenjanssens.com/reference/poll_input_events.md),
[`set_target_fps()`](https://raylibr.jeroenjanssens.com/reference/set_target_fps.md),
[`swap_screen_buffer()`](https://raylibr.jeroenjanssens.com/reference/swap_screen_buffer.md)

## Examples

``` r
raylibr_screenshot(function() draw_fps(100L, 100L))
```
