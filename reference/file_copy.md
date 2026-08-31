# File Copy

Copy file from one path to another, dstPath created if it doesn't exist.

## Usage

``` r
file_copy(src_path, dst_path)
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

    int FileCopy(const char * srcPath, const char * dstPath);

## See also

Other copy functions:
[`image_copy()`](https://jeroenjanssens.github.io/raylibr/reference/image_copy.md),
[`wave_copy()`](https://jeroenjanssens.github.io/raylibr/reference/wave_copy.md)

## Examples

``` r
if (FALSE) { # \dontrun{
file_copy("file.png", "file.png")
} # }
```
