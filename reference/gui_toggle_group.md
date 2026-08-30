# Gui Toggle Group

Toggle Group control.

## Usage

``` r
gui_toggle_group(bounds, text, active)
```

## Arguments

- bounds:

  A rectangle.

- text:

  A string.

- active:

  An integer (current value).

## Value

A list with `result` (integer), `active` (integer).

## See also

Other gui functions:
[`gui_button()`](https://jeroenjanssens.github.io/raylibr/reference/gui_button.md),
[`gui_check_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_check_box.md),
[`gui_color_bar_alpha()`](https://jeroenjanssens.github.io/raylibr/reference/gui_color_bar_alpha.md),
[`gui_color_bar_hue()`](https://jeroenjanssens.github.io/raylibr/reference/gui_color_bar_hue.md),
[`gui_color_panel()`](https://jeroenjanssens.github.io/raylibr/reference/gui_color_panel.md),
[`gui_color_panel_hsv()`](https://jeroenjanssens.github.io/raylibr/reference/gui_color_panel_hsv.md),
[`gui_color_picker()`](https://jeroenjanssens.github.io/raylibr/reference/gui_color_picker.md),
[`gui_color_picker_hsv()`](https://jeroenjanssens.github.io/raylibr/reference/gui_color_picker_hsv.md),
[`gui_combo_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_combo_box.md),
[`gui_disable()`](https://jeroenjanssens.github.io/raylibr/reference/gui_disable.md),
[`gui_disable_tooltip()`](https://jeroenjanssens.github.io/raylibr/reference/gui_disable_tooltip.md),
[`gui_draw_icon()`](https://jeroenjanssens.github.io/raylibr/reference/gui_draw_icon.md),
[`gui_dropdown_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_dropdown_box.md),
[`gui_dummy_rec()`](https://jeroenjanssens.github.io/raylibr/reference/gui_dummy_rec.md),
[`gui_enable()`](https://jeroenjanssens.github.io/raylibr/reference/gui_enable.md),
[`gui_enable_tooltip()`](https://jeroenjanssens.github.io/raylibr/reference/gui_enable_tooltip.md),
[`gui_get_font()`](https://jeroenjanssens.github.io/raylibr/reference/gui_get_font.md),
[`gui_get_state()`](https://jeroenjanssens.github.io/raylibr/reference/gui_get_state.md),
[`gui_get_style()`](https://jeroenjanssens.github.io/raylibr/reference/gui_get_style.md),
[`gui_get_text_width()`](https://jeroenjanssens.github.io/raylibr/reference/gui_get_text_width.md),
[`gui_grid()`](https://jeroenjanssens.github.io/raylibr/reference/gui_grid.md),
[`gui_group_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_group_box.md),
[`gui_is_locked()`](https://jeroenjanssens.github.io/raylibr/reference/gui_is_locked.md),
[`gui_label()`](https://jeroenjanssens.github.io/raylibr/reference/gui_label.md),
[`gui_label_button()`](https://jeroenjanssens.github.io/raylibr/reference/gui_label_button.md),
[`gui_line()`](https://jeroenjanssens.github.io/raylibr/reference/gui_line.md),
[`gui_list_view()`](https://jeroenjanssens.github.io/raylibr/reference/gui_list_view.md),
[`gui_load_style()`](https://jeroenjanssens.github.io/raylibr/reference/gui_load_style.md),
[`gui_load_style_default()`](https://jeroenjanssens.github.io/raylibr/reference/gui_load_style_default.md),
[`gui_lock()`](https://jeroenjanssens.github.io/raylibr/reference/gui_lock.md),
[`gui_message_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_message_box.md),
[`gui_panel()`](https://jeroenjanssens.github.io/raylibr/reference/gui_panel.md),
[`gui_progress_bar()`](https://jeroenjanssens.github.io/raylibr/reference/gui_progress_bar.md),
[`gui_scroll_panel()`](https://jeroenjanssens.github.io/raylibr/reference/gui_scroll_panel.md),
[`gui_set_alpha()`](https://jeroenjanssens.github.io/raylibr/reference/gui_set_alpha.md),
[`gui_set_font()`](https://jeroenjanssens.github.io/raylibr/reference/gui_set_font.md),
[`gui_set_icon_scale()`](https://jeroenjanssens.github.io/raylibr/reference/gui_set_icon_scale.md),
[`gui_set_state()`](https://jeroenjanssens.github.io/raylibr/reference/gui_set_state.md),
[`gui_set_style()`](https://jeroenjanssens.github.io/raylibr/reference/gui_set_style.md),
[`gui_set_tooltip()`](https://jeroenjanssens.github.io/raylibr/reference/gui_set_tooltip.md),
[`gui_slider()`](https://jeroenjanssens.github.io/raylibr/reference/gui_slider.md),
[`gui_slider_bar()`](https://jeroenjanssens.github.io/raylibr/reference/gui_slider_bar.md),
[`gui_spinner()`](https://jeroenjanssens.github.io/raylibr/reference/gui_spinner.md),
[`gui_status_bar()`](https://jeroenjanssens.github.io/raylibr/reference/gui_status_bar.md),
[`gui_tab_bar()`](https://jeroenjanssens.github.io/raylibr/reference/gui_tab_bar.md),
[`gui_text_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_text_box.md),
[`gui_text_input_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_text_input_box.md),
[`gui_toggle()`](https://jeroenjanssens.github.io/raylibr/reference/gui_toggle.md),
[`gui_toggle_slider()`](https://jeroenjanssens.github.io/raylibr/reference/gui_toggle_slider.md),
[`gui_unlock()`](https://jeroenjanssens.github.io/raylibr/reference/gui_unlock.md),
[`gui_value_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_value_box.md),
[`gui_value_box_float()`](https://jeroenjanssens.github.io/raylibr/reference/gui_value_box_float.md),
[`gui_window_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_window_box.md)
