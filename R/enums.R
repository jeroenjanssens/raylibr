#' @export
flag <- list(
  vsync_hint = 0x00000040,
  fullscreen_mode = 0x00000002,
  window_resizable = 0x00000004,
  window_undecorated = 0x00000008,
  window_hidden = 0x00000080,
  window_minimized = 0x00000200,
  window_maximized = 0x00000400,
  window_unfocused = 0x00000800,
  window_topmost = 0x00001000,
  window_always_run = 0x00000100,
  window_transparent = 0x00000010,
  window_highdpi = 0x00002000,
  msaa_4x_hint = 0x00000020,
  interlaced_hint = 0x00010000
)

#' @export
log <- list(
  all = 0,
  trace = 1,
  debug = 2,
  info = 3,
  warning = 4,
  error = 5,
  fatal = 6,
  none = 7
)

#' @export
key <- list(
  # null = 0,
  apostrophe = 39,
  comma = 44,
  minus = 45,
  period = 46,
  slash = 47,
  zero = 48,
  one = 49,
  two = 50,
  three = 51,
  four = 52,
  five = 53,
  six = 54,
  seven = 55,
  eight = 56,
  nine = 57,
  semicolon = 59,
  equal = 61,
  a = 65,
  b = 66,
  c = 67,
  d = 68,
  e = 69,
  f = 70,
  g = 71,
  h = 72,
  i = 73,
  j = 74,
  k = 75,
  l = 76,
  m = 77,
  n = 78,
  o = 79,
  p = 80,
  q = 81,
  r = 82,
  s = 83,
  t = 84,
  u = 85,
  v = 86,
  w = 87,
  x = 88,
  y = 89,
  z = 90,
  left_bracket = 91,
  backslash = 92,
  right_bracket = 93,
  grave = 96,
  space = 32,
  escape = 256,
  enter = 257,
  tab = 258,
  backspace = 259,
  insert = 260,
  delete = 261,
  right = 262,
  left = 263,
  down = 264,
  up = 265,
  page_up = 266,
  page_down = 267,
  home = 268,
  end = 269,
  caps_lock = 280,
  scroll_lock = 281,
  num_lock = 282,
  print_screen = 283,
  pause = 284,
  f1 = 290,
  f2 = 291,
  f3 = 292,
  f4 = 293,
  f5 = 294,
  f6 = 295,
  f7 = 296,
  f8 = 297,
  f9 = 298,
  f10 = 299,
  f11 = 300,
  f12 = 301,
  left_shift = 340,
  left_control = 341,
  left_alt = 342,
  left_super = 343,
  right_shift = 344,
  right_control = 345,
  right_alt = 346,
  right_super = 347,
  kb_menu = 348,
  kp_0 = 320,
  kp_1 = 321,
  kp_2 = 322,
  kp_3 = 323,
  kp_4 = 324,
  kp_5 = 325,
  kp_6 = 326,
  kp_7 = 327,
  kp_8 = 328,
  kp_9 = 329,
  kp_decimal = 330,
  kp_divide = 331,
  kp_multiply = 332,
  kp_subtract = 333,
  kp_add = 334,
  kp_enter = 335,
  kp_equal = 336
  # back = 4,
  # menu = 82,
  # volume_up = 24,
  # volume_down = 25
)

#' @export
mouse_button <- list(
  left = 0,
  right = 1,
  middle = 2,
  side = 3,
  extra = 4,
  forward = 5,
  back = 6
)

#' @export
mouse_cursor <- list(
  default = 0,
  arrow = 1,
  ibeam = 2,
  crosshair = 3,
  pointing_hand = 4,
  resize_ew = 5,
  resize_ns = 6,
  resize_nwse = 7,
  resize_nesw = 8,
  resize_all = 9,
  not_allowed = 10
)

#' @export
camera_mode <- list(
  custom = 0,
  free = 1,
  orbital = 2,
  first_person = 3,
  third_person = 4
)

#' @export
camera_projection <- list(
  perspective = 0,
  orthographic = 1
)

#' @export
shader_uniform <- list(
  float = 0,
  vec2 = 1,
  vec3 = 2,
  vec4 = 3,
  int = 4,
  ivec2 = 5,
  ivec3 = 6,
  ivec4 = 7,
  sampler2d = 8
)

#' @export
material_map_index = list(
  albedo = 0,
  diffuse = 0,
  metalness = 1,
  specular = 1,
  normal = 2,
  roughness = 3,
  occlusion = 4,
  emission = 5,
  height = 6,
  cubemap = 7,
  irradiance = 8,
  prefilter = 9,
  brdf = 10
)

