# Measure Text Ex

Measure string size for Font.

## Usage

``` r
measure_text_ex(font, text, font_size, spacing)
```

## Arguments

- font:

  A font.

- text:

  A string.

- font_size:

  A number.

- spacing:

  A number.

## Value

A numeric vector of length 2

## Note

This function has been auto-generated from the following Raylib function
definition:

    Vector2 MeasureTextEx(Font font, const char * text, float fontSize, float spacing);

## See also

Other ex functions:
[`draw_cylinder_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_ex.md),
[`draw_cylinder_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_wires_ex.md),
[`draw_line_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_line_ex.md),
[`draw_model_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_ex.md),
[`draw_model_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires_ex.md),
[`draw_poly_lines_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_poly_lines_ex.md),
[`draw_rectangle_gradient_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_rectangle_gradient_ex.md),
[`draw_rectangle_lines_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_rectangle_lines_ex.md),
[`draw_rectangle_rounded_lines_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_rectangle_rounded_lines_ex.md),
[`draw_sphere_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_sphere_ex.md),
[`draw_text_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_text_ex.md),
[`draw_texture_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_ex.md),
[`get_directory_file_count_ex()`](https://raylibr.jeroenjanssens.com/reference/get_directory_file_count_ex.md),
[`get_screen_to_world_ray_ex()`](https://raylibr.jeroenjanssens.com/reference/get_screen_to_world_ray_ex.md),
[`get_world_to_screen_ex()`](https://raylibr.jeroenjanssens.com/reference/get_world_to_screen_ex.md),
[`image_text_ex()`](https://raylibr.jeroenjanssens.com/reference/image_text_ex.md),
[`update_model_animation_ex()`](https://raylibr.jeroenjanssens.com/reference/update_model_animation_ex.md)

Other text functions:
[`draw_text()`](https://raylibr.jeroenjanssens.com/reference/draw_text.md),
[`draw_text_codepoint()`](https://raylibr.jeroenjanssens.com/reference/draw_text_codepoint.md),
[`draw_text_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_text_ex.md),
[`draw_text_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_text_pro.md),
[`file_text_find_index()`](https://raylibr.jeroenjanssens.com/reference/file_text_find_index.md),
[`file_text_replace()`](https://raylibr.jeroenjanssens.com/reference/file_text_replace.md),
[`gen_image_text()`](https://raylibr.jeroenjanssens.com/reference/gen_image_text.md),
[`get_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_text.md),
[`get_text_between()`](https://raylibr.jeroenjanssens.com/reference/get_text_between.md),
[`image_text()`](https://raylibr.jeroenjanssens.com/reference/image_text.md),
[`image_text_ex()`](https://raylibr.jeroenjanssens.com/reference/image_text_ex.md),
[`load_file_text()`](https://raylibr.jeroenjanssens.com/reference/load_file_text.md),
[`measure_text()`](https://raylibr.jeroenjanssens.com/reference/measure_text.md),
[`save_file_text()`](https://raylibr.jeroenjanssens.com/reference/save_file_text.md),
[`set_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/set_clipboard_text.md),
[`set_text_line_spacing()`](https://raylibr.jeroenjanssens.com/reference/set_text_line_spacing.md)

## Examples

``` r
if (FALSE) {
measure_text_ex(get_font_default(), "Hello", 1.0, 1.0)
}
```
