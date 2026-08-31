# Make Directory

Create directories (including full path requested), returns 0 on
success.

## Usage

``` r
make_directory(dir_path)
```

## Arguments

- dir_path:

  A string.

## Value

An integer

## Note

This function has been auto-generated from the following Raylib function
definition:

    int MakeDirectory(const char * dirPath);

## See also

Other directory functions:
[`change_directory()`](https://jeroenjanssens.github.io/raylibr/reference/change_directory.md),
[`get_application_directory()`](https://jeroenjanssens.github.io/raylibr/reference/get_application_directory.md),
[`get_working_directory()`](https://jeroenjanssens.github.io/raylibr/reference/get_working_directory.md)

## Examples

``` r
if (FALSE) { # \dontrun{
make_directory("file.png")
} # }
```
