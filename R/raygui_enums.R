# Do not edit by hand.

#' Gui Result
#'
#' Enum values for `gui_result`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `none` | 0 |
#' | `pressed` | 1 |
#' | `changed` | 2 |
#' | `tab_close` | 4 |
#'
#' @examples
#' gui_result$none
#' gui_result$pressed
#' gui_result$tab_close
#'
#' @export
gui_result <- list(
  none = 0L,
  pressed = 1L,
  changed = 2L,
  tab_close = 4L
)

#' Gui State
#'
#' Enum values for `gui_state`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `normal` | 0 |
#' | `focused` | 1 |
#' | `pressed` | 2 |
#' | `disabled` | 3 |
#'
#' @examples
#' gui_state$normal
#' gui_state$focused
#' gui_state$disabled
#'
#' @export
gui_state <- list(
  normal = 0L,
  focused = 1L,
  pressed = 2L,
  disabled = 3L
)

#' Gui Text Alignment
#'
#' Enum values for `gui_text_alignment`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `left` | 0 |
#' | `center` | 1 |
#' | `right` | 2 |
#'
#' @examples
#' gui_text_alignment$left
#' gui_text_alignment$center
#' gui_text_alignment$right
#'
#' @export
gui_text_alignment <- list(
  left = 0L,
  center = 1L,
  right = 2L
)

#' Gui Text Alignment Vertical
#'
#' Enum values for `gui_text_alignment_vertical`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `top` | 0 |
#' | `middle` | 1 |
#' | `bottom` | 2 |
#'
#' @examples
#' gui_text_alignment_vertical$top
#' gui_text_alignment_vertical$middle
#' gui_text_alignment_vertical$bottom
#'
#' @export
gui_text_alignment_vertical <- list(
  top = 0L,
  middle = 1L,
  bottom = 2L
)

#' Gui Text Wrap Mode
#'
#' Enum values for `gui_text_wrap_mode`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `none` | 0 |
#' | `char` | 1 |
#' | `word` | 2 |
#'
#' @examples
#' gui_text_wrap_mode$none
#' gui_text_wrap_mode$char
#' gui_text_wrap_mode$word
#'
#' @export
gui_text_wrap_mode <- list(
  none = 0L,
  char = 1L,
  word = 2L
)

#' Gui Control
#'
#' Enum values for `gui_control`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `default` | 0 |
#' | `label` | 1 |
#' | `button` | 2 |
#' | `toggle` | 3 |
#' | `slider` | 4 |
#' | `progressbar` | 5 |
#' | `checkbox` | 6 |
#' | `combobox` | 7 |
#' | `dropdownbox` | 8 |
#' | `textbox` | 9 |
#' | `valuebox` | 10 |
#' | `tabbar` | 11 |
#' | `listview` | 12 |
#' | `colorpicker` | 13 |
#' | `scrollbar` | 14 |
#' | `statusbar` | 15 |
#'
#' @examples
#' gui_control$default
#' gui_control$combobox
#' gui_control$statusbar
#'
#' @export
gui_control <- list(
  default = 0L,
  label = 1L,
  button = 2L,
  toggle = 3L,
  slider = 4L,
  progressbar = 5L,
  checkbox = 6L,
  combobox = 7L,
  dropdownbox = 8L,
  textbox = 9L,
  valuebox = 10L,
  tabbar = 11L,
  listview = 12L,
  colorpicker = 13L,
  scrollbar = 14L,
  statusbar = 15L
)

#' Gui Control Property
#'
#' Enum values for `gui_control_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `border_color_normal` | 0 |
#' | `base_color_normal` | 1 |
#' | `text_color_normal` | 2 |
#' | `border_color_focused` | 3 |
#' | `base_color_focused` | 4 |
#' | `text_color_focused` | 5 |
#' | `border_color_pressed` | 6 |
#' | `base_color_pressed` | 7 |
#' | `text_color_pressed` | 8 |
#' | `border_color_disabled` | 9 |
#' | `base_color_disabled` | 10 |
#' | `text_color_disabled` | 11 |
#' | `border_width` | 12 |
#' | `text_padding` | 13 |
#' | `text_alignment` | 14 |
#' | `baseprop16` | 15 |
#'
#' @examples
#' gui_control_property$border_color_normal
#' gui_control_property$base_color_pressed
#' gui_control_property$baseprop16
#'
#' @export
gui_control_property <- list(
  border_color_normal = 0L,
  base_color_normal = 1L,
  text_color_normal = 2L,
  border_color_focused = 3L,
  base_color_focused = 4L,
  text_color_focused = 5L,
  border_color_pressed = 6L,
  base_color_pressed = 7L,
  text_color_pressed = 8L,
  border_color_disabled = 9L,
  base_color_disabled = 10L,
  text_color_disabled = 11L,
  border_width = 12L,
  text_padding = 13L,
  text_alignment = 14L,
  baseprop16 = 15L
)

#' Gui Default Property
#'
#' Enum values for `gui_default_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `text_size` | 16 |
#' | `text_spacing` | 17 |
#' | `line_color` | 18 |
#' | `background_color` | 19 |
#' | `text_line_spacing` | 20 |
#' | `text_alignment_vertical` | 21 |
#' | `text_wrap_mode` | 22 |
#' | `extprop08` | 23 |
#'
#' @examples
#' gui_default_property$text_size
#' gui_default_property$background_color
#' gui_default_property$extprop08
#'
#' @export
gui_default_property <- list(
  text_size = 16L,
  text_spacing = 17L,
  line_color = 18L,
  background_color = 19L,
  text_line_spacing = 20L,
  text_alignment_vertical = 21L,
  text_wrap_mode = 22L,
  extprop08 = 23L
)

#' Gui Toggle Property
#'
#' Enum values for `gui_toggle_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `group_padding` | 16 |
#' | `group_width_full` | 17 |
#'
#' @examples
#' gui_toggle_property$group_padding
#' gui_toggle_property$group_width_full
#'
#' @export
gui_toggle_property <- list(
  group_padding = 16L,
  group_width_full = 17L
)

#' Gui Slider Property
#'
#' Enum values for `gui_slider_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `slider_width` | 16 |
#' | `slider_padding` | 17 |
#'
#' @examples
#' gui_slider_property$slider_width
#' gui_slider_property$slider_padding
#'
#' @export
gui_slider_property <- list(
  slider_width = 16L,
  slider_padding = 17L
)

#' Gui Progress Bar Property
#'
#' Enum values for `gui_progress_bar_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `progress_padding` | 16 |
#' | `progress_side` | 17 |
#'
#' @examples
#' gui_progress_bar_property$progress_padding
#' gui_progress_bar_property$progress_side
#'
#' @export
gui_progress_bar_property <- list(
  progress_padding = 16L,
  progress_side = 17L
)

#' Gui Scroll Bar Property
#'
#' Enum values for `gui_scroll_bar_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `arrows_size` | 16 |
#' | `arrows_visible` | 17 |
#' | `scroll_slider_padding` | 18 |
#' | `scroll_slider_size` | 19 |
#' | `scroll_padding` | 20 |
#' | `scroll_speed` | 21 |
#'
#' @examples
#' gui_scroll_bar_property$arrows_size
#' gui_scroll_bar_property$scroll_slider_padding
#' gui_scroll_bar_property$scroll_speed
#'
#' @export
gui_scroll_bar_property <- list(
  arrows_size = 16L,
  arrows_visible = 17L,
  scroll_slider_padding = 18L,
  scroll_slider_size = 19L,
  scroll_padding = 20L,
  scroll_speed = 21L
)

#' Gui Check Box Property
#'
#' Enum values for `gui_check_box_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `check_padding` | 16 |
#'
#' @examples
#' gui_check_box_property$check_padding
#'
#' @export
gui_check_box_property <- list(
  check_padding = 16L
)

#' Gui Combo Box Property
#'
#' Enum values for `gui_combo_box_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `combo_button_width` | 16 |
#' | `combo_button_spacing` | 17 |
#'
#' @examples
#' gui_combo_box_property$combo_button_width
#' gui_combo_box_property$combo_button_spacing
#'
#' @export
gui_combo_box_property <- list(
  combo_button_width = 16L,
  combo_button_spacing = 17L
)

#' Gui Dropdown Box Property
#'
#' Enum values for `gui_dropdown_box_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `arrow_padding` | 16 |
#' | `dropdown_items_spacing` | 17 |
#' | `dropdown_arrow_hidden` | 18 |
#' | `dropdown_roll_up` | 19 |
#'
#' @examples
#' gui_dropdown_box_property$arrow_padding
#' gui_dropdown_box_property$dropdown_items_spacing
#' gui_dropdown_box_property$dropdown_roll_up
#'
#' @export
gui_dropdown_box_property <- list(
  arrow_padding = 16L,
  dropdown_items_spacing = 17L,
  dropdown_arrow_hidden = 18L,
  dropdown_roll_up = 19L
)

#' Gui Text Box Property
#'
#' Enum values for `gui_text_box_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `text_readonly` | 16 |
#'
#' @examples
#' gui_text_box_property$text_readonly
#'
#' @export
gui_text_box_property <- list(
  text_readonly = 16L
)

#' Gui Value Box Property
#'
#' Enum values for `gui_value_box_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `spinner_button_width` | 16 |
#' | `spinner_button_spacing` | 17 |
#'
#' @examples
#' gui_value_box_property$spinner_button_width
#' gui_value_box_property$spinner_button_spacing
#'
#' @export
gui_value_box_property <- list(
  spinner_button_width = 16L,
  spinner_button_spacing = 17L
)

#' Gui Tab Bar Property
#'
#' Enum values for `gui_tab_bar_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `tab_items_width` | 16 |
#' | `tab_close_button` | 17 |
#' | `tab_line_side` | 18 |
#'
#' @examples
#' gui_tab_bar_property$tab_items_width
#' gui_tab_bar_property$tab_close_button
#' gui_tab_bar_property$tab_line_side
#'
#' @export
gui_tab_bar_property <- list(
  tab_items_width = 16L,
  tab_close_button = 17L,
  tab_line_side = 18L
)

#' Gui List View Property
#'
#' Enum values for `gui_list_view_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `list_items_height` | 16 |
#' | `list_items_spacing` | 17 |
#' | `scrollbar_width` | 18 |
#' | `scrollbar_side` | 19 |
#' | `list_items_border_normal` | 20 |
#' | `list_items_border_width` | 21 |
#'
#' @examples
#' gui_list_view_property$list_items_height
#' gui_list_view_property$scrollbar_width
#' gui_list_view_property$list_items_border_width
#'
#' @export
gui_list_view_property <- list(
  list_items_height = 16L,
  list_items_spacing = 17L,
  scrollbar_width = 18L,
  scrollbar_side = 19L,
  list_items_border_normal = 20L,
  list_items_border_width = 21L
)

#' Gui Color Picker Property
#'
#' Enum values for `gui_color_picker_property`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `color_selector_size` | 16 |
#' | `huebar_width` | 17 |
#' | `huebar_padding` | 18 |
#' | `huebar_selector_height` | 19 |
#' | `huebar_selector_overflow` | 20 |
#'
#' @examples
#' gui_color_picker_property$color_selector_size
#' gui_color_picker_property$huebar_padding
#' gui_color_picker_property$huebar_selector_overflow
#'
#' @export
gui_color_picker_property <- list(
  color_selector_size = 16L,
  huebar_width = 17L,
  huebar_padding = 18L,
  huebar_selector_height = 19L,
  huebar_selector_overflow = 20L
)

#' Gui Icon
#'
#' Enum values for `gui_icon`.
#'
#' | Name | Value |
#' | --- | ---: |
#' | `none` | 0 |
#' | `folder_file_open` | 1 |
#' | `file_save_classic` | 2 |
#' | `folder_open` | 3 |
#' | `folder_save` | 4 |
#' | `file_open` | 5 |
#' | `file_save` | 6 |
#' | `file_export` | 7 |
#' | `file_add` | 8 |
#' | `file_delete` | 9 |
#' | `filetype_text` | 10 |
#' | `filetype_audio` | 11 |
#' | `filetype_image` | 12 |
#' | `filetype_play` | 13 |
#' | `filetype_video` | 14 |
#' | `filetype_info` | 15 |
#' | `file_copy` | 16 |
#' | `file_cut` | 17 |
#' | `file_paste` | 18 |
#' | `cursor_hand` | 19 |
#' | `cursor_pointer` | 20 |
#' | `cursor_classic` | 21 |
#' | `pencil` | 22 |
#' | `pencil_big` | 23 |
#' | `brush_classic` | 24 |
#' | `brush_painter` | 25 |
#' | `water_drop` | 26 |
#' | `color_picker` | 27 |
#' | `rubber` | 28 |
#' | `color_bucket` | 29 |
#' | `text_t` | 30 |
#' | `text_a` | 31 |
#' | `scale` | 32 |
#' | `resize` | 33 |
#' | `filter_point` | 34 |
#' | `filter_bilinear` | 35 |
#' | `crop` | 36 |
#' | `crop_alpha` | 37 |
#' | `square_toggle` | 38 |
#' | `symmetry` | 39 |
#' | `symmetry_horizontal` | 40 |
#' | `symmetry_vertical` | 41 |
#' | `lens` | 42 |
#' | `lens_big` | 43 |
#' | `eye_on` | 44 |
#' | `eye_off` | 45 |
#' | `filter_top` | 46 |
#' | `filter` | 47 |
#' | `target_point` | 48 |
#' | `target_small` | 49 |
#' | `target_big` | 50 |
#' | `target_move` | 51 |
#' | `cursor_move` | 52 |
#' | `cursor_scale` | 53 |
#' | `cursor_scale_right` | 54 |
#' | `cursor_scale_left` | 55 |
#' | `undo` | 56 |
#' | `redo` | 57 |
#' | `reredo` | 58 |
#' | `mutate` | 59 |
#' | `rotate` | 60 |
#' | `repeat` | 61 |
#' | `shuffle` | 62 |
#' | `emptybox` | 63 |
#' | `target` | 64 |
#' | `target_small_fill` | 65 |
#' | `target_big_fill` | 66 |
#' | `target_move_fill` | 67 |
#' | `cursor_move_fill` | 68 |
#' | `cursor_scale_fill` | 69 |
#' | `cursor_scale_right_fill` | 70 |
#' | `cursor_scale_left_fill` | 71 |
#' | `undo_fill` | 72 |
#' | `redo_fill` | 73 |
#' | `reredo_fill` | 74 |
#' | `mutate_fill` | 75 |
#' | `rotate_fill` | 76 |
#' | `repeat_fill` | 77 |
#' | `shuffle_fill` | 78 |
#' | `emptybox_small` | 79 |
#' | `box` | 80 |
#' | `box_top` | 81 |
#' | `box_top_right` | 82 |
#' | `box_right` | 83 |
#' | `box_bottom_right` | 84 |
#' | `box_bottom` | 85 |
#' | `box_bottom_left` | 86 |
#' | `box_left` | 87 |
#' | `box_top_left` | 88 |
#' | `box_center` | 89 |
#' | `box_circle_mask` | 90 |
#' | `pot` | 91 |
#' | `alpha_multiply` | 92 |
#' | `alpha_clear` | 93 |
#' | `dithering` | 94 |
#' | `mipmaps` | 95 |
#' | `box_grid` | 96 |
#' | `grid` | 97 |
#' | `box_corners_small` | 98 |
#' | `box_corners_big` | 99 |
#' | `four_boxes` | 100 |
#' | `grid_fill` | 101 |
#' | `box_multisize` | 102 |
#' | `zoom_small` | 103 |
#' | `zoom_medium` | 104 |
#' | `zoom_big` | 105 |
#' | `zoom_all` | 106 |
#' | `zoom_center` | 107 |
#' | `box_dots_small` | 108 |
#' | `box_dots_big` | 109 |
#' | `box_concentric` | 110 |
#' | `box_grid_big` | 111 |
#' | `ok_tick` | 112 |
#' | `cross` | 113 |
#' | `arrow_left` | 114 |
#' | `arrow_right` | 115 |
#' | `arrow_down` | 116 |
#' | `arrow_up` | 117 |
#' | `arrow_left_fill` | 118 |
#' | `arrow_right_fill` | 119 |
#' | `arrow_down_fill` | 120 |
#' | `arrow_up_fill` | 121 |
#' | `audio` | 122 |
#' | `fx` | 123 |
#' | `wave` | 124 |
#' | `wave_sinus` | 125 |
#' | `wave_square` | 126 |
#' | `wave_triangular` | 127 |
#' | `cross_small` | 128 |
#' | `player_previous` | 129 |
#' | `player_play_back` | 130 |
#' | `player_play` | 131 |
#' | `player_pause` | 132 |
#' | `player_stop` | 133 |
#' | `player_next` | 134 |
#' | `player_record` | 135 |
#' | `magnet` | 136 |
#' | `lock_close` | 137 |
#' | `lock_open` | 138 |
#' | `clock` | 139 |
#' | `tools` | 140 |
#' | `gear` | 141 |
#' | `gear_big` | 142 |
#' | `bin` | 143 |
#' | `hand_pointer` | 144 |
#' | `laser` | 145 |
#' | `coin` | 146 |
#' | `explosion` | 147 |
#' | `1up` | 148 |
#' | `player` | 149 |
#' | `player_jump` | 150 |
#' | `key` | 151 |
#' | `demon` | 152 |
#' | `text_popup` | 153 |
#' | `gear_ex` | 154 |
#' | `crack` | 155 |
#' | `crack_points` | 156 |
#' | `star` | 157 |
#' | `door` | 158 |
#' | `exit` | 159 |
#' | `mode_2d` | 160 |
#' | `mode_3d` | 161 |
#' | `cube` | 162 |
#' | `cube_face_top` | 163 |
#' | `cube_face_left` | 164 |
#' | `cube_face_front` | 165 |
#' | `cube_face_bottom` | 166 |
#' | `cube_face_right` | 167 |
#' | `cube_face_back` | 168 |
#' | `camera` | 169 |
#' | `special` | 170 |
#' | `link_net` | 171 |
#' | `link_boxes` | 172 |
#' | `link_multi` | 173 |
#' | `link` | 174 |
#' | `link_broke` | 175 |
#' | `text_notes` | 176 |
#' | `notebook` | 177 |
#' | `suitcase` | 178 |
#' | `suitcase_zip` | 179 |
#' | `mailbox` | 180 |
#' | `monitor` | 181 |
#' | `printer` | 182 |
#' | `photo_camera` | 183 |
#' | `photo_camera_flash` | 184 |
#' | `house` | 185 |
#' | `heart` | 186 |
#' | `corner` | 187 |
#' | `vertical_bars` | 188 |
#' | `vertical_bars_fill` | 189 |
#' | `life_bars` | 190 |
#' | `info` | 191 |
#' | `crossline` | 192 |
#' | `help` | 193 |
#' | `filetype_alpha` | 194 |
#' | `filetype_home` | 195 |
#' | `layers_visible` | 196 |
#' | `layers` | 197 |
#' | `window` | 198 |
#' | `hidpi` | 199 |
#' | `filetype_binary` | 200 |
#' | `hex` | 201 |
#' | `shield` | 202 |
#' | `file_new` | 203 |
#' | `folder_add` | 204 |
#' | `alarm` | 205 |
#' | `cpu` | 206 |
#' | `rom` | 207 |
#' | `step_over` | 208 |
#' | `step_into` | 209 |
#' | `step_out` | 210 |
#' | `restart` | 211 |
#' | `breakpoint_on` | 212 |
#' | `breakpoint_off` | 213 |
#' | `burger_menu` | 214 |
#' | `case_sensitive` | 215 |
#' | `reg_exp` | 216 |
#' | `folder` | 217 |
#' | `file` | 218 |
#' | `sand_timer` | 219 |
#' | `warning` | 220 |
#' | `help_box` | 221 |
#' | `info_box` | 222 |
#' | `priority` | 223 |
#' | `layers_iso` | 224 |
#' | `layers2` | 225 |
#' | `mlayers` | 226 |
#' | `maps` | 227 |
#' | `hot` | 228 |
#' | `label` | 229 |
#' | `name_id` | 230 |
#' | `slicing` | 231 |
#' | `manual_control` | 232 |
#' | `collision` | 233 |
#' | `circle_add` | 234 |
#' | `circle_add_fill` | 235 |
#' | `circle_warning` | 236 |
#' | `circle_warning_fill` | 237 |
#' | `box_more` | 238 |
#' | `box_more_fill` | 239 |
#' | `box_minus` | 240 |
#' | `box_minus_fill` | 241 |
#' | `union` | 242 |
#' | `intersection` | 243 |
#' | `difference` | 244 |
#' | `sphere` | 245 |
#' | `cylinder` | 246 |
#' | `cone` | 247 |
#' | `ellipsoid` | 248 |
#' | `capsule` | 249 |
#' | `filetype_font` | 250 |
#' | `filetype_3d` | 251 |
#' | `filetype_code_xml` | 252 |
#' | `filetype_code_c` | 253 |
#' | `filetype_code_python` | 254 |
#' | `filetype_code_js` | 255 |
#' | `filetype_icon` | 256 |
#'
#' @examples
#' gui_icon$none
#' gui_icon$cross_small
#' gui_icon$filetype_icon
#'
#' @export
gui_icon <- list(
  none = 0L,
  folder_file_open = 1L,
  file_save_classic = 2L,
  folder_open = 3L,
  folder_save = 4L,
  file_open = 5L,
  file_save = 6L,
  file_export = 7L,
  file_add = 8L,
  file_delete = 9L,
  filetype_text = 10L,
  filetype_audio = 11L,
  filetype_image = 12L,
  filetype_play = 13L,
  filetype_video = 14L,
  filetype_info = 15L,
  file_copy = 16L,
  file_cut = 17L,
  file_paste = 18L,
  cursor_hand = 19L,
  cursor_pointer = 20L,
  cursor_classic = 21L,
  pencil = 22L,
  pencil_big = 23L,
  brush_classic = 24L,
  brush_painter = 25L,
  water_drop = 26L,
  color_picker = 27L,
  rubber = 28L,
  color_bucket = 29L,
  text_t = 30L,
  text_a = 31L,
  scale = 32L,
  resize = 33L,
  filter_point = 34L,
  filter_bilinear = 35L,
  crop = 36L,
  crop_alpha = 37L,
  square_toggle = 38L,
  symmetry = 39L,
  symmetry_horizontal = 40L,
  symmetry_vertical = 41L,
  lens = 42L,
  lens_big = 43L,
  eye_on = 44L,
  eye_off = 45L,
  filter_top = 46L,
  filter = 47L,
  target_point = 48L,
  target_small = 49L,
  target_big = 50L,
  target_move = 51L,
  cursor_move = 52L,
  cursor_scale = 53L,
  cursor_scale_right = 54L,
  cursor_scale_left = 55L,
  undo = 56L,
  redo = 57L,
  reredo = 58L,
  mutate = 59L,
  rotate = 60L,
  `repeat` = 61L,
  shuffle = 62L,
  emptybox = 63L,
  target = 64L,
  target_small_fill = 65L,
  target_big_fill = 66L,
  target_move_fill = 67L,
  cursor_move_fill = 68L,
  cursor_scale_fill = 69L,
  cursor_scale_right_fill = 70L,
  cursor_scale_left_fill = 71L,
  undo_fill = 72L,
  redo_fill = 73L,
  reredo_fill = 74L,
  mutate_fill = 75L,
  rotate_fill = 76L,
  repeat_fill = 77L,
  shuffle_fill = 78L,
  emptybox_small = 79L,
  box = 80L,
  box_top = 81L,
  box_top_right = 82L,
  box_right = 83L,
  box_bottom_right = 84L,
  box_bottom = 85L,
  box_bottom_left = 86L,
  box_left = 87L,
  box_top_left = 88L,
  box_center = 89L,
  box_circle_mask = 90L,
  pot = 91L,
  alpha_multiply = 92L,
  alpha_clear = 93L,
  dithering = 94L,
  mipmaps = 95L,
  box_grid = 96L,
  grid = 97L,
  box_corners_small = 98L,
  box_corners_big = 99L,
  four_boxes = 100L,
  grid_fill = 101L,
  box_multisize = 102L,
  zoom_small = 103L,
  zoom_medium = 104L,
  zoom_big = 105L,
  zoom_all = 106L,
  zoom_center = 107L,
  box_dots_small = 108L,
  box_dots_big = 109L,
  box_concentric = 110L,
  box_grid_big = 111L,
  ok_tick = 112L,
  cross = 113L,
  arrow_left = 114L,
  arrow_right = 115L,
  arrow_down = 116L,
  arrow_up = 117L,
  arrow_left_fill = 118L,
  arrow_right_fill = 119L,
  arrow_down_fill = 120L,
  arrow_up_fill = 121L,
  audio = 122L,
  fx = 123L,
  wave = 124L,
  wave_sinus = 125L,
  wave_square = 126L,
  wave_triangular = 127L,
  cross_small = 128L,
  player_previous = 129L,
  player_play_back = 130L,
  player_play = 131L,
  player_pause = 132L,
  player_stop = 133L,
  player_next = 134L,
  player_record = 135L,
  magnet = 136L,
  lock_close = 137L,
  lock_open = 138L,
  clock = 139L,
  tools = 140L,
  gear = 141L,
  gear_big = 142L,
  bin = 143L,
  hand_pointer = 144L,
  laser = 145L,
  coin = 146L,
  explosion = 147L,
  `1up` = 148L,
  player = 149L,
  player_jump = 150L,
  key = 151L,
  demon = 152L,
  text_popup = 153L,
  gear_ex = 154L,
  crack = 155L,
  crack_points = 156L,
  star = 157L,
  door = 158L,
  exit = 159L,
  mode_2d = 160L,
  mode_3d = 161L,
  cube = 162L,
  cube_face_top = 163L,
  cube_face_left = 164L,
  cube_face_front = 165L,
  cube_face_bottom = 166L,
  cube_face_right = 167L,
  cube_face_back = 168L,
  camera = 169L,
  special = 170L,
  link_net = 171L,
  link_boxes = 172L,
  link_multi = 173L,
  link = 174L,
  link_broke = 175L,
  text_notes = 176L,
  notebook = 177L,
  suitcase = 178L,
  suitcase_zip = 179L,
  mailbox = 180L,
  monitor = 181L,
  printer = 182L,
  photo_camera = 183L,
  photo_camera_flash = 184L,
  house = 185L,
  heart = 186L,
  corner = 187L,
  vertical_bars = 188L,
  vertical_bars_fill = 189L,
  life_bars = 190L,
  info = 191L,
  crossline = 192L,
  help = 193L,
  filetype_alpha = 194L,
  filetype_home = 195L,
  layers_visible = 196L,
  layers = 197L,
  window = 198L,
  hidpi = 199L,
  filetype_binary = 200L,
  hex = 201L,
  shield = 202L,
  file_new = 203L,
  folder_add = 204L,
  alarm = 205L,
  cpu = 206L,
  rom = 207L,
  step_over = 208L,
  step_into = 209L,
  step_out = 210L,
  restart = 211L,
  breakpoint_on = 212L,
  breakpoint_off = 213L,
  burger_menu = 214L,
  case_sensitive = 215L,
  reg_exp = 216L,
  folder = 217L,
  file = 218L,
  sand_timer = 219L,
  warning = 220L,
  help_box = 221L,
  info_box = 222L,
  priority = 223L,
  layers_iso = 224L,
  layers2 = 225L,
  mlayers = 226L,
  maps = 227L,
  hot = 228L,
  label = 229L,
  name_id = 230L,
  slicing = 231L,
  manual_control = 232L,
  collision = 233L,
  circle_add = 234L,
  circle_add_fill = 235L,
  circle_warning = 236L,
  circle_warning_fill = 237L,
  box_more = 238L,
  box_more_fill = 239L,
  box_minus = 240L,
  box_minus_fill = 241L,
  union = 242L,
  intersection = 243L,
  difference = 244L,
  sphere = 245L,
  cylinder = 246L,
  cone = 247L,
  ellipsoid = 248L,
  capsule = 249L,
  filetype_font = 250L,
  filetype_3d = 251L,
  filetype_code_xml = 252L,
  filetype_code_c = 253L,
  filetype_code_python = 254L,
  filetype_code_js = 255L,
  filetype_icon = 256L
)

