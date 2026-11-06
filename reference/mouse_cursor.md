# Mouse Cursor

Enum values for `mouse_cursor`.

## Usage

``` r
mouse_cursor
```

## Format

An object of class `list` of length 11.

## Details

|                 |       |
|-----------------|-------|
| Name            | Value |
| `default`       | 0     |
| `arrow`         | 1     |
| `ibeam`         | 2     |
| `crosshair`     | 3     |
| `pointing_hand` | 4     |
| `resize_ew`     | 5     |
| `resize_ns`     | 6     |
| `resize_nwse`   | 7     |
| `resize_nesw`   | 8     |
| `resize_all`    | 9     |
| `not_allowed`   | 10    |

## See also

Other Enums & constants:
[`camera_mode`](https://raylibr.jeroenjanssens.com/reference/camera_mode.md),
[`camera_projection`](https://raylibr.jeroenjanssens.com/reference/camera_projection.md),
[`flag`](https://raylibr.jeroenjanssens.com/reference/flag.md),
[`key`](https://raylibr.jeroenjanssens.com/reference/key.md),
[`log_level`](https://raylibr.jeroenjanssens.com/reference/log_level.md),
[`material_map_index`](https://raylibr.jeroenjanssens.com/reference/material_map_index.md),
[`mouse_button`](https://raylibr.jeroenjanssens.com/reference/mouse_button.md),
[`shader_uniform`](https://raylibr.jeroenjanssens.com/reference/shader_uniform.md)

## Examples

``` r
mouse_cursor$default
#> [1] 0
mouse_cursor$resize_ew
#> [1] 5
mouse_cursor$not_allowed
#> [1] 10
```
