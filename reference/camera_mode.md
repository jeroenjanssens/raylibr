# Camera Mode

Enum values for `camera_mode`.

## Usage

``` r
camera_mode
```

## Format

An object of class `list` of length 5.

## Details

|                |       |
|----------------|-------|
| Name           | Value |
| `custom`       | 0     |
| `free`         | 1     |
| `orbital`      | 2     |
| `first_person` | 3     |
| `third_person` | 4     |

## See also

Other Enums & constants:
[`camera_projection`](https://raylibr.jeroenjanssens.com/reference/camera_projection.md),
[`flag`](https://raylibr.jeroenjanssens.com/reference/flag.md),
[`key`](https://raylibr.jeroenjanssens.com/reference/key.md),
[`log_level`](https://raylibr.jeroenjanssens.com/reference/log_level.md),
[`material_map_index`](https://raylibr.jeroenjanssens.com/reference/material_map_index.md),
[`mouse_button`](https://raylibr.jeroenjanssens.com/reference/mouse_button.md),
[`mouse_cursor`](https://raylibr.jeroenjanssens.com/reference/mouse_cursor.md),
[`shader_uniform`](https://raylibr.jeroenjanssens.com/reference/shader_uniform.md)

## Examples

``` r
camera_mode$custom
#> [1] 0
camera_mode$orbital
#> [1] 2
camera_mode$third_person
#> [1] 4
```
