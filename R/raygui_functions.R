# Do not edit by hand.

#' Gui Enable
#'
#' Enable gui controls (global state).
#'
#' @family gui functions
#'
#' @export
gui_enable <- function() {
  gui_enable_()
}

#' Gui Disable
#'
#' Disable gui controls (global state).
#'
#' @family gui functions
#'
#' @export
gui_disable <- function() {
  gui_disable_()
}

#' Gui Lock
#'
#' Lock gui controls (global state).
#'
#' @family gui functions
#'
#' @export
gui_lock <- function() {
  gui_lock_()
}

#' Gui Unlock
#'
#' Unlock gui controls (global state).
#'
#' @family gui functions
#'
#' @export
gui_unlock <- function() {
  gui_unlock_()
}

#' Gui Is Locked
#'
#' Check if gui is locked (global state).
#'
#' @return A logical
#'
#' @family gui functions
#'
#' @export
gui_is_locked <- function() {
  gui_is_locked_()
}

#' Gui Set Alpha
#'
#' Set gui controls alpha (global state), alpha goes from 0.0f to 1.0f.
#'
#' @param alpha A number.
#'
#' @family gui functions
#'
#' @export
gui_set_alpha <- function(alpha) {
  if (!is_float(alpha)) abort(paste0('`alpha` must be a number, not ', friendly_typeof(alpha), '.'), call = NULL)
  gui_set_alpha_(alpha)
}

#' Gui Set State
#'
#' Set gui state (global state).
#'
#' @param state An integer.
#'
#' @family gui functions
#'
#' @export
gui_set_state <- function(state) {
  if (!is_int(state)) abort(paste0('`state` must be an integer, not ', friendly_typeof(state), '.'), call = NULL)
  gui_set_state_(state)
}

#' Gui Get State
#'
#' Get gui state (global state).
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_get_state <- function() {
  gui_get_state_()
}

#' Gui Set Font
#'
#' Set gui custom font (global state).
#'
#' @param font A font.
#'
#' @family gui functions
#'
#' @export
gui_set_font <- function(font) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  gui_set_font_(font)
}

#' Gui Get Font
#'
#' Get gui custom font (global state).
#'
#' @return A font
#'
#' @family gui functions
#'
#' @export
gui_get_font <- function() {
  gui_get_font_()
}

#' Gui Set Style
#'
#' Set one style property.
#'
#' @param control An integer.
#' @param property An integer.
#' @param value An integer.
#'
#' @family gui functions
#'
#' @export
gui_set_style <- function(control, property, value) {
  if (!is_int(control)) abort(paste0('`control` must be an integer, not ', friendly_typeof(control), '.'), call = NULL)
  if (!is_int(property)) abort(paste0('`property` must be an integer, not ', friendly_typeof(property), '.'), call = NULL)
  if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
  gui_set_style_(control, property, value)
}

#' Gui Get Style
#'
#' Get one style property.
#'
#' @param control An integer.
#' @param property An integer.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_get_style <- function(control, property) {
  if (!is_int(control)) abort(paste0('`control` must be an integer, not ', friendly_typeof(control), '.'), call = NULL)
  if (!is_int(property)) abort(paste0('`property` must be an integer, not ', friendly_typeof(property), '.'), call = NULL)
  gui_get_style_(control, property)
}

#' Gui Load Style
#'
#' Load style file over global style variable (.rgs).
#'
#' @param file_name A string.
#'
#' @family gui functions
#'
#' @export
gui_load_style <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  gui_load_style_(file_name)
}

#' Gui Load Style Default
#'
#' Load style default over global style.
#'
#' @family gui functions
#'
#' @export
gui_load_style_default <- function() {
  gui_load_style_default_()
}

#' Gui Enable Tooltip
#'
#' Enable gui tooltips (global state).
#'
#' @family gui functions
#'
#' @export
gui_enable_tooltip <- function() {
  gui_enable_tooltip_()
}

#' Gui Disable Tooltip
#'
#' Disable gui tooltips (global state).
#'
#' @family gui functions
#'
#' @export
gui_disable_tooltip <- function() {
  gui_disable_tooltip_()
}

#' Gui Set Tooltip
#'
#' Set tooltip string.
#'
#' @param tooltip A string.
#'
#' @family gui functions
#'
#' @export
gui_set_tooltip <- function(tooltip) {
  if (!is_const_char_pointer(tooltip)) abort(paste0('`tooltip` must be a string, not ', friendly_typeof(tooltip), '.'), call = NULL)
  gui_set_tooltip_(tooltip)
}

#' Gui Set Icon Scale
#'
#' Set default icon drawing size.
#'
#' @param scale An integer.
#'
#' @family gui functions
#'
#' @export
gui_set_icon_scale <- function(scale) {
  if (!is_int(scale)) abort(paste0('`scale` must be an integer, not ', friendly_typeof(scale), '.'), call = NULL)
  gui_set_icon_scale_(scale)
}

#' Gui Draw Icon
#'
#' Draw icon using pixel size at specified position.
#'
#' @param icon_id An integer.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param pixel_size An integer.
#' @param color A color.
#'
#' @family gui functions
#'
#' @export
gui_draw_icon <- function(icon_id, pos_x, pos_y, pixel_size, color) {
  if (!is_int(icon_id)) abort(paste0('`icon_id` must be an integer, not ', friendly_typeof(icon_id), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(pixel_size)) abort(paste0('`pixel_size` must be an integer, not ', friendly_typeof(pixel_size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  gui_draw_icon_(icon_id, pos_x, pos_y, pixel_size, color)
}

#' Gui Get Text Width
#'
#' Get text width considering gui style and icon size (if required).
#'
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_get_text_width <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_get_text_width_(text)
}

#' Gui Window Box
#'
#' Window Box control, shows a window that can be closed.
#'
#' @param bounds A rectangle.
#' @param title A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_window_box <- function(bounds, title) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(title)) abort(paste0('`title` must be a string, not ', friendly_typeof(title), '.'), call = NULL)
  gui_window_box_(bounds, title)
}

#' Gui Group Box
#'
#' Group Box control with text name.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_group_box <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_group_box_(bounds, text)
}

#' Gui Line
#'
#' Line separator control, could contain text.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_line <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_line_(bounds, text)
}

#' Gui Panel
#'
#' Panel control, useful to group controls.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_panel <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_panel_(bounds, text)
}

#' Gui Label
#'
#' Label control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_label <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_label_(bounds, text)
}

#' Gui Button
#'
#' Button control, returns true when clicked.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_button <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_button_(bounds, text)
}

#' Gui Label Button
#'
#' Label button control, returns true when clicked.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_label_button <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_label_button_(bounds, text)
}

#' Gui Toggle
#'
#' Toggle Button control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param active A logical (current value).
#'
#' @return A list with \code{result} (integer), \code{active} (logical).
#'
#' @family gui functions
#'
#' @export
gui_toggle <- function(bounds, text, active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_bool(active)) abort(paste0('`active` must be a logical, not ', friendly_typeof(active), '.'), call = NULL)
  gui_toggle_(bounds, text, active)
}

#' Gui Toggle Group
#'
#' Toggle Group control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param active An integer (current value).
#'
#' @return A list with \code{result} (integer), \code{active} (integer).
#'
#' @family gui functions
#'
#' @export
gui_toggle_group <- function(bounds, text, active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(active)) abort(paste0('`active` must be an integer, not ', friendly_typeof(active), '.'), call = NULL)
  gui_toggle_group_(bounds, text, active)
}

#' Gui Toggle Slider
#'
#' Toggle Slider control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param active An integer (current value).
#'
#' @return A list with \code{result} (integer), \code{active} (integer).
#'
#' @family gui functions
#'
#' @export
gui_toggle_slider <- function(bounds, text, active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(active)) abort(paste0('`active` must be an integer, not ', friendly_typeof(active), '.'), call = NULL)
  gui_toggle_slider_(bounds, text, active)
}

#' Gui Check Box
#'
#' Check Box control, returns true when active.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param checked A logical (current value).
#'
#' @return A list with \code{result} (integer), \code{checked} (logical).
#'
#' @family gui functions
#'
#' @export
gui_check_box <- function(bounds, text, checked) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_bool(checked)) abort(paste0('`checked` must be a logical, not ', friendly_typeof(checked), '.'), call = NULL)
  gui_check_box_(bounds, text, checked)
}

#' Gui Combo Box
#'
#' Combo Box control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param active An integer (current value).
#'
#' @return A list with \code{result} (integer), \code{active} (integer).
#'
#' @family gui functions
#'
#' @export
gui_combo_box <- function(bounds, text, active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(active)) abort(paste0('`active` must be an integer, not ', friendly_typeof(active), '.'), call = NULL)
  gui_combo_box_(bounds, text, active)
}

#' Gui Dropdown Box
#'
#' Dropdown Box control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param active An integer (current value).
#' @param edit_mode A logical.
#'
#' @return A list with \code{result} (integer), \code{active} (integer).
#'
#' @family gui functions
#'
#' @export
gui_dropdown_box <- function(bounds, text, active, edit_mode) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(active)) abort(paste0('`active` must be an integer, not ', friendly_typeof(active), '.'), call = NULL)
  if (!is_bool(edit_mode)) abort(paste0('`edit_mode` must be a logical, not ', friendly_typeof(edit_mode), '.'), call = NULL)
  gui_dropdown_box_(bounds, text, active, edit_mode)
}

#' Gui Spinner
#'
#' Spinner control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param value An integer (current value).
#' @param min_value An integer.
#' @param max_value An integer.
#' @param edit_mode A logical.
#'
#' @return A list with \code{result} (integer), \code{value} (integer).
#'
#' @family gui functions
#'
#' @export
gui_spinner <- function(bounds, text, value, min_value, max_value, edit_mode) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_int(min_value)) abort(paste0('`min_value` must be an integer, not ', friendly_typeof(min_value), '.'), call = NULL)
  if (!is_int(max_value)) abort(paste0('`max_value` must be an integer, not ', friendly_typeof(max_value), '.'), call = NULL)
  if (!is_bool(edit_mode)) abort(paste0('`edit_mode` must be a logical, not ', friendly_typeof(edit_mode), '.'), call = NULL)
  gui_spinner_(bounds, text, value, min_value, max_value, edit_mode)
}

#' Gui Value Box
#'
#' Value Box control, updates input text with numbers.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param value An integer (current value).
#' @param min_value An integer.
#' @param max_value An integer.
#' @param edit_mode A logical.
#'
#' @return A list with \code{result} (integer), \code{value} (integer).
#'
#' @family gui functions
#'
#' @export
gui_value_box <- function(bounds, text, value, min_value, max_value, edit_mode) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_int(min_value)) abort(paste0('`min_value` must be an integer, not ', friendly_typeof(min_value), '.'), call = NULL)
  if (!is_int(max_value)) abort(paste0('`max_value` must be an integer, not ', friendly_typeof(max_value), '.'), call = NULL)
  if (!is_bool(edit_mode)) abort(paste0('`edit_mode` must be a logical, not ', friendly_typeof(edit_mode), '.'), call = NULL)
  gui_value_box_(bounds, text, value, min_value, max_value, edit_mode)
}

#' Gui Slider
#'
#' Slider control.
#'
#' @param bounds A rectangle.
#' @param text_left A string.
#' @param text_right A string.
#' @param value A number (current value).
#' @param min_value A number.
#' @param max_value A number.
#'
#' @return A list with \code{result} (integer), \code{value} (number).
#'
#' @family gui functions
#'
#' @export
gui_slider <- function(bounds, text_left, text_right, value, min_value, max_value) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text_left)) abort(paste0('`text_left` must be a string, not ', friendly_typeof(text_left), '.'), call = NULL)
  if (!is_const_char_pointer(text_right)) abort(paste0('`text_right` must be a string, not ', friendly_typeof(text_right), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_float(min_value)) abort(paste0('`min_value` must be a number, not ', friendly_typeof(min_value), '.'), call = NULL)
  if (!is_float(max_value)) abort(paste0('`max_value` must be a number, not ', friendly_typeof(max_value), '.'), call = NULL)
  gui_slider_(bounds, text_left, text_right, value, min_value, max_value)
}

#' Gui Slider Bar
#'
#' Slider Bar control.
#'
#' @param bounds A rectangle.
#' @param text_left A string.
#' @param text_right A string.
#' @param value A number (current value).
#' @param min_value A number.
#' @param max_value A number.
#'
#' @return A list with \code{result} (integer), \code{value} (number).
#'
#' @family gui functions
#'
#' @export
gui_slider_bar <- function(bounds, text_left, text_right, value, min_value, max_value) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text_left)) abort(paste0('`text_left` must be a string, not ', friendly_typeof(text_left), '.'), call = NULL)
  if (!is_const_char_pointer(text_right)) abort(paste0('`text_right` must be a string, not ', friendly_typeof(text_right), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_float(min_value)) abort(paste0('`min_value` must be a number, not ', friendly_typeof(min_value), '.'), call = NULL)
  if (!is_float(max_value)) abort(paste0('`max_value` must be a number, not ', friendly_typeof(max_value), '.'), call = NULL)
  gui_slider_bar_(bounds, text_left, text_right, value, min_value, max_value)
}

#' Gui Progress Bar
#'
#' Progress Bar control.
#'
#' @param bounds A rectangle.
#' @param text_left A string.
#' @param text_right A string.
#' @param value A number (current value).
#' @param min_value A number.
#' @param max_value A number.
#'
#' @return A list with \code{result} (integer), \code{value} (number).
#'
#' @family gui functions
#'
#' @export
gui_progress_bar <- function(bounds, text_left, text_right, value, min_value, max_value) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text_left)) abort(paste0('`text_left` must be a string, not ', friendly_typeof(text_left), '.'), call = NULL)
  if (!is_const_char_pointer(text_right)) abort(paste0('`text_right` must be a string, not ', friendly_typeof(text_right), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_float(min_value)) abort(paste0('`min_value` must be a number, not ', friendly_typeof(min_value), '.'), call = NULL)
  if (!is_float(max_value)) abort(paste0('`max_value` must be a number, not ', friendly_typeof(max_value), '.'), call = NULL)
  gui_progress_bar_(bounds, text_left, text_right, value, min_value, max_value)
}

#' Gui Status Bar
#'
#' Status Bar control, shows info text.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_status_bar <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_status_bar_(bounds, text)
}

#' Gui Dummy Rec
#'
#' Dummy control for placeholders.
#'
#' @param bounds A rectangle.
#' @param text A string.
#'
#' @return An integer
#'
#' @family gui functions
#'
#' @export
gui_dummy_rec <- function(bounds, text) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gui_dummy_rec_(bounds, text)
}

#' Gui Grid
#'
#' Grid control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param spacing A number.
#' @param subdivs An integer.
#' @param mouse_cell A numeric vector of length 2 (current value).
#'
#' @return A list with \code{result} (integer), \code{mouse_cell} (numeric vector of length 2).
#'
#' @family gui functions
#'
#' @export
gui_grid <- function(bounds, text, spacing, subdivs, mouse_cell) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  if (!is_int(subdivs)) abort(paste0('`subdivs` must be an integer, not ', friendly_typeof(subdivs), '.'), call = NULL)
  if (!is_vector_2(mouse_cell)) abort(paste0('`mouse_cell` must be a numeric vector of length 2, not ', friendly_typeof(mouse_cell), '.'), call = NULL)
  gui_grid_(bounds, text, spacing, subdivs, mouse_cell)
}

#' Gui List View
#'
#' List View control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param scroll_index An integer (current value).
#' @param active An integer (current value).
#'
#' @return A list with \code{result} (integer), \code{scroll_index} (integer), \code{active} (integer).
#'
#' @family gui functions
#'
#' @export
gui_list_view <- function(bounds, text, scroll_index, active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(scroll_index)) abort(paste0('`scroll_index` must be an integer, not ', friendly_typeof(scroll_index), '.'), call = NULL)
  if (!is_int(active)) abort(paste0('`active` must be an integer, not ', friendly_typeof(active), '.'), call = NULL)
  gui_list_view_(bounds, text, scroll_index, active)
}

#' Gui Tab Bar
#'
#' Tab Bar control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param hscroll An integer (current value).
#' @param active An integer (current value).
#'
#' @return A list with \code{result} (integer), \code{hscroll} (integer), \code{active} (integer).
#'
#' @family gui functions
#'
#' @export
gui_tab_bar <- function(bounds, text, hscroll, active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(hscroll)) abort(paste0('`hscroll` must be an integer, not ', friendly_typeof(hscroll), '.'), call = NULL)
  if (!is_int(active)) abort(paste0('`active` must be an integer, not ', friendly_typeof(active), '.'), call = NULL)
  gui_tab_bar_(bounds, text, hscroll, active)
}

#' Gui Message Box
#'
#' Message Box control, displays a message.
#'
#' @param bounds A rectangle.
#' @param title A string.
#' @param message A string.
#' @param btn_text A string.
#' @param btn_active An integer (current value).
#'
#' @return A list with \code{result} (integer), \code{btn_active} (integer).
#'
#' @family gui functions
#'
#' @export
gui_message_box <- function(bounds, title, message, btn_text, btn_active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(title)) abort(paste0('`title` must be a string, not ', friendly_typeof(title), '.'), call = NULL)
  if (!is_const_char_pointer(message)) abort(paste0('`message` must be a string, not ', friendly_typeof(message), '.'), call = NULL)
  if (!is_const_char_pointer(btn_text)) abort(paste0('`btn_text` must be a string, not ', friendly_typeof(btn_text), '.'), call = NULL)
  if (!is_int(btn_active)) abort(paste0('`btn_active` must be an integer, not ', friendly_typeof(btn_active), '.'), call = NULL)
  gui_message_box_(bounds, title, message, btn_text, btn_active)
}

#' Gui Color Picker
#'
#' Color Picker control, includes Color bar controls.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param color A color (current value).
#'
#' @return A list with \code{result} (integer), \code{color} (color).
#'
#' @family gui functions
#'
#' @export
gui_color_picker <- function(bounds, text, color) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  gui_color_picker_(bounds, text, color)
}

#' Gui Color Panel
#'
#' Color Panel control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param color A color (current value).
#'
#' @return A list with \code{result} (integer), \code{color} (color).
#'
#' @family gui functions
#'
#' @export
gui_color_panel <- function(bounds, text, color) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  gui_color_panel_(bounds, text, color)
}

#' Gui Color Bar Alpha
#'
#' Color Bar Alpha control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param alpha A number (current value).
#'
#' @return A list with \code{result} (integer), \code{alpha} (number).
#'
#' @family gui functions
#'
#' @export
gui_color_bar_alpha <- function(bounds, text, alpha) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(alpha)) abort(paste0('`alpha` must be a number, not ', friendly_typeof(alpha), '.'), call = NULL)
  gui_color_bar_alpha_(bounds, text, alpha)
}

#' Gui Color Bar Hue
#'
#' Color Bar Hue control.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param value A number (current value).
#'
#' @return A list with \code{result} (integer), \code{value} (number).
#'
#' @family gui functions
#'
#' @export
gui_color_bar_hue <- function(bounds, text, value) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  gui_color_bar_hue_(bounds, text, value)
}

#' Gui Color Picker Hsv
#'
#' Color Picker control, using Hue-Saturation-Value color data, includes Color bar controls.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param color_hsv A numeric vector of length 3 (current value).
#'
#' @return A list with \code{result} (integer), \code{color_hsv} (numeric vector of length 3).
#'
#' @family gui functions
#'
#' @export
gui_color_picker_hsv <- function(bounds, text, color_hsv) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_vector_3(color_hsv)) abort(paste0('`color_hsv` must be a numeric vector of length 3, not ', friendly_typeof(color_hsv), '.'), call = NULL)
  gui_color_picker_hsv_(bounds, text, color_hsv)
}

#' Gui Color Panel Hsv
#'
#' Color Panel control, using Hue-Saturation-Value color data.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param color_hsv A numeric vector of length 3 (current value).
#'
#' @return A list with \code{result} (integer), \code{color_hsv} (numeric vector of length 3).
#'
#' @family gui functions
#'
#' @export
gui_color_panel_hsv <- function(bounds, text, color_hsv) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_vector_3(color_hsv)) abort(paste0('`color_hsv` must be a numeric vector of length 3, not ', friendly_typeof(color_hsv), '.'), call = NULL)
  gui_color_panel_hsv_(bounds, text, color_hsv)
}

