# Test if object is a raylib matrix

Test if object is a raylib matrix

## Usage

``` r
is_raylib_matrix(x)
```

## Arguments

- x:

  An object to test.

## Value

A logical.

## Examples

``` r
is_raylib_matrix(diag(4))
#> [1] TRUE
is_raylib_matrix(matrix(1:9, 3, 3))
#> [1] FALSE
```
