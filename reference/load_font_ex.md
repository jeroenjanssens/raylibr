# Load font ex

Load font from file with extended parameters.

## Usage

``` r
load_font_ex(file_name, font_size)
```

## Arguments

- file_name:

  A string.

- font_size:

  An integer.

## Value

A font

## Note

This function has been auto-generated from the following Raylib function
definition:

    Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);

## See also

Other font functions:
[`export_font_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_font_as_code.md),
[`get_font_default()`](https://jeroenjanssens.github.io/raylibr/reference/get_font_default.md),
[`is_font_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_font_valid.md),
[`load_font()`](https://jeroenjanssens.github.io/raylibr/reference/load_font.md),
[`load_font_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_font_from_image.md),
[`unload_font()`](https://jeroenjanssens.github.io/raylibr/reference/unload_font.md)

## Examples

``` r
if (FALSE) {
font <- load_font_ex("myfont.ttf", 32L)
}
```
