# File Move

Move file from one directory to another, dstPath created if it doesn't
exist.

## Usage

``` r
file_move(src_path, dst_path)
```

## Arguments

- src_path:

  A string.

- dst_path:

  A string.

## Value

An integer

## Note

This function has been auto-generated from the following Raylib function
definition:

    int FileMove(const char * srcPath, const char * dstPath);

## See also

Other move functions:
[`get_mouse_wheel_move()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_wheel_move.md)

## Examples

``` r
if (FALSE) { # \dontrun{
file_move("file.png", "file.png")
} # }
```
