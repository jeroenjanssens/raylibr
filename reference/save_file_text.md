# Save File Text

Save text data to file (write), string must be '\0' terminated, returns
true on success.

## Usage

``` r
save_file_text(file_name, text)
```

## Arguments

- file_name:

  A string.

- text:

  A string.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool SaveFileText(const char * fileName, const char * text);

## See also

Other text functions:
[`draw_text()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text.md),
[`gen_image_text()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_text.md),
[`get_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_text.md),
[`image_text()`](https://jeroenjanssens.github.io/raylibr/reference/image_text.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`measure_text()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text.md),
[`set_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/set_clipboard_text.md)

## Examples

``` r
if (FALSE) { # \dontrun{
save_file_text("file.png", "Hello")
} # }
```
