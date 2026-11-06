# log Level

Enum values for `log_level`.

## Usage

``` r
log_level
```

## Format

An object of class `list` of length 8.

## Details

|           |       |
|-----------|-------|
| Name      | Value |
| `all`     | 0     |
| `trace`   | 1     |
| `debug`   | 2     |
| `info`    | 3     |
| `warning` | 4     |
| `error`   | 5     |
| `fatal`   | 6     |
| `none`    | 7     |

## See also

Other Enums & constants:
[`camera_mode`](https://raylibr.jeroenjanssens.com/reference/camera_mode.md),
[`camera_projection`](https://raylibr.jeroenjanssens.com/reference/camera_projection.md),
[`flag`](https://raylibr.jeroenjanssens.com/reference/flag.md),
[`key`](https://raylibr.jeroenjanssens.com/reference/key.md),
[`material_map_index`](https://raylibr.jeroenjanssens.com/reference/material_map_index.md),
[`mouse_button`](https://raylibr.jeroenjanssens.com/reference/mouse_button.md),
[`mouse_cursor`](https://raylibr.jeroenjanssens.com/reference/mouse_cursor.md),
[`shader_uniform`](https://raylibr.jeroenjanssens.com/reference/shader_uniform.md)

## Examples

``` r
log_level$all
#> [1] 0
log_level$info
#> [1] 3
log_level$none
#> [1] 7
```
