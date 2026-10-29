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

## Examples

``` r
log_level$all
#> [1] 0
log_level$info
#> [1] 3
log_level$none
#> [1] 7
```
