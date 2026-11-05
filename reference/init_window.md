# Init Window

Initialize window and OpenGL context.

## Usage

``` r
init_window(width = 640L, height = 480L, title = "raylibr")
```

## Arguments

- width:

  An integer.

- height:

  An integer.

- title:

  A string.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void InitWindow(int width, int height, const char * title);

## See also

Other window functions:
[`clear_window_state()`](https://raylibr.jeroenjanssens.com/reference/clear_window_state.md),
[`close_window()`](https://raylibr.jeroenjanssens.com/reference/close_window.md),
[`get_window_position()`](https://raylibr.jeroenjanssens.com/reference/get_window_position.md),
[`get_window_scale_dpi()`](https://raylibr.jeroenjanssens.com/reference/get_window_scale_dpi.md),
[`is_window_focused()`](https://raylibr.jeroenjanssens.com/reference/is_window_focused.md),
[`is_window_fullscreen()`](https://raylibr.jeroenjanssens.com/reference/is_window_fullscreen.md),
[`is_window_hidden()`](https://raylibr.jeroenjanssens.com/reference/is_window_hidden.md),
[`is_window_maximized()`](https://raylibr.jeroenjanssens.com/reference/is_window_maximized.md),
[`is_window_minimized()`](https://raylibr.jeroenjanssens.com/reference/is_window_minimized.md),
[`is_window_ready()`](https://raylibr.jeroenjanssens.com/reference/is_window_ready.md),
[`is_window_resized()`](https://raylibr.jeroenjanssens.com/reference/is_window_resized.md),
[`is_window_state()`](https://raylibr.jeroenjanssens.com/reference/is_window_state.md),
[`maximize_window()`](https://raylibr.jeroenjanssens.com/reference/maximize_window.md),
[`minimize_window()`](https://raylibr.jeroenjanssens.com/reference/minimize_window.md),
[`restore_window()`](https://raylibr.jeroenjanssens.com/reference/restore_window.md),
[`set_window_focused()`](https://raylibr.jeroenjanssens.com/reference/set_window_focused.md),
[`set_window_icon()`](https://raylibr.jeroenjanssens.com/reference/set_window_icon.md),
[`set_window_max_size()`](https://raylibr.jeroenjanssens.com/reference/set_window_max_size.md),
[`set_window_min_size()`](https://raylibr.jeroenjanssens.com/reference/set_window_min_size.md),
[`set_window_monitor()`](https://raylibr.jeroenjanssens.com/reference/set_window_monitor.md),
[`set_window_opacity()`](https://raylibr.jeroenjanssens.com/reference/set_window_opacity.md),
[`set_window_position()`](https://raylibr.jeroenjanssens.com/reference/set_window_position.md),
[`set_window_size()`](https://raylibr.jeroenjanssens.com/reference/set_window_size.md),
[`set_window_state()`](https://raylibr.jeroenjanssens.com/reference/set_window_state.md),
[`set_window_title()`](https://raylibr.jeroenjanssens.com/reference/set_window_title.md)

Other init functions:
[`init_audio_device()`](https://raylibr.jeroenjanssens.com/reference/init_audio_device.md)

## Examples

``` r
if (FALSE) {
init_window(800L, 450L, "My Window")
}
```
