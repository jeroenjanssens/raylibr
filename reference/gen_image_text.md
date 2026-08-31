# Gen Image Text

Generate image: grayscale image from text data.

## Usage

``` r
gen_image_text(width, height, text)
```

## Arguments

- width:

  An integer.

- height:

  An integer.

- text:

  A string.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image GenImageText(int width, int height, const char * text);

## See also

Other text functions:
[`draw_text()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text.md),
[`get_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_text.md),
[`image_text()`](https://jeroenjanssens.github.io/raylibr/reference/image_text.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`measure_text()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text.md),
[`save_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/save_file_text.md),
[`set_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/set_clipboard_text.md)

## Examples

``` r
if (FALSE) { # \dontrun{
gen_image_text(800L, 450L, "Hello")
} # }
```
