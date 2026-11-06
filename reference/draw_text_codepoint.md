# Draw Text Codepoint

Draw one character (codepoint).

## Usage

``` r
draw_text_codepoint(font, codepoint, position, font_size, tint)
```

## Arguments

- font:

  A font.

- codepoint:

  An integer.

- position:

  A numeric vector of length 2.

- font_size:

  A number.

- tint:

  A color.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);

## See also

Other Text & fonts:
[`draw_text()`](https://raylibr.jeroenjanssens.com/reference/draw_text.md),
[`draw_text_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_text_ex.md),
[`draw_text_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_text_pro.md),
[`export_font_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_font_as_code.md),
[`get_codepoint_count()`](https://raylibr.jeroenjanssens.com/reference/get_codepoint_count.md),
[`get_font_default()`](https://raylibr.jeroenjanssens.com/reference/get_font_default.md),
[`get_glyph_atlas_rec()`](https://raylibr.jeroenjanssens.com/reference/get_glyph_atlas_rec.md),
[`get_glyph_index()`](https://raylibr.jeroenjanssens.com/reference/get_glyph_index.md),
[`get_glyph_info()`](https://raylibr.jeroenjanssens.com/reference/get_glyph_info.md),
[`get_text_between()`](https://raylibr.jeroenjanssens.com/reference/get_text_between.md),
[`is_font_valid()`](https://raylibr.jeroenjanssens.com/reference/is_font_valid.md),
[`load_font()`](https://raylibr.jeroenjanssens.com/reference/load_font.md),
[`load_font_ex()`](https://raylibr.jeroenjanssens.com/reference/load_font_ex.md),
[`load_font_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_font_from_image.md),
[`measure_text()`](https://raylibr.jeroenjanssens.com/reference/measure_text.md),
[`measure_text_ex()`](https://raylibr.jeroenjanssens.com/reference/measure_text_ex.md),
[`set_text_line_spacing()`](https://raylibr.jeroenjanssens.com/reference/set_text_line_spacing.md),
[`text_find_index()`](https://raylibr.jeroenjanssens.com/reference/text_find_index.md),
[`text_insert()`](https://raylibr.jeroenjanssens.com/reference/text_insert.md),
[`text_insert_alloc()`](https://raylibr.jeroenjanssens.com/reference/text_insert_alloc.md),
[`text_is_equal()`](https://raylibr.jeroenjanssens.com/reference/text_is_equal.md),
[`text_length()`](https://raylibr.jeroenjanssens.com/reference/text_length.md),
[`text_remove_spaces()`](https://raylibr.jeroenjanssens.com/reference/text_remove_spaces.md),
[`text_replace()`](https://raylibr.jeroenjanssens.com/reference/text_replace.md),
[`text_replace_alloc()`](https://raylibr.jeroenjanssens.com/reference/text_replace_alloc.md),
[`text_replace_between()`](https://raylibr.jeroenjanssens.com/reference/text_replace_between.md),
[`text_replace_between_alloc()`](https://raylibr.jeroenjanssens.com/reference/text_replace_between_alloc.md),
[`text_subtext()`](https://raylibr.jeroenjanssens.com/reference/text_subtext.md),
[`text_to_camel()`](https://raylibr.jeroenjanssens.com/reference/text_to_camel.md),
[`text_to_float()`](https://raylibr.jeroenjanssens.com/reference/text_to_float.md),
[`text_to_integer()`](https://raylibr.jeroenjanssens.com/reference/text_to_integer.md),
[`text_to_lower()`](https://raylibr.jeroenjanssens.com/reference/text_to_lower.md),
[`text_to_pascal()`](https://raylibr.jeroenjanssens.com/reference/text_to_pascal.md),
[`text_to_snake()`](https://raylibr.jeroenjanssens.com/reference/text_to_snake.md),
[`text_to_upper()`](https://raylibr.jeroenjanssens.com/reference/text_to_upper.md),
[`unload_font()`](https://raylibr.jeroenjanssens.com/reference/unload_font.md)

## Examples

``` r
if (FALSE) {
draw_text_codepoint(get_font_default(), 0L, c(100, 100), 1.0, "red")
}
```
