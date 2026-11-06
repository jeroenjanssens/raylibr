# Gui Color Picker

Color Picker control, includes Color bar controls.

## Usage

``` r
gui_color_picker(bounds, text, color)
```

## Arguments

- bounds:

  A rectangle.

- text:

  A string.

- color:

  A color (current value).

## Value

A list with `result` (integer), `color` (color).

## See also

Other raygui — Controls:
[`gui_button()`](https://raylibr.jeroenjanssens.com/reference/gui_button.md),
[`gui_check_box()`](https://raylibr.jeroenjanssens.com/reference/gui_check_box.md),
[`gui_color_bar_alpha()`](https://raylibr.jeroenjanssens.com/reference/gui_color_bar_alpha.md),
[`gui_color_bar_hue()`](https://raylibr.jeroenjanssens.com/reference/gui_color_bar_hue.md),
[`gui_color_panel()`](https://raylibr.jeroenjanssens.com/reference/gui_color_panel.md),
[`gui_color_panel_hsv()`](https://raylibr.jeroenjanssens.com/reference/gui_color_panel_hsv.md),
[`gui_color_picker_hsv()`](https://raylibr.jeroenjanssens.com/reference/gui_color_picker_hsv.md),
[`gui_combo_box()`](https://raylibr.jeroenjanssens.com/reference/gui_combo_box.md),
[`gui_dropdown_box()`](https://raylibr.jeroenjanssens.com/reference/gui_dropdown_box.md),
[`gui_dummy_rec()`](https://raylibr.jeroenjanssens.com/reference/gui_dummy_rec.md),
[`gui_grid()`](https://raylibr.jeroenjanssens.com/reference/gui_grid.md),
[`gui_group_box()`](https://raylibr.jeroenjanssens.com/reference/gui_group_box.md),
[`gui_label()`](https://raylibr.jeroenjanssens.com/reference/gui_label.md),
[`gui_label_button()`](https://raylibr.jeroenjanssens.com/reference/gui_label_button.md),
[`gui_line()`](https://raylibr.jeroenjanssens.com/reference/gui_line.md),
[`gui_list_view()`](https://raylibr.jeroenjanssens.com/reference/gui_list_view.md),
[`gui_message_box()`](https://raylibr.jeroenjanssens.com/reference/gui_message_box.md),
[`gui_panel()`](https://raylibr.jeroenjanssens.com/reference/gui_panel.md),
[`gui_progress_bar()`](https://raylibr.jeroenjanssens.com/reference/gui_progress_bar.md),
[`gui_scroll_panel()`](https://raylibr.jeroenjanssens.com/reference/gui_scroll_panel.md),
[`gui_slider()`](https://raylibr.jeroenjanssens.com/reference/gui_slider.md),
[`gui_slider_bar()`](https://raylibr.jeroenjanssens.com/reference/gui_slider_bar.md),
[`gui_spinner()`](https://raylibr.jeroenjanssens.com/reference/gui_spinner.md),
[`gui_status_bar()`](https://raylibr.jeroenjanssens.com/reference/gui_status_bar.md),
[`gui_tab_bar()`](https://raylibr.jeroenjanssens.com/reference/gui_tab_bar.md),
[`gui_text_box()`](https://raylibr.jeroenjanssens.com/reference/gui_text_box.md),
[`gui_text_input_box()`](https://raylibr.jeroenjanssens.com/reference/gui_text_input_box.md),
[`gui_toggle()`](https://raylibr.jeroenjanssens.com/reference/gui_toggle.md),
[`gui_toggle_group()`](https://raylibr.jeroenjanssens.com/reference/gui_toggle_group.md),
[`gui_toggle_slider()`](https://raylibr.jeroenjanssens.com/reference/gui_toggle_slider.md),
[`gui_value_box()`](https://raylibr.jeroenjanssens.com/reference/gui_value_box.md),
[`gui_value_box_float()`](https://raylibr.jeroenjanssens.com/reference/gui_value_box_float.md),
[`gui_window_box()`](https://raylibr.jeroenjanssens.com/reference/gui_window_box.md)

## Examples

``` r
if (FALSE) {
gui_color_picker(rectangle(10, 10, 200, 100), "Hello", "red")
}
```
