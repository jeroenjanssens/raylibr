# Material Map Index

Enum values for `material_map_index`.

## Usage

``` r
material_map_index
```

## Format

An object of class `list` of length 11.

## Details

|              |       |
|--------------|-------|
| Name         | Value |
| `albedo`     | 0     |
| `metalness`  | 1     |
| `normal`     | 2     |
| `roughness`  | 3     |
| `occlusion`  | 4     |
| `emission`   | 5     |
| `height`     | 6     |
| `cubemap`    | 7     |
| `irradiance` | 8     |
| `prefilter`  | 9     |
| `brdf`       | 10    |

## See also

Other Enums & constants:
[`camera_mode`](https://raylibr.jeroenjanssens.com/reference/camera_mode.md),
[`camera_projection`](https://raylibr.jeroenjanssens.com/reference/camera_projection.md),
[`flag`](https://raylibr.jeroenjanssens.com/reference/flag.md),
[`key`](https://raylibr.jeroenjanssens.com/reference/key.md),
[`log_level`](https://raylibr.jeroenjanssens.com/reference/log_level.md),
[`mouse_button`](https://raylibr.jeroenjanssens.com/reference/mouse_button.md),
[`mouse_cursor`](https://raylibr.jeroenjanssens.com/reference/mouse_cursor.md),
[`shader_uniform`](https://raylibr.jeroenjanssens.com/reference/shader_uniform.md)

## Examples

``` r
material_map_index$albedo
#> [1] 0
material_map_index$emission
#> [1] 5
material_map_index$brdf
#> [1] 10
```
