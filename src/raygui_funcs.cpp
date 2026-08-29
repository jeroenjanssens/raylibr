// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

static Rcpp::NumericVector gui_vec2_to_r(Vector2 v) {
  Rcpp::NumericVector r(2);
  r[0] = v.x; r[1] = v.y;
  r.names() = Rcpp::CharacterVector::create("x", "y");
  return r;
}

static Rcpp::NumericVector gui_vec3_to_r(Vector3 v) {
  Rcpp::NumericVector r(3);
  r[0] = v.x; r[1] = v.y; r[2] = v.z;
  r.names() = Rcpp::CharacterVector::create("x", "y", "z");
  return r;
}

static Rcpp::IntegerVector gui_color_to_r(Color c) {
  Rcpp::IntegerVector r(4);
  r[0] = c.r; r[1] = c.g; r[2] = c.b; r[3] = c.a;
  r.names() = Rcpp::CharacterVector::create("r", "g", "b", "a");
  return r;
}

// [[Rcpp::export]]
void gui_enable_() {
  return GuiEnable();
}

// [[Rcpp::export]]
void gui_disable_() {
  return GuiDisable();
}

// [[Rcpp::export]]
void gui_lock_() {
  return GuiLock();
}

// [[Rcpp::export]]
void gui_unlock_() {
  return GuiUnlock();
}

// [[Rcpp::export]]
bool gui_is_locked_() {
  return GuiIsLocked();
}

// [[Rcpp::export]]
void gui_set_alpha_(float alpha) {
  return GuiSetAlpha(alpha);
}

// [[Rcpp::export]]
void gui_set_state_(int state) {
  return GuiSetState(state);
}

// [[Rcpp::export]]
int gui_get_state_() {
  return GuiGetState();
}

// [[Rcpp::export]]
void gui_set_font_(Font font) {
  return GuiSetFont(font);
}

// [[Rcpp::export]]
Font gui_get_font_() {
  return GuiGetFont();
}

// [[Rcpp::export]]
void gui_set_style_(int control, int property, int value) {
  return GuiSetStyle(control, property, value);
}

// [[Rcpp::export]]
int gui_get_style_(int control, int property) {
  return GuiGetStyle(control, property);
}

// [[Rcpp::export]]
void gui_load_style_(const char * file_name) {
  return GuiLoadStyle(file_name);
}

// [[Rcpp::export]]
void gui_load_style_default_() {
  return GuiLoadStyleDefault();
}

// [[Rcpp::export]]
void gui_enable_tooltip_() {
  return GuiEnableTooltip();
}

// [[Rcpp::export]]
void gui_disable_tooltip_() {
  return GuiDisableTooltip();
}

// [[Rcpp::export]]
void gui_set_tooltip_(const char * tooltip) {
  return GuiSetTooltip(tooltip);
}

// [[Rcpp::export]]
void gui_set_icon_scale_(int scale) {
  return GuiSetIconScale(scale);
}

// [[Rcpp::export]]
void gui_draw_icon_(int icon_id, int pos_x, int pos_y, int pixel_size, Color color) {
  return GuiDrawIcon(icon_id, pos_x, pos_y, pixel_size, color);
}

// [[Rcpp::export]]
int gui_get_text_width_(const char * text) {
  return GuiGetTextWidth(text);
}

// [[Rcpp::export]]
int gui_window_box_(Rectangle bounds, const char * title) {
  return GuiWindowBox(bounds, title);
}

// [[Rcpp::export]]
int gui_group_box_(Rectangle bounds, const char * text) {
  return GuiGroupBox(bounds, text);
}

// [[Rcpp::export]]
int gui_line_(Rectangle bounds, const char * text) {
  return GuiLine(bounds, text);
}

// [[Rcpp::export]]
int gui_panel_(Rectangle bounds, const char * text) {
  return GuiPanel(bounds, text);
}

// [[Rcpp::export]]
int gui_label_(Rectangle bounds, const char * text) {
  return GuiLabel(bounds, text);
}

// [[Rcpp::export]]
int gui_button_(Rectangle bounds, const char * text) {
  return GuiButton(bounds, text);
}

// [[Rcpp::export]]
int gui_label_button_(Rectangle bounds, const char * text) {
  return GuiLabelButton(bounds, text);
}

// [[Rcpp::export]]
Rcpp::List gui_toggle_(Rectangle bounds, const char * text, bool active) {
  int result = GuiToggle(bounds, text, &active);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("active") = active);
}

// [[Rcpp::export]]
Rcpp::List gui_toggle_group_(Rectangle bounds, const char * text, int active) {
  int result = GuiToggleGroup(bounds, text, &active);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("active") = active);
}

// [[Rcpp::export]]
Rcpp::List gui_toggle_slider_(Rectangle bounds, const char * text, int active) {
  int result = GuiToggleSlider(bounds, text, &active);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("active") = active);
}

// [[Rcpp::export]]
Rcpp::List gui_check_box_(Rectangle bounds, const char * text, bool checked) {
  int result = GuiCheckBox(bounds, text, &checked);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("checked") = checked);
}

// [[Rcpp::export]]
Rcpp::List gui_combo_box_(Rectangle bounds, const char * text, int active) {
  int result = GuiComboBox(bounds, text, &active);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("active") = active);
}

// [[Rcpp::export]]
Rcpp::List gui_dropdown_box_(Rectangle bounds, const char * text, int active, bool edit_mode) {
  int result = GuiDropdownBox(bounds, text, &active, edit_mode);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("active") = active);
}

// [[Rcpp::export]]
Rcpp::List gui_spinner_(Rectangle bounds, const char * text, int value, int min_value, int max_value, bool edit_mode) {
  int result = GuiSpinner(bounds, text, &value, min_value, max_value, edit_mode);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("value") = value);
}

// [[Rcpp::export]]
Rcpp::List gui_value_box_(Rectangle bounds, const char * text, int value, int min_value, int max_value, bool edit_mode) {
  int result = GuiValueBox(bounds, text, &value, min_value, max_value, edit_mode);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("value") = value);
}

// [[Rcpp::export]]
Rcpp::List gui_slider_(Rectangle bounds, const char * text_left, const char * text_right, float value, float min_value, float max_value) {
  int result = GuiSlider(bounds, text_left, text_right, &value, min_value, max_value);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("value") = (double)value);
}

// [[Rcpp::export]]
Rcpp::List gui_slider_bar_(Rectangle bounds, const char * text_left, const char * text_right, float value, float min_value, float max_value) {
  int result = GuiSliderBar(bounds, text_left, text_right, &value, min_value, max_value);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("value") = (double)value);
}

// [[Rcpp::export]]
Rcpp::List gui_progress_bar_(Rectangle bounds, const char * text_left, const char * text_right, float value, float min_value, float max_value) {
  int result = GuiProgressBar(bounds, text_left, text_right, &value, min_value, max_value);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("value") = (double)value);
}

// [[Rcpp::export]]
int gui_status_bar_(Rectangle bounds, const char * text) {
  return GuiStatusBar(bounds, text);
}

// [[Rcpp::export]]
int gui_dummy_rec_(Rectangle bounds, const char * text) {
  return GuiDummyRec(bounds, text);
}

// [[Rcpp::export]]
Rcpp::List gui_grid_(Rectangle bounds, const char * text, float spacing, int subdivs, Vector2 mouse_cell) {
  int result = GuiGrid(bounds, text, spacing, subdivs, &mouse_cell);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("mouse_cell") = gui_vec2_to_r(mouse_cell));
}

// [[Rcpp::export]]
Rcpp::List gui_list_view_(Rectangle bounds, const char * text, int scroll_index, int active) {
  int result = GuiListView(bounds, text, &scroll_index, &active);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("scroll_index") = scroll_index, Rcpp::Named("active") = active);
}

// [[Rcpp::export]]
Rcpp::List gui_tab_bar_(Rectangle bounds, const char * text, int hscroll, int active) {
  int result = GuiTabBar(bounds, text, &hscroll, &active);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("hscroll") = hscroll, Rcpp::Named("active") = active);
}

// [[Rcpp::export]]
Rcpp::List gui_message_box_(Rectangle bounds, const char * title, const char * message, const char * btn_text, int btn_active) {
  int result = GuiMessageBox(bounds, title, message, btn_text, &btn_active);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("btn_active") = btn_active);
}

// [[Rcpp::export]]
Rcpp::List gui_color_picker_(Rectangle bounds, const char * text, Color color) {
  int result = GuiColorPicker(bounds, text, &color);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("color") = gui_color_to_r(color));
}

// [[Rcpp::export]]
Rcpp::List gui_color_panel_(Rectangle bounds, const char * text, Color color) {
  int result = GuiColorPanel(bounds, text, &color);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("color") = gui_color_to_r(color));
}

// [[Rcpp::export]]
Rcpp::List gui_color_bar_alpha_(Rectangle bounds, const char * text, float alpha) {
  int result = GuiColorBarAlpha(bounds, text, &alpha);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("alpha") = (double)alpha);
}

// [[Rcpp::export]]
Rcpp::List gui_color_bar_hue_(Rectangle bounds, const char * text, float value) {
  int result = GuiColorBarHue(bounds, text, &value);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("value") = (double)value);
}

// [[Rcpp::export]]
Rcpp::List gui_color_picker_hsv_(Rectangle bounds, const char * text, Vector3 color_hsv) {
  int result = GuiColorPickerHSV(bounds, text, &color_hsv);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("color_hsv") = gui_vec3_to_r(color_hsv));
}

// [[Rcpp::export]]
Rcpp::List gui_color_panel_hsv_(Rectangle bounds, const char * text, Vector3 color_hsv) {
  int result = GuiColorPanelHSV(bounds, text, &color_hsv);
  return Rcpp::List::create(Rcpp::Named("result") = result, Rcpp::Named("color_hsv") = gui_vec3_to_r(color_hsv));
}

