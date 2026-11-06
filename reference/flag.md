# Flag

Enum values for `flag`.

## Usage

``` r
flag
```

## Format

An object of class `list` of length 16.

## Details

|                            |       |
|----------------------------|-------|
| Name                       | Value |
| `vsync_hint`               | 64    |
| `fullscreen_mode`          | 2     |
| `window_resizable`         | 4     |
| `window_undecorated`       | 8     |
| `window_hidden`            | 128   |
| `window_minimized`         | 512   |
| `window_maximized`         | 1024  |
| `window_unfocused`         | 2048  |
| `window_topmost`           | 4096  |
| `window_always_run`        | 256   |
| `window_transparent`       | 16    |
| `window_highdpi`           | 8192  |
| `window_mouse_passthrough` | 16384 |
| `borderless_windowed_mode` | 32768 |
| `msaa_4x_hint`             | 32    |
| `interlaced_hint`          | 65536 |

## See also

Other Enums & constants:
[`camera_mode`](https://raylibr.jeroenjanssens.com/reference/camera_mode.md),
[`camera_projection`](https://raylibr.jeroenjanssens.com/reference/camera_projection.md),
[`key`](https://raylibr.jeroenjanssens.com/reference/key.md),
[`log_level`](https://raylibr.jeroenjanssens.com/reference/log_level.md),
[`material_map_index`](https://raylibr.jeroenjanssens.com/reference/material_map_index.md),
[`mouse_button`](https://raylibr.jeroenjanssens.com/reference/mouse_button.md),
[`mouse_cursor`](https://raylibr.jeroenjanssens.com/reference/mouse_cursor.md),
[`shader_uniform`](https://raylibr.jeroenjanssens.com/reference/shader_uniform.md)

## Examples

``` r
flag$vsync_hint
#> [1] 64
flag$window_unfocused
#> [1] 2048
flag$interlaced_hint
#> [1] 65536
```
