# Gui List View

List View control.

## Usage

``` r
gui_list_view(bounds, text, scroll_index, active)
```

## Arguments

- bounds:

  A rectangle.

- text:

  A string.

- scroll_index:

  An integer (current value).

- active:

  An integer (current value).

## Value

A list with `result` (integer), `scroll_index` (integer), `active`
(integer).

## See also

Other gui functions:
[`gui_button()`](https://raylibr.jeroenjanssens.com/reference/gui_button.md),
[`gui_check_box()`](https://raylibr.jeroenjanssens.com/reference/gui_check_box.md),
[`gui_color_bar_alpha()`](https://raylibr.jeroenjanssens.com/reference/gui_color_bar_alpha.md),
[`gui_color_bar_hue()`](https://raylibr.jeroenjanssens.com/reference/gui_color_bar_hue.md),
[`gui_color_panel()`](https://raylibr.jeroenjanssens.com/reference/gui_color_panel.md),
[`gui_color_panel_hsv()`](https://raylibr.jeroenjanssens.com/reference/gui_color_panel_hsv.md),
[`gui_color_picker()`](https://raylibr.jeroenjanssens.com/reference/gui_color_picker.md),
[`gui_color_picker_hsv()`](https://raylibr.jeroenjanssens.com/reference/gui_color_picker_hsv.md),
[`gui_combo_box()`](https://raylibr.jeroenjanssens.com/reference/gui_combo_box.md),
[`gui_disable()`](https://raylibr.jeroenjanssens.com/reference/gui_disable.md),
[`gui_disable_tooltip()`](https://raylibr.jeroenjanssens.com/reference/gui_disable_tooltip.md),
[`gui_draw_icon()`](https://raylibr.jeroenjanssens.com/reference/gui_draw_icon.md),
[`gui_dropdown_box()`](https://raylibr.jeroenjanssens.com/reference/gui_dropdown_box.md),
[`gui_dummy_rec()`](https://raylibr.jeroenjanssens.com/reference/gui_dummy_rec.md),
[`gui_enable()`](https://raylibr.jeroenjanssens.com/reference/gui_enable.md),
[`gui_enable_tooltip()`](https://raylibr.jeroenjanssens.com/reference/gui_enable_tooltip.md),
[`gui_get_font()`](https://raylibr.jeroenjanssens.com/reference/gui_get_font.md),
[`gui_get_state()`](https://raylibr.jeroenjanssens.com/reference/gui_get_state.md),
[`gui_get_style()`](https://raylibr.jeroenjanssens.com/reference/gui_get_style.md),
[`gui_get_text_width()`](https://raylibr.jeroenjanssens.com/reference/gui_get_text_width.md),
[`gui_grid()`](https://raylibr.jeroenjanssens.com/reference/gui_grid.md),
[`gui_group_box()`](https://raylibr.jeroenjanssens.com/reference/gui_group_box.md),
[`gui_is_locked()`](https://raylibr.jeroenjanssens.com/reference/gui_is_locked.md),
[`gui_label()`](https://raylibr.jeroenjanssens.com/reference/gui_label.md),
[`gui_label_button()`](https://raylibr.jeroenjanssens.com/reference/gui_label_button.md),
[`gui_line()`](https://raylibr.jeroenjanssens.com/reference/gui_line.md),
[`gui_load_style()`](https://raylibr.jeroenjanssens.com/reference/gui_load_style.md),
[`gui_load_style_default()`](https://raylibr.jeroenjanssens.com/reference/gui_load_style_default.md),
[`gui_lock()`](https://raylibr.jeroenjanssens.com/reference/gui_lock.md),
[`gui_message_box()`](https://raylibr.jeroenjanssens.com/reference/gui_message_box.md),
[`gui_panel()`](https://raylibr.jeroenjanssens.com/reference/gui_panel.md),
[`gui_progress_bar()`](https://raylibr.jeroenjanssens.com/reference/gui_progress_bar.md),
[`gui_scroll_panel()`](https://raylibr.jeroenjanssens.com/reference/gui_scroll_panel.md),
[`gui_set_alpha()`](https://raylibr.jeroenjanssens.com/reference/gui_set_alpha.md),
[`gui_set_font()`](https://raylibr.jeroenjanssens.com/reference/gui_set_font.md),
[`gui_set_icon_scale()`](https://raylibr.jeroenjanssens.com/reference/gui_set_icon_scale.md),
[`gui_set_state()`](https://raylibr.jeroenjanssens.com/reference/gui_set_state.md),
[`gui_set_style()`](https://raylibr.jeroenjanssens.com/reference/gui_set_style.md),
[`gui_set_tooltip()`](https://raylibr.jeroenjanssens.com/reference/gui_set_tooltip.md),
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
[`gui_unlock()`](https://raylibr.jeroenjanssens.com/reference/gui_unlock.md),
[`gui_value_box()`](https://raylibr.jeroenjanssens.com/reference/gui_value_box.md),
[`gui_value_box_float()`](https://raylibr.jeroenjanssens.com/reference/gui_value_box_float.md),
[`gui_window_box()`](https://raylibr.jeroenjanssens.com/reference/gui_window_box.md)

## Examples

``` r
if (FALSE) {
gui_list_view(rectangle(10, 10, 200, 100), "Hello", 0L, 0L)
}
```
