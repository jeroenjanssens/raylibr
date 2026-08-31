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
[`draw_text_codepoint()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_codepoint.md),
[`draw_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_ex.md),
[`draw_text_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_pro.md),
[`file_text_find_index()`](https://jeroenjanssens.github.io/raylibr/reference/file_text_find_index.md),
[`file_text_replace()`](https://jeroenjanssens.github.io/raylibr/reference/file_text_replace.md),
[`gen_image_text()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_text.md),
[`get_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_text.md),
[`get_text_between()`](https://jeroenjanssens.github.io/raylibr/reference/get_text_between.md),
[`image_text()`](https://jeroenjanssens.github.io/raylibr/reference/image_text.md),
[`image_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/image_text_ex.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`measure_text()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text.md),
[`measure_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text_ex.md),
[`set_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/set_clipboard_text.md),
[`set_text_line_spacing()`](https://jeroenjanssens.github.io/raylibr/reference/set_text_line_spacing.md)

Other file functions:
[`get_file_extension()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_extension.md),
[`get_file_length()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_length.md),
[`get_file_mod_time()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_mod_time.md),
[`get_file_name()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_name.md),
[`get_file_name_without_ext()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_name_without_ext.md),
[`is_file_dropped()`](https://jeroenjanssens.github.io/raylibr/reference/is_file_dropped.md),
[`is_file_extension()`](https://jeroenjanssens.github.io/raylibr/reference/is_file_extension.md),
[`is_file_name_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_file_name_valid.md),
[`is_path_file()`](https://jeroenjanssens.github.io/raylibr/reference/is_path_file.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md)

## Examples

``` r
if (FALSE) {
save_file_text("file.png", "Hello")
}
```
