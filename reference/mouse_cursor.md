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

## Examples

``` r
mouse_cursor$default
#> [1] 0
mouse_cursor$resize_ew
#> [1] 5
mouse_cursor$not_allowed
#> [1] 10
```
