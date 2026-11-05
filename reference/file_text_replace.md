# File Text Replace

Replace text in an existing file.

## Usage

``` r
file_text_replace(file_name, search, replacement)
```

## Arguments

- file_name:

  A string.

- search:

  A string.

- replacement:

  A string.

## Value

An integer

## Note

This function has been auto-generated from the following Raylib function
definition:

    int FileTextReplace(const char * fileName, const char * search, const char * replacement);

## See also

Other replace functions:
[`text_replace()`](https://raylibr.jeroenjanssens.com/reference/text_replace.md),
[`text_replace_alloc()`](https://raylibr.jeroenjanssens.com/reference/text_replace_alloc.md),
[`text_replace_between()`](https://raylibr.jeroenjanssens.com/reference/text_replace_between.md),
[`text_replace_between_alloc()`](https://raylibr.jeroenjanssens.com/reference/text_replace_between_alloc.md)

Other text functions:
[`draw_text()`](https://raylibr.jeroenjanssens.com/reference/draw_text.md),
[`draw_text_codepoint()`](https://raylibr.jeroenjanssens.com/reference/draw_text_codepoint.md),
[`draw_text_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_text_ex.md),
[`draw_text_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_text_pro.md),
[`file_text_find_index()`](https://raylibr.jeroenjanssens.com/reference/file_text_find_index.md),
[`gen_image_text()`](https://raylibr.jeroenjanssens.com/reference/gen_image_text.md),
[`get_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_text.md),
[`get_text_between()`](https://raylibr.jeroenjanssens.com/reference/get_text_between.md),
[`image_text()`](https://raylibr.jeroenjanssens.com/reference/image_text.md),
[`image_text_ex()`](https://raylibr.jeroenjanssens.com/reference/image_text_ex.md),
[`load_file_text()`](https://raylibr.jeroenjanssens.com/reference/load_file_text.md),
[`measure_text()`](https://raylibr.jeroenjanssens.com/reference/measure_text.md),
[`measure_text_ex()`](https://raylibr.jeroenjanssens.com/reference/measure_text_ex.md),
[`save_file_text()`](https://raylibr.jeroenjanssens.com/reference/save_file_text.md),
[`set_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/set_clipboard_text.md),
[`set_text_line_spacing()`](https://raylibr.jeroenjanssens.com/reference/set_text_line_spacing.md)

## Examples

``` r
if (FALSE) {
file_text_replace("file.png", "text", "text")
}
```
