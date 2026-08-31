# Image Text Ex

Create an image from text (custom sprite font).

## Usage

``` r
image_text_ex(font, text, font_size, spacing, tint)
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

- tint:

  A color.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image ImageTextEx(Font font, const char * text, float fontSize, float spacing, Color tint);

## See also

Other ex functions:
[`draw_cylinder_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cylinder_ex.md),
[`draw_cylinder_wires_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_cylinder_wires_ex.md),
[`draw_line_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_ex.md),
[`draw_model_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_ex.md),
[`draw_model_wires_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_wires_ex.md),
[`draw_poly_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_poly_lines_ex.md),
[`draw_rectangle_gradient_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_gradient_ex.md),
[`draw_rectangle_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_lines_ex.md),
[`draw_rectangle_rounded_lines_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_rectangle_rounded_lines_ex.md),
[`draw_sphere_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_sphere_ex.md),
[`draw_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_ex.md),
[`draw_texture_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_texture_ex.md),
[`get_directory_file_count_ex()`](https://jeroenjanssens.github.io/raylibr/reference/get_directory_file_count_ex.md),
[`get_screen_to_world_ray_ex()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_to_world_ray_ex.md),
[`get_world_to_screen_ex()`](https://jeroenjanssens.github.io/raylibr/reference/get_world_to_screen_ex.md),
[`measure_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text_ex.md),
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md)

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
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`measure_text()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text.md),
[`measure_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text_ex.md),
[`save_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/save_file_text.md),
[`set_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/set_clipboard_text.md),
[`set_text_line_spacing()`](https://jeroenjanssens.github.io/raylibr/reference/set_text_line_spacing.md)

## Examples

``` r
if (FALSE) {
image_text_ex(get_font_default(), "Hello", 1.0, 1.0, "red")
}
```
