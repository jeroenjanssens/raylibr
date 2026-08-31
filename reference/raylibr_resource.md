# Resolve resource path

Get the path to a file in the package's demo resources directory. Works
correctly on both desktop and web (Emscripten virtual filesystem).

## Usage

``` r
raylibr_resource(name)
```

## Arguments

- name:

  File name (e.g., `"texture.png"`).

## Value

Full path to the resource file.

## Examples

``` r
raylibr_resource("texture.png")
#> [1] ""
```
