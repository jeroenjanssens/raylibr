# Do not edit by hand.

#' @export
gui_result <- list(
  none = 0L,
  pressed = 1L,
  changed = 2L,
  tab_close = 4L
)

#' @export
gui_state <- list(
  normal = 0L,
  focused = 1L,
  pressed = 2L,
  disabled = 3L
)

#' @export
gui_text_alignment <- list(
  left = 0L,
  center = 1L,
  right = 2L
)

#' @export
gui_text_alignment_vertical <- list(
  top = 0L,
  middle = 1L,
  bottom = 2L
)

#' @export
gui_text_wrap_mode <- list(
  none = 0L,
  char = 1L,
  word = 2L
)

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

#' @export
gui_toggle_property <- list(
  group_padding = 16L,
  group_width_full = 17L
)

#' @export
gui_slider_property <- list(
  slider_width = 16L,
  slider_padding = 17L
)

#' @export
gui_progress_bar_property <- list(
  progress_padding = 16L,
  progress_side = 17L
)

#' @export
gui_scroll_bar_property <- list(
  arrows_size = 16L,
  arrows_visible = 17L,
  scroll_slider_padding = 18L,
  scroll_slider_size = 19L,
  scroll_padding = 20L,
  scroll_speed = 21L
)

#' @export
gui_check_box_property <- list(
  check_padding = 16L
)

#' @export
gui_combo_box_property <- list(
  combo_button_width = 16L,
  combo_button_spacing = 17L
)

#' @export
gui_dropdown_box_property <- list(
  arrow_padding = 16L,
  dropdown_items_spacing = 17L,
  dropdown_arrow_hidden = 18L,
  dropdown_roll_up = 19L
)

#' @export
gui_text_box_property <- list(
  text_readonly = 16L
)

#' @export
gui_value_box_property <- list(
  spinner_button_width = 16L,
  spinner_button_spacing = 17L
)

#' @export
gui_tab_bar_property <- list(
  tab_items_width = 16L,
  tab_close_button = 17L,
  tab_line_side = 18L
)

#' @export
gui_list_view_property <- list(
  list_items_height = 16L,
  list_items_spacing = 17L,
  scrollbar_width = 18L,
  scrollbar_side = 19L,
  list_items_border_normal = 20L,
  list_items_border_width = 21L
)

#' @export
gui_color_picker_property <- list(
  color_selector_size = 16L,
  huebar_width = 17L,
  huebar_padding = 18L,
  huebar_selector_height = 19L,
  huebar_selector_overflow = 20L
)

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

