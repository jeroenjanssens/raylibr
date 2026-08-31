# Do not edit by hand.

# Vectorization helpers for draw_* functions
.vec_len <- function(x) if (is.matrix(x)) nrow(x) else 1L
.vec_recycle <- function(x, n, nc) {
  if (is.matrix(x) && nrow(x) == n) return(x)
  if (!is.matrix(x)) x <- matrix(x, nrow = 1)
  matrix(rep(t(x), length.out = n * nc), ncol = nc, byrow = TRUE)
}
.color_len <- function(x) {
  if (is.list(x) && !inherits(x, "color") && !identical(names(x), c("r", "g", "b", "a"))) length(x)
  else if (is.character(x)) length(x)
  else 1L
}
.color_recycle <- function(x, n) {
  cl <- .color_len(x)
  if (is.character(x)) as.list(rep(x, length.out = n))
  else if (cl > 1L) rep(x, length.out = n)
  else rep(list(x), length.out = n)
}
.struct_len <- function(x) if (is.list(x) && is.null(attr(x, "class"))) length(x) else 1L
.struct_recycle <- function(x, n) {
  if (.struct_len(x) > 1L) rep(x, length.out = n)
  else rep(list(x), length.out = n)
}

#' Init Window
#'
#' Initialize window and OpenGL context.
#'
#' @param width An integer.
#' @param height An integer.
#' @param title A string.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void InitWindow(int width, int height, const char * title);
#' ```
#'
#' @family window functions
#' @family init functions
#'
#' @examplesIf FALSE
#' init_window(800L, 450L, "My Window")
#'
#' @export
init_window <- function(width = 640L, height = 480L, title = "raylibr") {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_const_char_pointer(title)) abort(paste0('`title` must be a string, not ', friendly_typeof(title), '.'), call = NULL)
  init_window_(width, height, title)
}

#' Close Window
#'
#' Close window and unload OpenGL context.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void CloseWindow(void);
#' ```
#'
#' @family window functions
#' @family close functions
#'
#' @examplesIf FALSE
#' close_window()
#'
#' @export
close_window <- function() {
  close_window_()
}

#' Window Should Close
#'
#' Check if application should close (KEY_ESCAPE pressed or windows close icon clicked).
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool WindowShouldClose(void);
#' ```
#'
#' @family close functions
#' @family should functions
#'
#' @examplesIf FALSE
#' window_should_close()
#'
#' @export
window_should_close <- function() {
  window_should_close_()
}

#' Is Window Ready
#'
#' Check if window has been initialized successfully.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowReady(void);
#' ```
#'
#' @family ready functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_ready()
#'
#' @export
is_window_ready <- function() {
  is_window_ready_()
}

#' Is Window Fullscreen
#'
#' Check if window is currently fullscreen.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowFullscreen(void);
#' ```
#'
#' @family fullscreen functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_fullscreen()
#'
#' @export
is_window_fullscreen <- function() {
  is_window_fullscreen_()
}

#' Is Window Hidden
#'
#' Check if window is currently hidden.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowHidden(void);
#' ```
#'
#' @family hidden functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_hidden()
#'
#' @export
is_window_hidden <- function() {
  is_window_hidden_()
}

#' Is Window Minimized
#'
#' Check if window is currently minimized.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowMinimized(void);
#' ```
#'
#' @family minimized functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_minimized()
#'
#' @export
is_window_minimized <- function() {
  is_window_minimized_()
}

#' Is Window Maximized
#'
#' Check if window is currently maximized.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowMaximized(void);
#' ```
#'
#' @family maximized functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_maximized()
#'
#' @export
is_window_maximized <- function() {
  is_window_maximized_()
}

#' Is Window Focused
#'
#' Check if window is currently focused.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowFocused(void);
#' ```
#'
#' @family focused functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_focused()
#'
#' @export
is_window_focused <- function() {
  is_window_focused_()
}

#' Is Window Resized
#'
#' Check if window has been resized last frame.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowResized(void);
#' ```
#'
#' @family resized functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_resized()
#'
#' @export
is_window_resized <- function() {
  is_window_resized_()
}

#' Is Window State
#'
#' Check if one specific window flag is enabled.
#'
#' @param flag A non-negative integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWindowState(unsigned int flag);
#' ```
#'
#' @family state functions
#' @family window functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_window_state(0L)
#'
#' @export
is_window_state <- function(flag) {
  if (!is_unsigned_int(flag)) abort(paste0('`flag` must be a non-negative integer, not ', friendly_typeof(flag), '.'), call = NULL)
  is_window_state_(flag)
}

#' Set Window State
#'
#' Set window configuration state using flags.
#'
#' @param flags A non-negative integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowState(unsigned int flags);
#' ```
#'
#' @family state functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_state(0L)
#'
#' @export
set_window_state <- function(flags) {
  if (!is_unsigned_int(flags)) abort(paste0('`flags` must be a non-negative integer, not ', friendly_typeof(flags), '.'), call = NULL)
  set_window_state_(flags)
}

#' Clear Window State
#'
#' Clear window configuration state flags.
#'
#' @param flags A non-negative integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ClearWindowState(unsigned int flags);
#' ```
#'
#' @family state functions
#' @family window functions
#'
#' @examplesIf FALSE
#' clear_window_state(0L)
#'
#' @export
clear_window_state <- function(flags) {
  if (!is_unsigned_int(flags)) abort(paste0('`flags` must be a non-negative integer, not ', friendly_typeof(flags), '.'), call = NULL)
  clear_window_state_(flags)
}

#' Toggle Fullscreen
#'
#' Toggle window state: fullscreen/windowed, resizes monitor to match window resolution.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ToggleFullscreen(void);
#' ```
#'
#' @family fullscreen functions
#'
#' @examplesIf FALSE
#' toggle_fullscreen()
#'
#' @export
toggle_fullscreen <- function() {
  toggle_fullscreen_()
}

#' Toggle Borderless Windowed
#'
#' Toggle window state: borderless windowed, resizes window to match monitor resolution.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ToggleBorderlessWindowed(void);
#' ```
#'
#' @family windowed functions
#' @family borderless functions
#'
#' @examplesIf FALSE
#' toggle_borderless_windowed()
#'
#' @export
toggle_borderless_windowed <- function() {
  toggle_borderless_windowed_()
}

#' Maximize Window
#'
#' Set window state: maximized, if resizable.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void MaximizeWindow(void);
#' ```
#'
#' @family window functions
#'
#' @examplesIf FALSE
#' maximize_window()
#'
#' @export
maximize_window <- function() {
  maximize_window_()
}

#' Minimize Window
#'
#' Set window state: minimized, if resizable.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void MinimizeWindow(void);
#' ```
#'
#' @family window functions
#'
#' @examplesIf FALSE
#' minimize_window()
#'
#' @export
minimize_window <- function() {
  minimize_window_()
}

#' Restore Window
#'
#' Restore window from being minimized/maximized.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void RestoreWindow(void);
#' ```
#'
#' @family window functions
#'
#' @examplesIf FALSE
#' restore_window()
#'
#' @export
restore_window <- function() {
  restore_window_()
}

#' Set Window Icon
#'
#' Set icon for window (single image, RGBA 32bit).
#'
#' @param image An image.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowIcon(Image image);
#' ```
#'
#' @family icon functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_icon(gen_image_color(100, 100, "blue"))
#'
#' @export
set_window_icon <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  set_window_icon_(image)
}

#' Set Window Title
#'
#' Set title for window.
#'
#' @param title A string.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowTitle(const char * title);
#' ```
#'
#' @family title functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_title("My Window")
#'
#' @export
set_window_title <- function(title) {
  if (!is_const_char_pointer(title)) abort(paste0('`title` must be a string, not ', friendly_typeof(title), '.'), call = NULL)
  set_window_title_(title)
}

#' Set Window Position
#'
#' Set window position on screen.
#'
#' @param x An integer.
#' @param y An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowPosition(int x, int y);
#' ```
#'
#' @family position functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_position(100L, 100L)
#'
#' @export
set_window_position <- function(x, y) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  set_window_position_(x, y)
}

#' Set Window Monitor
#'
#' Set monitor for the current window.
#'
#' @param monitor An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowMonitor(int monitor);
#' ```
#'
#' @family monitor functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_monitor(0L)
#'
#' @export
set_window_monitor <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  set_window_monitor_(monitor)
}

#' Set Window Min Size
#'
#' Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE).
#'
#' @param width An integer.
#' @param height An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowMinSize(int width, int height);
#' ```
#'
#' @family size functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_min_size(800L, 450L)
#'
#' @export
set_window_min_size <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  set_window_min_size_(width, height)
}

#' Set Window Max Size
#'
#' Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE).
#'
#' @param width An integer.
#' @param height An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowMaxSize(int width, int height);
#' ```
#'
#' @family size functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_max_size(800L, 450L)
#'
#' @export
set_window_max_size <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  set_window_max_size_(width, height)
}

#' Set Window Size
#'
#' Set window dimensions.
#'
#' @param width An integer.
#' @param height An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowSize(int width, int height);
#' ```
#'
#' @family size functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_size(800L, 450L)
#'
#' @export
set_window_size <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  set_window_size_(width, height)
}

#' Set Window Opacity
#'
#' Set window opacity \\[0.0f..1.0f\\].
#'
#' @param opacity A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowOpacity(float opacity);
#' ```
#'
#' @family opacity functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_opacity(0.0)
#'
#' @export
set_window_opacity <- function(opacity) {
  if (!is_float(opacity)) abort(paste0('`opacity` must be a number, not ', friendly_typeof(opacity), '.'), call = NULL)
  set_window_opacity_(opacity)
}

#' Set Window Focused
#'
#' Set window focused.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowFocused(void);
#' ```
#'
#' @family focused functions
#' @family window functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_window_focused()
#'
#' @export
set_window_focused <- function() {
  set_window_focused_()
}

#' Get Screen Width
#'
#' Get current screen width.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetScreenWidth(void);
#' ```
#'
#' @family width functions
#' @family screen functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_screen_width()
#'
#' @export
get_screen_width <- function() {
  get_screen_width_()
}

#' Get Screen Height
#'
#' Get current screen height.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetScreenHeight(void);
#' ```
#'
#' @family height functions
#' @family screen functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_screen_height()
#'
#' @export
get_screen_height <- function() {
  get_screen_height_()
}

#' Get Render Width
#'
#' Get current render width (it considers HiDPI).
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetRenderWidth(void);
#' ```
#'
#' @family width functions
#' @family render functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_render_width()
#'
#' @export
get_render_width <- function() {
  get_render_width_()
}

#' Get Render Height
#'
#' Get current render height (it considers HiDPI).
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetRenderHeight(void);
#' ```
#'
#' @family height functions
#' @family render functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_render_height()
#'
#' @export
get_render_height <- function() {
  get_render_height_()
}

#' Get Monitor Count
#'
#' Get number of connected monitors.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMonitorCount(void);
#' ```
#'
#' @family count functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_count()
#'
#' @export
get_monitor_count <- function() {
  get_monitor_count_()
}

#' Get Current Monitor
#'
#' Get current monitor where window is placed.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetCurrentMonitor(void);
#' ```
#'
#' @family monitor functions
#' @family current functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_current_monitor()
#'
#' @export
get_current_monitor <- function() {
  get_current_monitor_()
}

#' Get Monitor Position
#'
#' Get specified monitor position.
#'
#' @param monitor An integer.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetMonitorPosition(int monitor);
#' ```
#'
#' @family position functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_position(0L)
#'
#' @export
get_monitor_position <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_position_(monitor)
}

#' Get Monitor Width
#'
#' Get specified monitor width (current video mode used by monitor).
#'
#' @param monitor An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMonitorWidth(int monitor);
#' ```
#'
#' @family width functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_width(0L)
#'
#' @export
get_monitor_width <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_width_(monitor)
}

#' Get Monitor Height
#'
#' Get specified monitor height (current video mode used by monitor).
#'
#' @param monitor An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMonitorHeight(int monitor);
#' ```
#'
#' @family height functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_height(0L)
#'
#' @export
get_monitor_height <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_height_(monitor)
}

#' Get Monitor Physical Width
#'
#' Get specified monitor physical width in millimetres.
#'
#' @param monitor An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMonitorPhysicalWidth(int monitor);
#' ```
#'
#' @family width functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_physical_width(0L)
#'
#' @export
get_monitor_physical_width <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_physical_width_(monitor)
}

#' Get Monitor Physical Height
#'
#' Get specified monitor physical height in millimetres.
#'
#' @param monitor An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMonitorPhysicalHeight(int monitor);
#' ```
#'
#' @family height functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_physical_height(0L)
#'
#' @export
get_monitor_physical_height <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_physical_height_(monitor)
}

#' Get Monitor Refresh Rate
#'
#' Get specified monitor refresh rate.
#'
#' @param monitor An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMonitorRefreshRate(int monitor);
#' ```
#'
#' @family rate functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_refresh_rate(0L)
#'
#' @export
get_monitor_refresh_rate <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_refresh_rate_(monitor)
}

#' Get Window Position
#'
#' Get window position XY on monitor.
#'
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetWindowPosition(void);
#' ```
#'
#' @family position functions
#' @family window functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_window_position()
#'
#' @export
get_window_position <- function() {
  get_window_position_()
}

#' Get Window Scale Dpi
#'
#' Get window scale DPI factor.
#'
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetWindowScaleDPI(void);
#' ```
#'
#' @family dpi functions
#' @family window functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_window_scale_dpi()
#'
#' @export
get_window_scale_dpi <- function() {
  get_window_scale_dpi_()
}

#' Get Monitor Name
#'
#' Get the human-readable, UTF-8 encoded name of the specified monitor.
#'
#' @param monitor An integer.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetMonitorName(int monitor);
#' ```
#'
#' @family name functions
#' @family monitor functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_monitor_name(0L)
#'
#' @export
get_monitor_name <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_name_(monitor)
}

#' Set Clipboard Text
#'
#' Set clipboard text content.
#'
#' @param text A string.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetClipboardText(const char * text);
#' ```
#'
#' @family text functions
#' @family clipboard functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_clipboard_text("Hello")
#'
#' @export
set_clipboard_text <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  set_clipboard_text_(text)
}

#' Get Clipboard Text
#'
#' Get clipboard text content.
#'
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetClipboardText(void);
#' ```
#'
#' @family text functions
#' @family clipboard functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_clipboard_text()
#'
#' @export
get_clipboard_text <- function() {
  get_clipboard_text_()
}

#' Get Clipboard Image
#'
#' Get clipboard image content.
#'
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GetClipboardImage(void);
#' ```
#'
#' @family image functions
#' @family clipboard functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_clipboard_image()
#'
#' @export
get_clipboard_image <- function() {
  get_clipboard_image_()
}

#' Enable Event Waiting
#'
#' Enable waiting for events on EndDrawing(), no automatic event polling.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EnableEventWaiting(void);
#' ```
#'
#' @family waiting functions
#' @family event functions
#'
#' @examplesIf FALSE
#' enable_event_waiting()
#'
#' @export
enable_event_waiting <- function() {
  enable_event_waiting_()
}

#' Disable Event Waiting
#'
#' Disable waiting for events on EndDrawing(), automatic events polling.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DisableEventWaiting(void);
#' ```
#'
#' @family waiting functions
#' @family event functions
#'
#' @examplesIf FALSE
#' disable_event_waiting()
#'
#' @export
disable_event_waiting <- function() {
  disable_event_waiting_()
}

#' Show Cursor
#'
#' Shows cursor.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ShowCursor(void);
#' ```
#'
#' @family cursor functions
#'
#' @examplesIf FALSE
#' show_cursor()
#'
#' @export
show_cursor <- function() {
  show_cursor_()
}

#' Hide Cursor
#'
#' Hides cursor.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void HideCursor(void);
#' ```
#'
#' @family cursor functions
#'
#' @examplesIf FALSE
#' hide_cursor()
#'
#' @export
hide_cursor <- function() {
  hide_cursor_()
}

#' Is Cursor Hidden
#'
#' Check if cursor is not visible.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsCursorHidden(void);
#' ```
#'
#' @family hidden functions
#' @family cursor functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_cursor_hidden()
#'
#' @export
is_cursor_hidden <- function() {
  is_cursor_hidden_()
}

#' Enable Cursor
#'
#' Enables cursor (unlock cursor).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EnableCursor(void);
#' ```
#'
#' @family cursor functions
#'
#' @examplesIf FALSE
#' enable_cursor()
#'
#' @export
enable_cursor <- function() {
  enable_cursor_()
}

#' Disable Cursor
#'
#' Disables cursor (lock cursor).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DisableCursor(void);
#' ```
#'
#' @family cursor functions
#'
#' @examplesIf FALSE
#' disable_cursor()
#'
#' @export
disable_cursor <- function() {
  disable_cursor_()
}

#' Is Cursor On Screen
#'
#' Check if cursor is on the screen.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsCursorOnScreen(void);
#' ```
#'
#' @family screen functions
#' @family cursor functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_cursor_on_screen()
#'
#' @export
is_cursor_on_screen <- function() {
  is_cursor_on_screen_()
}

#' Clear Background
#'
#' Set background color (framebuffer clear color).
#'
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ClearBackground(Color color);
#' ```
#'
#' @family background functions
#'
#' @examplesIf FALSE
#' clear_background("red")
#'
#' @export
clear_background <- function(color = "white") {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  clear_background_(color)
}

#' Begin Drawing
#'
#' Setup canvas (framebuffer) to start drawing.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginDrawing(void);
#' ```
#'
#' @family drawing functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_drawing()
#'
#' @export
begin_drawing <- function() {
  begin_drawing_()
}

#' End Drawing
#'
#' End canvas drawing and swap buffers (double buffering).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndDrawing(void);
#' ```
#'
#' @family drawing functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_drawing()
#'
#' @export
end_drawing <- function() {
  end_drawing_()
}

#' Begin Mode 2d
#'
#' Begin 2D mode with custom camera (2D).
#'
#' @param camera A camera_2d.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginMode2D(Camera2D camera);
#' ```
#'
#' @family 2d functions
#' @family mode functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_mode_2d(camera_2d(c(400, 300), c(0, 0)))
#'
#' @export
begin_mode_2d <- function(camera) {
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  begin_mode_2d_(camera)
}

#' End Mode 2d
#'
#' Ends 2D mode with custom camera.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndMode2D(void);
#' ```
#'
#' @family 2d functions
#' @family mode functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_mode_2d()
#'
#' @export
end_mode_2d <- function() {
  end_mode_2d_()
}

#' Begin Mode 3d
#'
#' Begin 3D mode with custom camera (3D).
#'
#' @param camera A camera_3d.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginMode3D(Camera3D camera);
#' ```
#'
#' @family 3d functions
#' @family mode functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_mode_3d(camera_3d(c(0, 10, 10)))
#'
#' @export
begin_mode_3d <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  begin_mode_3d_(camera)
}

#' End Mode 3d
#'
#' Ends 3D mode and returns to default 2D orthographic mode.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndMode3D(void);
#' ```
#'
#' @family 3d functions
#' @family mode functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_mode_3d()
#'
#' @export
end_mode_3d <- function() {
  end_mode_3d_()
}

#' Begin Texture Mode
#'
#' Begin drawing to render texture.
#'
#' @param target A render texture.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginTextureMode(RenderTexture2D target);
#' ```
#'
#' @family mode functions
#' @family texture functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_texture_mode(load_render_texture(800, 450))
#'
#' @export
begin_texture_mode <- function(target) {
  if (!is_render_texture(target)) abort(paste0('`target` must be a render texture, not ', friendly_typeof(target), '.'), call = NULL)
  begin_texture_mode_(target)
}

#' End Texture Mode
#'
#' Ends drawing to render texture.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndTextureMode(void);
#' ```
#'
#' @family mode functions
#' @family texture functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_texture_mode()
#'
#' @export
end_texture_mode <- function() {
  end_texture_mode_()
}

#' Begin Shader Mode
#'
#' Begin custom shader drawing.
#'
#' @param shader A shader.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginShaderMode(Shader shader);
#' ```
#'
#' @family mode functions
#' @family shader functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_shader_mode(load_shader("", "shader.fs"))
#'
#' @export
begin_shader_mode <- function(shader) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  begin_shader_mode_(shader)
}

#' End Shader Mode
#'
#' End custom shader drawing (use default shader).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndShaderMode(void);
#' ```
#'
#' @family mode functions
#' @family shader functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_shader_mode()
#'
#' @export
end_shader_mode <- function() {
  end_shader_mode_()
}

#' Begin Blend Mode
#'
#' Begin blending mode (alpha, additive, multiplied, subtract, custom).
#'
#' @param mode An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginBlendMode(int mode);
#' ```
#'
#' @family mode functions
#' @family blend functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_blend_mode(0L)
#'
#' @export
begin_blend_mode <- function(mode) {
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  begin_blend_mode_(mode)
}

#' End Blend Mode
#'
#' End blending mode (reset to default: alpha blending).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndBlendMode(void);
#' ```
#'
#' @family mode functions
#' @family blend functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_blend_mode()
#'
#' @export
end_blend_mode <- function() {
  end_blend_mode_()
}

#' Begin Scissor Mode
#'
#' Begin scissor mode (define screen area for following drawing).
#'
#' @param x An integer.
#' @param y An integer.
#' @param width An integer.
#' @param height An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginScissorMode(int x, int y, int width, int height);
#' ```
#'
#' @family mode functions
#' @family scissor functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_scissor_mode(100L, 100L, 800L, 450L)
#'
#' @export
begin_scissor_mode <- function(x, y, width, height) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  begin_scissor_mode_(x, y, width, height)
}

#' End Scissor Mode
#'
#' End scissor mode.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndScissorMode(void);
#' ```
#'
#' @family mode functions
#' @family scissor functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_scissor_mode()
#'
#' @export
end_scissor_mode <- function() {
  end_scissor_mode_()
}

#' Begin Vr Stereo Mode
#'
#' Begin stereo rendering (requires VR simulator).
#'
#' @param config A vr_stereo_config.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginVrStereoMode(VrStereoConfig config);
#' ```
#'
#' @family mode functions
#' @family vr functions
#' @family begin functions
#'
#' @examplesIf FALSE
#' begin_vr_stereo_mode(config)
#'
#' @export
begin_vr_stereo_mode <- function(config) {
  if (!is_vr_stereo_config(config)) abort(paste0('`config` must be a vr_stereo_config, not ', friendly_typeof(config), '.'), call = NULL)
  begin_vr_stereo_mode_(config)
}

#' End Vr Stereo Mode
#'
#' End stereo rendering (requires VR simulator).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndVrStereoMode(void);
#' ```
#'
#' @family mode functions
#' @family vr functions
#' @family end functions
#'
#' @examplesIf FALSE
#' end_vr_stereo_mode()
#'
#' @export
end_vr_stereo_mode <- function() {
  end_vr_stereo_mode_()
}

#' Load Vr Stereo Config
#'
#' Load VR stereo config for VR simulator device parameters.
#'
#' @param device A vr_device_info.
#'
#' @return A vr_stereo_config
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);
#' ```
#'
#' @family config functions
#' @family vr functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_vr_stereo_config(device)
#'
#' @export
load_vr_stereo_config <- function(device) {
  if (!is_vr_device_info(device)) abort(paste0('`device` must be a vr_device_info, not ', friendly_typeof(device), '.'), call = NULL)
  load_vr_stereo_config_(device)
}

#' Unload Vr Stereo Config
#'
#' Unload VR stereo config.
#'
#' @param config A vr_stereo_config.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadVrStereoConfig(VrStereoConfig config);
#' ```
#'
#' @family config functions
#' @family vr functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_vr_stereo_config(config)
#'
#' @export
unload_vr_stereo_config <- function(config) {
  if (!is_vr_stereo_config(config)) abort(paste0('`config` must be a vr_stereo_config, not ', friendly_typeof(config), '.'), call = NULL)
  unload_vr_stereo_config_(config)
}

#' Load Shader
#'
#' Load shader from files and bind default locations.
#'
#' @param vs_file_name A string.
#' @param fs_file_name A string.
#'
#' @return A shader
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Shader LoadShader(const char * vsFileName, const char * fsFileName);
#' ```
#'
#' @family shader functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_shader("file.png", "file.png")
#'
#' @export
load_shader <- function(vs_file_name = "", fs_file_name) {
  if (!is_const_char_pointer(vs_file_name)) abort(paste0('`vs_file_name` must be a string, not ', friendly_typeof(vs_file_name), '.'), call = NULL)
  if (!is_const_char_pointer(fs_file_name)) abort(paste0('`fs_file_name` must be a string, not ', friendly_typeof(fs_file_name), '.'), call = NULL)
  load_shader_(vs_file_name, fs_file_name)
}

#' Load Shader From Memory
#'
#' Load shader from code strings and bind default locations.
#'
#' @param vs_code A string.
#' @param fs_code A string.
#'
#' @return A shader
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Shader LoadShaderFromMemory(const char * vsCode, const char * fsCode);
#' ```
#'
#' @family memory functions
#' @family shader functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_shader_from_memory("text", "text")
#'
#' @export
load_shader_from_memory <- function(vs_code, fs_code) {
  if (!is_const_char_pointer(vs_code)) abort(paste0('`vs_code` must be a string, not ', friendly_typeof(vs_code), '.'), call = NULL)
  if (!is_const_char_pointer(fs_code)) abort(paste0('`fs_code` must be a string, not ', friendly_typeof(fs_code), '.'), call = NULL)
  load_shader_from_memory_(vs_code, fs_code)
}

#' Is Shader Valid
#'
#' Check if a shader is valid (loaded on GPU).
#'
#' @param shader A shader.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsShaderValid(Shader shader);
#' ```
#'
#' @family valid functions
#' @family shader functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_shader_valid(load_shader("", "shader.fs"))
#'
#' @export
is_shader_valid <- function(shader) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  is_shader_valid_(shader)
}

#' Get Shader Location
#'
#' Get shader uniform location.
#'
#' @param shader A shader.
#' @param uniform_name A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetShaderLocation(Shader shader, const char * uniformName);
#' ```
#'
#' @family location functions
#' @family shader functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_shader_location(load_shader("", "shader.fs"), "text")
#'
#' @export
get_shader_location <- function(shader, uniform_name) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_const_char_pointer(uniform_name)) abort(paste0('`uniform_name` must be a string, not ', friendly_typeof(uniform_name), '.'), call = NULL)
  get_shader_location_(shader, uniform_name)
}

#' Get Shader Location Attrib
#'
#' Get shader attribute location.
#'
#' @param shader A shader.
#' @param attrib_name A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetShaderLocationAttrib(Shader shader, const char * attribName);
#' ```
#'
#' @family attrib functions
#' @family shader functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_shader_location_attrib(load_shader("", "shader.fs"), "text")
#'
#' @export
get_shader_location_attrib <- function(shader, attrib_name) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_const_char_pointer(attrib_name)) abort(paste0('`attrib_name` must be a string, not ', friendly_typeof(attrib_name), '.'), call = NULL)
  get_shader_location_attrib_(shader, attrib_name)
}

#' Set Shader Value Matrix
#'
#' Set shader uniform value (matrix 4x4).
#'
#' @param shader A shader.
#' @param loc_index An integer.
#' @param mat A 4x4 numeric matrix.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);
#' ```
#'
#' @family matrix functions
#' @family shader functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_shader_value_matrix(load_shader("", "shader.fs"), 0L, diag(4))
#'
#' @export
set_shader_value_matrix <- function(shader, loc_index, mat) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  set_shader_value_matrix_(shader, loc_index, mat)
}

#' Set Shader Value Texture
#'
#' Set shader uniform value and bind the texture (sampler2d).
#'
#' @param shader A shader.
#' @param loc_index An integer.
#' @param texture A texture.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);
#' ```
#'
#' @family texture functions
#' @family shader functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_shader_value_texture(load_shader("", "shader.fs"), 0L, load_texture("file.png"))
#'
#' @export
set_shader_value_texture <- function(shader, loc_index, texture) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  set_shader_value_texture_(shader, loc_index, texture)
}

#' Unload Shader
#'
#' Unload shader from GPU memory (VRAM).
#'
#' @param shader A shader.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadShader(Shader shader);
#' ```
#'
#' @family shader functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_shader(load_shader("", "shader.fs"))
#'
#' @export
unload_shader <- function(shader) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  unload_shader_(shader)
}

#' Get Screen To World Ray
#'
#' Get a ray trace from screen position (i.e mouse).
#'
#' @param position A numeric vector of length 2.
#' @param camera A camera_3d.
#'
#' @return A ray
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Ray GetScreenToWorldRay(Vector2 position, Camera camera);
#' ```
#'
#' @family ray functions
#' @family screen functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_screen_to_world_ray(c(100, 100), camera_3d(c(0, 10, 10)))
#'
#' @export
get_screen_to_world_ray <- function(position, camera) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_screen_to_world_ray_(position, camera)
}

#' Get Screen To World Ray Ex
#'
#' Get a ray trace from screen position (i.e mouse) in a viewport.
#'
#' @param position A numeric vector of length 2.
#' @param camera A camera_3d.
#' @param width An integer.
#' @param height An integer.
#'
#' @return A ray
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Ray GetScreenToWorldRayEx(Vector2 position, Camera camera, int width, int height);
#' ```
#'
#' @family ex functions
#' @family screen functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_screen_to_world_ray_ex(c(100, 100), camera_3d(c(0, 10, 10)), 800L, 450L)
#'
#' @export
get_screen_to_world_ray_ex <- function(position, camera, width, height) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  get_screen_to_world_ray_ex_(position, camera, width, height)
}

#' Get World To Screen
#'
#' Get the screen space position for a 3d world space position.
#'
#' @param position A numeric vector of length 3.
#' @param camera A camera_3d.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetWorldToScreen(Vector3 position, Camera camera);
#' ```
#'
#' @family screen functions
#' @family world functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_world_to_screen(c(0, 5, 0), camera_3d(c(0, 10, 10)))
#'
#' @export
get_world_to_screen <- function(position, camera) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_world_to_screen_(position, camera)
}

#' Get World To Screen Ex
#'
#' Get size position for a 3d world space position.
#'
#' @param position A numeric vector of length 3.
#' @param camera A camera_3d.
#' @param width An integer.
#' @param height An integer.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height);
#' ```
#'
#' @family ex functions
#' @family world functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_world_to_screen_ex(c(0, 5, 0), camera_3d(c(0, 10, 10)), 800L, 450L)
#'
#' @export
get_world_to_screen_ex <- function(position, camera, width, height) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  get_world_to_screen_ex_(position, camera, width, height)
}

#' Get World To Screen 2d
#'
#' Get the screen space position for a 2d camera world space position.
#'
#' @param position A numeric vector of length 2.
#' @param camera A camera_2d.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);
#' ```
#'
#' @family 2d functions
#' @family world functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_world_to_screen_2d(c(100, 100), camera_2d(c(400, 300), c(0, 0)))
#'
#' @export
get_world_to_screen_2d <- function(position, camera) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_world_to_screen_2d_(position, camera)
}

#' Get Screen To World 2d
#'
#' Get the world space position for a 2d camera screen space position.
#'
#' @param position A numeric vector of length 2.
#' @param camera A camera_2d.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);
#' ```
#'
#' @family 2d functions
#' @family screen functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_screen_to_world_2d(c(100, 100), camera_2d(c(400, 300), c(0, 0)))
#'
#' @export
get_screen_to_world_2d <- function(position, camera) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_screen_to_world_2d_(position, camera)
}

#' Get Camera Matrix
#'
#' Get camera transform matrix (view matrix).
#'
#' @param camera A camera_3d.
#'
#' @return A 4x4 numeric matrix
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Matrix GetCameraMatrix(Camera camera);
#' ```
#'
#' @family matrix functions
#' @family camera functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_camera_matrix(camera_3d(c(0, 10, 10)))
#'
#' @export
get_camera_matrix <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_matrix_(camera)
}

#' Get Camera Matrix 2d
#'
#' Get camera 2d transform matrix.
#'
#' @param camera A camera_2d.
#'
#' @return A 4x4 numeric matrix
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Matrix GetCameraMatrix2D(Camera2D camera);
#' ```
#'
#' @family 2d functions
#' @family camera functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_camera_matrix_2d(camera_2d(c(400, 300), c(0, 0)))
#'
#' @export
get_camera_matrix_2d <- function(camera) {
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_matrix_2d_(camera)
}

#' Set Target Fps
#'
#' Set target FPS (maximum).
#'
#' @param fps An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTargetFPS(int fps);
#' ```
#'
#' @family fps functions
#' @family target functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_target_fps(60L)
#'
#' @export
set_target_fps <- function(fps = 60L) {
  if (!is_int(fps)) abort(paste0('`fps` must be an integer, not ', friendly_typeof(fps), '.'), call = NULL)
  set_target_fps_(fps)
}

#' Get Frame Time
#'
#' Get time in seconds for last frame drawn (delta time).
#'
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetFrameTime(void);
#' ```
#'
#' @family time functions
#' @family frame functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_frame_time()
#'
#' @export
get_frame_time <- function() {
  get_frame_time_()
}

#' Get Time
#'
#' Get elapsed time in seconds since InitWindow().
#'
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' double GetTime(void);
#' ```
#'
#' @family time functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_time()
#'
#' @export
get_time <- function() {
  get_time_()
}

#' Get Fps
#'
#' Get current FPS.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetFPS(void);
#' ```
#'
#' @family fps functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_fps()
#'
#' @export
get_fps <- function() {
  get_fps_()
}

#' Swap Screen Buffer
#'
#' Swap back buffer with front buffer (screen drawing).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SwapScreenBuffer(void);
#' ```
#'
#' @family buffer functions
#' @family screen functions
#'
#' @examplesIf FALSE
#' swap_screen_buffer()
#'
#' @export
swap_screen_buffer <- function() {
  swap_screen_buffer_()
}

#' Poll Input Events
#'
#' Register all input events.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PollInputEvents(void);
#' ```
#'
#' @family events functions
#' @family input functions
#'
#' @examplesIf FALSE
#' poll_input_events()
#'
#' @export
poll_input_events <- function() {
  poll_input_events_()
}

#' Wait Time
#'
#' Wait for some time (halt program execution).
#'
#' @param seconds A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void WaitTime(double seconds);
#' ```
#'
#' @family time functions
#'
#' @examplesIf FALSE
#' wait_time(0.0)
#'
#' @export
wait_time <- function(seconds) {
  if (!is_float(seconds)) abort(paste0('`seconds` must be a number, not ', friendly_typeof(seconds), '.'), call = NULL)
  wait_time_(seconds)
}

#' Set Random Seed
#'
#' Set the seed for the random number generator.
#'
#' @param seed A non-negative integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetRandomSeed(unsigned int seed);
#' ```
#'
#' @family seed functions
#' @family random functions
#' @family set functions
#'
#' @examples
#' set_random_seed(42L)
#'
#' @export
set_random_seed <- function(seed) {
  if (!is_unsigned_int(seed)) abort(paste0('`seed` must be a non-negative integer, not ', friendly_typeof(seed), '.'), call = NULL)
  set_random_seed_(seed)
}

#' Get Random Value
#'
#' Get a random value between min and max (both included).
#'
#' @param min An integer.
#' @param max An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetRandomValue(int min, int max);
#' ```
#'
#' @family value functions
#' @family random functions
#' @family get functions
#'
#' @examples
#' get_random_value(0L, 0L)
#'
#' @export
get_random_value <- function(min, max) {
  if (!is_int(min)) abort(paste0('`min` must be an integer, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_int(max)) abort(paste0('`max` must be an integer, not ', friendly_typeof(max), '.'), call = NULL)
  get_random_value_(min, max)
}

#' Take Screenshot
#'
#' Takes a screenshot of current screen (filename extension defines format).
#'
#' @param file_name A string.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void TakeScreenshot(const char * fileName);
#' ```
#'
#' @family screenshot functions
#'
#' @examplesIf FALSE
#' take_screenshot("file.png")
#'
#' @export
take_screenshot <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  take_screenshot_(file_name)
}

#' Set Config Flags
#'
#' Setup init configuration flags (view FLAGS).
#'
#' @param flags A non-negative integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetConfigFlags(unsigned int flags);
#' ```
#'
#' @family flags functions
#' @family config functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_config_flags(0L)
#'
#' @export
set_config_flags <- function(flags) {
  if (!is_unsigned_int(flags)) abort(paste0('`flags` must be a non-negative integer, not ', friendly_typeof(flags), '.'), call = NULL)
  set_config_flags_(flags)
}

#' Open Url
#'
#' Open URL with default system browser (if available).
#'
#' @param url A string.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void OpenURL(const char * url);
#' ```
#'
#' @family url functions
#'
#' @examplesIf FALSE
#' open_url("https://example.com")
#'
#' @export
open_url <- function(url) {
  if (!is_const_char_pointer(url)) abort(paste0('`url` must be a string, not ', friendly_typeof(url), '.'), call = NULL)
  open_url_(url)
}

#' Set Trace Log Level
#'
#' Set the current threshold (minimum) log level.
#'
#' @param log_level An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTraceLogLevel(int logLevel);
#' ```
#'
#' @family level functions
#' @family trace functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_trace_log_level(0L)
#'
#' @export
set_trace_log_level <- function(log_level) {
  if (!is_int(log_level)) abort(paste0('`log_level` must be an integer, not ', friendly_typeof(log_level), '.'), call = NULL)
  set_trace_log_level_(log_level)
}

#' Load File Text
#'
#' Load text data from file (read), returns a '\0' terminated string.
#'
#' @param file_name A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * LoadFileText(const char * fileName);
#' ```
#'
#' @family text functions
#' @family file functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_file_text("file.png")
#'
#' @export
load_file_text <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_file_text_(file_name)
}

#' Save File Text
#'
#' Save text data to file (write), string must be '\0' terminated, returns true on success.
#'
#' @param file_name A string.
#' @param text A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool SaveFileText(const char * fileName, const char * text);
#' ```
#'
#' @family text functions
#' @family file functions
#'
#' @examplesIf FALSE
#' save_file_text("file.png", "Hello")
#'
#' @export
save_file_text <- function(file_name, text) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  save_file_text_(file_name, text)
}

#' File Rename
#'
#' Rename file (if exists).
#'
#' @param file_name A string.
#' @param file_rename A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int FileRename(const char * fileName, const char * fileRename);
#' ```
#'
#' @family rename functions
#'
#' @examplesIf FALSE
#' file_rename("file.png", "text")
#'
#' @export
file_rename <- function(file_name, file_rename) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_const_char_pointer(file_rename)) abort(paste0('`file_rename` must be a string, not ', friendly_typeof(file_rename), '.'), call = NULL)
  file_rename_(file_name, file_rename)
}

#' File Remove
#'
#' Remove file (if exists).
#'
#' @param file_name A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int FileRemove(const char * fileName);
#' ```
#'
#' @family remove functions
#'
#' @examplesIf FALSE
#' file_remove("file.png")
#'
#' @export
file_remove <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  file_remove_(file_name)
}

#' File Copy
#'
#' Copy file from one path to another, dstPath created if it doesn't exist.
#'
#' @param src_path A string.
#' @param dst_path A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int FileCopy(const char * srcPath, const char * dstPath);
#' ```
#'
#' @family copy functions
#'
#' @examplesIf FALSE
#' file_copy("file.png", "file.png")
#'
#' @export
file_copy <- function(src_path, dst_path) {
  if (!is_const_char_pointer(src_path)) abort(paste0('`src_path` must be a string, not ', friendly_typeof(src_path), '.'), call = NULL)
  if (!is_const_char_pointer(dst_path)) abort(paste0('`dst_path` must be a string, not ', friendly_typeof(dst_path), '.'), call = NULL)
  file_copy_(src_path, dst_path)
}

#' File Move
#'
#' Move file from one directory to another, dstPath created if it doesn't exist.
#'
#' @param src_path A string.
#' @param dst_path A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int FileMove(const char * srcPath, const char * dstPath);
#' ```
#'
#' @family move functions
#'
#' @examplesIf FALSE
#' file_move("file.png", "file.png")
#'
#' @export
file_move <- function(src_path, dst_path) {
  if (!is_const_char_pointer(src_path)) abort(paste0('`src_path` must be a string, not ', friendly_typeof(src_path), '.'), call = NULL)
  if (!is_const_char_pointer(dst_path)) abort(paste0('`dst_path` must be a string, not ', friendly_typeof(dst_path), '.'), call = NULL)
  file_move_(src_path, dst_path)
}

#' File Text Replace
#'
#' Replace text in an existing file.
#'
#' @param file_name A string.
#' @param search A string.
#' @param replacement A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int FileTextReplace(const char * fileName, const char * search, const char * replacement);
#' ```
#'
#' @family replace functions
#' @family text functions
#'
#' @examplesIf FALSE
#' file_text_replace("file.png", "text", "text")
#'
#' @export
file_text_replace <- function(file_name, search, replacement) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_const_char_pointer(search)) abort(paste0('`search` must be a string, not ', friendly_typeof(search), '.'), call = NULL)
  if (!is_const_char_pointer(replacement)) abort(paste0('`replacement` must be a string, not ', friendly_typeof(replacement), '.'), call = NULL)
  file_text_replace_(file_name, search, replacement)
}

#' File Text Find Index
#'
#' Find text in existing file.
#'
#' @param file_name A string.
#' @param search A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int FileTextFindIndex(const char * fileName, const char * search);
#' ```
#'
#' @family index functions
#' @family text functions
#'
#' @examplesIf FALSE
#' file_text_find_index("file.png", "text")
#'
#' @export
file_text_find_index <- function(file_name, search) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_const_char_pointer(search)) abort(paste0('`search` must be a string, not ', friendly_typeof(search), '.'), call = NULL)
  file_text_find_index_(file_name, search)
}

#' File Exists
#'
#' Check if file exists.
#'
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool FileExists(const char * fileName);
#' ```
#'
#' @family exists functions
#'
#' @examplesIf FALSE
#' file_exists("file.png")
#'
#' @export
file_exists <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  file_exists_(file_name)
}

#' Directory Exists
#'
#' Check if a directory path exists.
#'
#' @param dir_path A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool DirectoryExists(const char * dirPath);
#' ```
#'
#' @family exists functions
#'
#' @examplesIf FALSE
#' directory_exists("file.png")
#'
#' @export
directory_exists <- function(dir_path) {
  if (!is_const_char_pointer(dir_path)) abort(paste0('`dir_path` must be a string, not ', friendly_typeof(dir_path), '.'), call = NULL)
  directory_exists_(dir_path)
}

#' Is File Extension
#'
#' Check file extension (recommended include point: .png, .wav).
#'
#' @param file_name A string.
#' @param ext A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsFileExtension(const char * fileName, const char * ext);
#' ```
#'
#' @family extension functions
#' @family file functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_file_extension("file.png", ".png")
#'
#' @export
is_file_extension <- function(file_name, ext) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_const_char_pointer(ext)) abort(paste0('`ext` must be a string, not ', friendly_typeof(ext), '.'), call = NULL)
  is_file_extension_(file_name, ext)
}

#' Get File Length
#'
#' Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h).
#'
#' @param file_name A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetFileLength(const char * fileName);
#' ```
#'
#' @family length functions
#' @family file functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_file_length("file.png")
#'
#' @export
get_file_length <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  get_file_length_(file_name)
}

#' Get File Mod Time
#'
#' Get file modification time (last write time).
#'
#' @param file_name A string.
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' long GetFileModTime(const char * fileName);
#' ```
#'
#' @family time functions
#' @family file functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_file_mod_time("file.png")
#'
#' @export
get_file_mod_time <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  get_file_mod_time_(file_name)
}

#' Get File Extension
#'
#' Get pointer to extension for a filename string (includes dot: '.png').
#'
#' @param file_name A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetFileExtension(const char * fileName);
#' ```
#'
#' @family extension functions
#' @family file functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_file_extension("file.png")
#'
#' @export
get_file_extension <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  get_file_extension_(file_name)
}

#' Get File Name
#'
#' Get pointer to filename for a path string.
#'
#' @param file_path A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetFileName(const char * filePath);
#' ```
#'
#' @family name functions
#' @family file functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_file_name("file.png")
#'
#' @export
get_file_name <- function(file_path) {
  if (!is_const_char_pointer(file_path)) abort(paste0('`file_path` must be a string, not ', friendly_typeof(file_path), '.'), call = NULL)
  get_file_name_(file_path)
}

#' Get File Name Without Ext
#'
#' Get filename string without extension (uses static string).
#'
#' @param file_path A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetFileNameWithoutExt(const char * filePath);
#' ```
#'
#' @family ext functions
#' @family file functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_file_name_without_ext("file.png")
#'
#' @export
get_file_name_without_ext <- function(file_path) {
  if (!is_const_char_pointer(file_path)) abort(paste0('`file_path` must be a string, not ', friendly_typeof(file_path), '.'), call = NULL)
  get_file_name_without_ext_(file_path)
}

#' Get Directory Path
#'
#' Get full path for a given fileName with path (uses static string).
#'
#' @param file_path A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetDirectoryPath(const char * filePath);
#' ```
#'
#' @family path functions
#' @family directory functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_directory_path("file.png")
#'
#' @export
get_directory_path <- function(file_path) {
  if (!is_const_char_pointer(file_path)) abort(paste0('`file_path` must be a string, not ', friendly_typeof(file_path), '.'), call = NULL)
  get_directory_path_(file_path)
}

#' Get Prev Directory Path
#'
#' Get previous directory path for a given path (uses static string).
#'
#' @param dir_path A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetPrevDirectoryPath(const char * dirPath);
#' ```
#'
#' @family path functions
#' @family prev functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_prev_directory_path("file.png")
#'
#' @export
get_prev_directory_path <- function(dir_path) {
  if (!is_const_char_pointer(dir_path)) abort(paste0('`dir_path` must be a string, not ', friendly_typeof(dir_path), '.'), call = NULL)
  get_prev_directory_path_(dir_path)
}

#' Get Working Directory
#'
#' Get current working directory (uses static string).
#'
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetWorkingDirectory(void);
#' ```
#'
#' @family directory functions
#' @family working functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_working_directory()
#'
#' @export
get_working_directory <- function() {
  get_working_directory_()
}

#' Get Application Directory
#'
#' Get the directory of the running application (uses static string).
#'
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetApplicationDirectory(void);
#' ```
#'
#' @family directory functions
#' @family application functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_application_directory()
#'
#' @export
get_application_directory <- function() {
  get_application_directory_()
}

#' Make Directory
#'
#' Create directories (including full path requested), returns 0 on success.
#'
#' @param dir_path A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int MakeDirectory(const char * dirPath);
#' ```
#'
#' @family directory functions
#'
#' @examplesIf FALSE
#' make_directory("file.png")
#'
#' @export
make_directory <- function(dir_path) {
  if (!is_const_char_pointer(dir_path)) abort(paste0('`dir_path` must be a string, not ', friendly_typeof(dir_path), '.'), call = NULL)
  make_directory_(dir_path)
}

#' Change Directory
#'
#' Change working directory, return true on success.
#'
#' @param dir_path A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ChangeDirectory(const char * dirPath);
#' ```
#'
#' @family directory functions
#'
#' @examplesIf FALSE
#' change_directory("file.png")
#'
#' @export
change_directory <- function(dir_path) {
  if (!is_const_char_pointer(dir_path)) abort(paste0('`dir_path` must be a string, not ', friendly_typeof(dir_path), '.'), call = NULL)
  change_directory_(dir_path)
}

#' Is Path File
#'
#' Check if a given path is a file or a directory.
#'
#' @param path A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsPathFile(const char * path);
#' ```
#'
#' @family file functions
#' @family path functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_path_file("file.png")
#'
#' @export
is_path_file <- function(path) {
  if (!is_const_char_pointer(path)) abort(paste0('`path` must be a string, not ', friendly_typeof(path), '.'), call = NULL)
  is_path_file_(path)
}

#' Is File Name Valid
#'
#' Check if fileName is valid for the platform/OS.
#'
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsFileNameValid(const char * fileName);
#' ```
#'
#' @family valid functions
#' @family file functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_file_name_valid("file.png")
#'
#' @export
is_file_name_valid <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  is_file_name_valid_(file_name)
}

#' Is File Dropped
#'
#' Check if a file has been dropped into window.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsFileDropped(void);
#' ```
#'
#' @family dropped functions
#' @family file functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_file_dropped()
#'
#' @export
is_file_dropped <- function() {
  is_file_dropped_()
}

#' Get Directory File Count
#'
#' Get the file count in a directory.
#'
#' @param dir_path A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' unsigned int GetDirectoryFileCount(const char * dirPath);
#' ```
#'
#' @family count functions
#' @family directory functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_directory_file_count("file.png")
#'
#' @export
get_directory_file_count <- function(dir_path) {
  if (!is_const_char_pointer(dir_path)) abort(paste0('`dir_path` must be a string, not ', friendly_typeof(dir_path), '.'), call = NULL)
  get_directory_file_count_(dir_path)
}

#' Get Directory File Count Ex
#'
#' Get the file count in a directory with extension filtering and recursive directory scan. Use 'DIR' in the filter string to include directories in the result.
#'
#' @param base_path A string.
#' @param filter A string.
#' @param scan_subdirs A logical.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' unsigned int GetDirectoryFileCountEx(const char * basePath, const char * filter, bool scanSubdirs);
#' ```
#'
#' @family ex functions
#' @family directory functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_directory_file_count_ex("file.png", "text", TRUE)
#'
#' @export
get_directory_file_count_ex <- function(base_path, filter, scan_subdirs) {
  if (!is_const_char_pointer(base_path)) abort(paste0('`base_path` must be a string, not ', friendly_typeof(base_path), '.'), call = NULL)
  if (!is_const_char_pointer(filter)) abort(paste0('`filter` must be a string, not ', friendly_typeof(filter), '.'), call = NULL)
  if (!is_bool(scan_subdirs)) abort(paste0('`scan_subdirs` must be a logical, not ', friendly_typeof(scan_subdirs), '.'), call = NULL)
  get_directory_file_count_ex_(base_path, filter, scan_subdirs)
}

#' Set Automation Event Base Frame
#'
#' Set automation event internal base frame to start recording.
#'
#' @param frame An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAutomationEventBaseFrame(int frame);
#' ```
#'
#' @family frame functions
#' @family automation functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_automation_event_base_frame(0L)
#'
#' @export
set_automation_event_base_frame <- function(frame) {
  if (!is_int(frame)) abort(paste0('`frame` must be an integer, not ', friendly_typeof(frame), '.'), call = NULL)
  set_automation_event_base_frame_(frame)
}

#' Start Automation Event Recording
#'
#' Start recording automation events (AutomationEventList must be set).
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StartAutomationEventRecording(void);
#' ```
#'
#' @family recording functions
#' @family automation functions
#'
#' @examplesIf FALSE
#' start_automation_event_recording()
#'
#' @export
start_automation_event_recording <- function() {
  start_automation_event_recording_()
}

#' Stop Automation Event Recording
#'
#' Stop recording automation events.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopAutomationEventRecording(void);
#' ```
#'
#' @family recording functions
#' @family automation functions
#' @family stop functions
#'
#' @examplesIf FALSE
#' stop_automation_event_recording()
#'
#' @export
stop_automation_event_recording <- function() {
  stop_automation_event_recording_()
}

#' Is Key Pressed
#'
#' Check if a key has been pressed once.
#'
#' @param key An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsKeyPressed(int key);
#' ```
#'
#' @family pressed functions
#' @family key functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_key_pressed(0L)
#'
#' @export
is_key_pressed <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_pressed_(key)
}

#' Is Key Pressed Repeat
#'
#' Check if a key has been pressed again.
#'
#' @param key An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsKeyPressedRepeat(int key);
#' ```
#'
#' @family repeat functions
#' @family key functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_key_pressed_repeat(0L)
#'
#' @export
is_key_pressed_repeat <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_pressed_repeat_(key)
}

#' Is Key Down
#'
#' Check if a key is being pressed.
#'
#' @param key An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsKeyDown(int key);
#' ```
#'
#' @family down functions
#' @family key functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_key_down(0L)
#'
#' @export
is_key_down <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_down_(key)
}

#' Is Key Released
#'
#' Check if a key has been released once.
#'
#' @param key An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsKeyReleased(int key);
#' ```
#'
#' @family released functions
#' @family key functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_key_released(0L)
#'
#' @export
is_key_released <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_released_(key)
}

#' Is Key Up
#'
#' Check if a key is NOT being pressed.
#'
#' @param key An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsKeyUp(int key);
#' ```
#'
#' @family up functions
#' @family key functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_key_up(0L)
#'
#' @export
is_key_up <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_up_(key)
}

#' Get Key Pressed
#'
#' Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetKeyPressed(void);
#' ```
#'
#' @family pressed functions
#' @family key functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_key_pressed()
#'
#' @export
get_key_pressed <- function() {
  get_key_pressed_()
}

#' Get Char Pressed
#'
#' Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetCharPressed(void);
#' ```
#'
#' @family pressed functions
#' @family char functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_char_pressed()
#'
#' @export
get_char_pressed <- function() {
  get_char_pressed_()
}

#' Get Key Name
#'
#' Get name of a QWERTY key on the current keyboard layout (eg returns string 'q' for KEY_A on an AZERTY keyboard).
#'
#' @param key An integer.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetKeyName(int key);
#' ```
#'
#' @family name functions
#' @family key functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_key_name(0L)
#'
#' @export
get_key_name <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  get_key_name_(key)
}

#' Set Exit Key
#'
#' Set a custom key to exit program (default is ESC).
#'
#' @param key An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetExitKey(int key);
#' ```
#'
#' @family key functions
#' @family exit functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_exit_key(0L)
#'
#' @export
set_exit_key <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  set_exit_key_(key)
}

#' Is Gamepad Available
#'
#' Check if a gamepad is available.
#'
#' @param gamepad An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsGamepadAvailable(int gamepad);
#' ```
#'
#' @family available functions
#' @family gamepad functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_gamepad_available(0L)
#'
#' @export
is_gamepad_available <- function(gamepad) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  is_gamepad_available_(gamepad)
}

#' Get Gamepad Name
#'
#' Get gamepad internal name id.
#'
#' @param gamepad An integer.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * GetGamepadName(int gamepad);
#' ```
#'
#' @family name functions
#' @family gamepad functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gamepad_name(0L)
#'
#' @export
get_gamepad_name <- function(gamepad) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  get_gamepad_name_(gamepad)
}

#' Is Gamepad Button Pressed
#'
#' Check if a gamepad button has been pressed once.
#'
#' @param gamepad An integer.
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsGamepadButtonPressed(int gamepad, int button);
#' ```
#'
#' @family pressed functions
#' @family gamepad functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_gamepad_button_pressed(0L, 0L)
#'
#' @export
is_gamepad_button_pressed <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_pressed_(gamepad, button)
}

#' Is Gamepad Button Down
#'
#' Check if a gamepad button is being pressed.
#'
#' @param gamepad An integer.
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsGamepadButtonDown(int gamepad, int button);
#' ```
#'
#' @family down functions
#' @family gamepad functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_gamepad_button_down(0L, 0L)
#'
#' @export
is_gamepad_button_down <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_down_(gamepad, button)
}

#' Is Gamepad Button Released
#'
#' Check if a gamepad button has been released once.
#'
#' @param gamepad An integer.
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsGamepadButtonReleased(int gamepad, int button);
#' ```
#'
#' @family released functions
#' @family gamepad functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_gamepad_button_released(0L, 0L)
#'
#' @export
is_gamepad_button_released <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_released_(gamepad, button)
}

#' Is Gamepad Button Up
#'
#' Check if a gamepad button is NOT being pressed.
#'
#' @param gamepad An integer.
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsGamepadButtonUp(int gamepad, int button);
#' ```
#'
#' @family up functions
#' @family gamepad functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_gamepad_button_up(0L, 0L)
#'
#' @export
is_gamepad_button_up <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_up_(gamepad, button)
}

#' Get Gamepad Button Pressed
#'
#' Get the last gamepad button pressed.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetGamepadButtonPressed(void);
#' ```
#'
#' @family pressed functions
#' @family gamepad functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gamepad_button_pressed()
#'
#' @export
get_gamepad_button_pressed <- function() {
  get_gamepad_button_pressed_()
}

#' Get Gamepad Axis Count
#'
#' Get axis count for a gamepad.
#'
#' @param gamepad An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetGamepadAxisCount(int gamepad);
#' ```
#'
#' @family count functions
#' @family gamepad functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gamepad_axis_count(0L)
#'
#' @export
get_gamepad_axis_count <- function(gamepad) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  get_gamepad_axis_count_(gamepad)
}

#' Get Gamepad Axis Movement
#'
#' Get movement value for a gamepad axis.
#'
#' @param gamepad An integer.
#' @param axis An integer.
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetGamepadAxisMovement(int gamepad, int axis);
#' ```
#'
#' @family movement functions
#' @family gamepad functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gamepad_axis_movement(0L, 0L)
#'
#' @export
get_gamepad_axis_movement <- function(gamepad, axis) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(axis)) abort(paste0('`axis` must be an integer, not ', friendly_typeof(axis), '.'), call = NULL)
  get_gamepad_axis_movement_(gamepad, axis)
}

#' Set Gamepad Mappings
#'
#' Set internal gamepad mappings (SDL_GameControllerDB).
#'
#' @param mappings A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int SetGamepadMappings(const char * mappings);
#' ```
#'
#' @family mappings functions
#' @family gamepad functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_gamepad_mappings("text")
#'
#' @export
set_gamepad_mappings <- function(mappings) {
  if (!is_const_char_pointer(mappings)) abort(paste0('`mappings` must be a string, not ', friendly_typeof(mappings), '.'), call = NULL)
  set_gamepad_mappings_(mappings)
}

#' Set Gamepad Vibration
#'
#' Set gamepad vibration for both motors (duration in seconds).
#'
#' @param gamepad An integer.
#' @param left_motor A number.
#' @param right_motor A number.
#' @param duration A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetGamepadVibration(int gamepad, float leftMotor, float rightMotor, float duration);
#' ```
#'
#' @family vibration functions
#' @family gamepad functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_gamepad_vibration(0L, 0.0, 0.0, 0.0)
#'
#' @export
set_gamepad_vibration <- function(gamepad, left_motor, right_motor, duration) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_float(left_motor)) abort(paste0('`left_motor` must be a number, not ', friendly_typeof(left_motor), '.'), call = NULL)
  if (!is_float(right_motor)) abort(paste0('`right_motor` must be a number, not ', friendly_typeof(right_motor), '.'), call = NULL)
  if (!is_float(duration)) abort(paste0('`duration` must be a number, not ', friendly_typeof(duration), '.'), call = NULL)
  set_gamepad_vibration_(gamepad, left_motor, right_motor, duration)
}

#' Is Mouse Button Pressed
#'
#' Check if a mouse button has been pressed once.
#'
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsMouseButtonPressed(int button);
#' ```
#'
#' @family pressed functions
#' @family mouse functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_mouse_button_pressed(0L)
#'
#' @export
is_mouse_button_pressed <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_pressed_(button)
}

#' Is Mouse Button Down
#'
#' Check if a mouse button is being pressed.
#'
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsMouseButtonDown(int button);
#' ```
#'
#' @family down functions
#' @family mouse functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_mouse_button_down(0L)
#'
#' @export
is_mouse_button_down <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_down_(button)
}

#' Is Mouse Button Released
#'
#' Check if a mouse button has been released once.
#'
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsMouseButtonReleased(int button);
#' ```
#'
#' @family released functions
#' @family mouse functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_mouse_button_released(0L)
#'
#' @export
is_mouse_button_released <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_released_(button)
}

#' Is Mouse Button Up
#'
#' Check if a mouse button is NOT being pressed.
#'
#' @param button An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsMouseButtonUp(int button);
#' ```
#'
#' @family up functions
#' @family mouse functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_mouse_button_up(0L)
#'
#' @export
is_mouse_button_up <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_up_(button)
}

#' Get Mouse X
#'
#' Get mouse position X.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMouseX(void);
#' ```
#'
#' @family x functions
#' @family mouse functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_mouse_x()
#'
#' @export
get_mouse_x <- function() {
  get_mouse_x_()
}

#' Get Mouse Y
#'
#' Get mouse position Y.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetMouseY(void);
#' ```
#'
#' @family y functions
#' @family mouse functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_mouse_y()
#'
#' @export
get_mouse_y <- function() {
  get_mouse_y_()
}

#' Get Mouse Position
#'
#' Get mouse position XY.
#'
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetMousePosition(void);
#' ```
#'
#' @family position functions
#' @family mouse functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_mouse_position()
#'
#' @export
get_mouse_position <- function() {
  get_mouse_position_()
}

#' Get Mouse Delta
#'
#' Get mouse delta between frames.
#'
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetMouseDelta(void);
#' ```
#'
#' @family delta functions
#' @family mouse functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_mouse_delta()
#'
#' @export
get_mouse_delta <- function() {
  get_mouse_delta_()
}

#' Set Mouse Position
#'
#' Set mouse position XY.
#'
#' @param x An integer.
#' @param y An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMousePosition(int x, int y);
#' ```
#'
#' @family position functions
#' @family mouse functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_mouse_position(100L, 100L)
#'
#' @export
set_mouse_position <- function(x, y) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  set_mouse_position_(x, y)
}

#' Set Mouse Offset
#'
#' Set mouse offset.
#'
#' @param offset_x An integer.
#' @param offset_y An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMouseOffset(int offsetX, int offsetY);
#' ```
#'
#' @family offset functions
#' @family mouse functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_mouse_offset(0L, 0L)
#'
#' @export
set_mouse_offset <- function(offset_x, offset_y) {
  if (!is_int(offset_x)) abort(paste0('`offset_x` must be an integer, not ', friendly_typeof(offset_x), '.'), call = NULL)
  if (!is_int(offset_y)) abort(paste0('`offset_y` must be an integer, not ', friendly_typeof(offset_y), '.'), call = NULL)
  set_mouse_offset_(offset_x, offset_y)
}

#' Set Mouse Scale
#'
#' Set mouse scaling.
#'
#' @param scale_x A number.
#' @param scale_y A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMouseScale(float scaleX, float scaleY);
#' ```
#'
#' @family scale functions
#' @family mouse functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_mouse_scale(1.0, 1.0)
#'
#' @export
set_mouse_scale <- function(scale_x, scale_y) {
  if (!is_float(scale_x)) abort(paste0('`scale_x` must be a number, not ', friendly_typeof(scale_x), '.'), call = NULL)
  if (!is_float(scale_y)) abort(paste0('`scale_y` must be a number, not ', friendly_typeof(scale_y), '.'), call = NULL)
  set_mouse_scale_(scale_x, scale_y)
}

#' Get Mouse Wheel Move
#'
#' Get mouse wheel movement for X or Y, whichever is larger.
#'
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetMouseWheelMove(void);
#' ```
#'
#' @family move functions
#' @family mouse functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_mouse_wheel_move()
#'
#' @export
get_mouse_wheel_move <- function() {
  get_mouse_wheel_move_()
}

#' Get Mouse Wheel Move V
#'
#' Get mouse wheel movement for both X and Y.
#'
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetMouseWheelMoveV(void);
#' ```
#'
#' @family v functions
#' @family mouse functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_mouse_wheel_move_v()
#'
#' @export
get_mouse_wheel_move_v <- function() {
  get_mouse_wheel_move_v_()
}

#' Set Mouse Cursor
#'
#' Set mouse cursor.
#'
#' @param cursor An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMouseCursor(int cursor);
#' ```
#'
#' @family cursor functions
#' @family mouse functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_mouse_cursor(0L)
#'
#' @export
set_mouse_cursor <- function(cursor) {
  if (!is_int(cursor)) abort(paste0('`cursor` must be an integer, not ', friendly_typeof(cursor), '.'), call = NULL)
  set_mouse_cursor_(cursor)
}

#' Get Touch X
#'
#' Get touch position X for touch point 0 (relative to screen size).
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetTouchX(void);
#' ```
#'
#' @family x functions
#' @family touch functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_touch_x()
#'
#' @export
get_touch_x <- function() {
  get_touch_x_()
}

#' Get Touch Y
#'
#' Get touch position Y for touch point 0 (relative to screen size).
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetTouchY(void);
#' ```
#'
#' @family y functions
#' @family touch functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_touch_y()
#'
#' @export
get_touch_y <- function() {
  get_touch_y_()
}

#' Get Touch Position
#'
#' Get touch position XY for a touch point index (relative to screen size).
#'
#' @param index An integer.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetTouchPosition(int index);
#' ```
#'
#' @family position functions
#' @family touch functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_touch_position(0L)
#'
#' @export
get_touch_position <- function(index) {
  if (!is_int(index)) abort(paste0('`index` must be an integer, not ', friendly_typeof(index), '.'), call = NULL)
  get_touch_position_(index)
}

#' Get Touch Point Id
#'
#' Get touch point identifier for given index.
#'
#' @param index An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetTouchPointId(int index);
#' ```
#'
#' @family id functions
#' @family touch functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_touch_point_id(0L)
#'
#' @export
get_touch_point_id <- function(index) {
  if (!is_int(index)) abort(paste0('`index` must be an integer, not ', friendly_typeof(index), '.'), call = NULL)
  get_touch_point_id_(index)
}

#' Get Touch Point Count
#'
#' Get number of touch points.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetTouchPointCount(void);
#' ```
#'
#' @family count functions
#' @family touch functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_touch_point_count()
#'
#' @export
get_touch_point_count <- function() {
  get_touch_point_count_()
}

#' Set Gestures Enabled
#'
#' Enable a set of gestures using flags.
#'
#' @param flags A non-negative integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetGesturesEnabled(unsigned int flags);
#' ```
#'
#' @family enabled functions
#' @family gestures functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_gestures_enabled(0L)
#'
#' @export
set_gestures_enabled <- function(flags) {
  if (!is_unsigned_int(flags)) abort(paste0('`flags` must be a non-negative integer, not ', friendly_typeof(flags), '.'), call = NULL)
  set_gestures_enabled_(flags)
}

#' Is Gesture Detected
#'
#' Check if a gesture have been detected.
#'
#' @param gesture A non-negative integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsGestureDetected(unsigned int gesture);
#' ```
#'
#' @family detected functions
#' @family gesture functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_gesture_detected(0L)
#'
#' @export
is_gesture_detected <- function(gesture) {
  if (!is_unsigned_int(gesture)) abort(paste0('`gesture` must be a non-negative integer, not ', friendly_typeof(gesture), '.'), call = NULL)
  is_gesture_detected_(gesture)
}

#' Get Gesture Detected
#'
#' Get latest detected gesture.
#'
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetGestureDetected(void);
#' ```
#'
#' @family detected functions
#' @family gesture functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gesture_detected()
#'
#' @export
get_gesture_detected <- function() {
  get_gesture_detected_()
}

#' Get Gesture Hold Duration
#'
#' Get gesture hold time in seconds.
#'
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetGestureHoldDuration(void);
#' ```
#'
#' @family duration functions
#' @family gesture functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gesture_hold_duration()
#'
#' @export
get_gesture_hold_duration <- function() {
  get_gesture_hold_duration_()
}

#' Get Gesture Drag Vector
#'
#' Get gesture drag vector.
#'
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetGestureDragVector(void);
#' ```
#'
#' @family vector functions
#' @family gesture functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gesture_drag_vector()
#'
#' @export
get_gesture_drag_vector <- function() {
  get_gesture_drag_vector_()
}

#' Get Gesture Drag Angle
#'
#' Get gesture drag angle.
#'
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetGestureDragAngle(void);
#' ```
#'
#' @family angle functions
#' @family gesture functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gesture_drag_angle()
#'
#' @export
get_gesture_drag_angle <- function() {
  get_gesture_drag_angle_()
}

#' Get Gesture Pinch Vector
#'
#' Get gesture pinch delta.
#'
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetGesturePinchVector(void);
#' ```
#'
#' @family vector functions
#' @family gesture functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gesture_pinch_vector()
#'
#' @export
get_gesture_pinch_vector <- function() {
  get_gesture_pinch_vector_()
}

#' Get Gesture Pinch Angle
#'
#' Get gesture pinch angle.
#'
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetGesturePinchAngle(void);
#' ```
#'
#' @family angle functions
#' @family gesture functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_gesture_pinch_angle()
#'
#' @export
get_gesture_pinch_angle <- function() {
  get_gesture_pinch_angle_()
}

#' Set Shapes Texture
#'
#' Set texture and rectangle to be used on shapes drawing.
#'
#' @param texture A texture.
#' @param source A rectangle.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetShapesTexture(Texture2D texture, Rectangle source);
#' ```
#'
#' @family texture functions
#' @family shapes functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_shapes_texture(load_texture("file.png"), rectangle(10, 10, 200, 100))
#'
#' @export
set_shapes_texture <- function(texture, source) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  set_shapes_texture_(texture, source)
}

#' Get Shapes Texture
#'
#' Get texture that is used for shapes drawing.
#'
#'
#' @return A texture
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Texture2D GetShapesTexture(void);
#' ```
#'
#' @family texture functions
#' @family shapes functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_shapes_texture()
#'
#' @export
get_shapes_texture <- function() {
  get_shapes_texture_()
}

#' Get Shapes Texture Rectangle
#'
#' Get texture source rectangle that is used for shapes drawing.
#'
#'
#' @return A rectangle
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Rectangle GetShapesTextureRectangle(void);
#' ```
#'
#' @family rectangle functions
#' @family shapes functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_shapes_texture_rectangle()
#'
#' @export
get_shapes_texture_rectangle <- function() {
  get_shapes_texture_rectangle_()
}

#' Draw Pixel
#'
#' Draw a pixel using geometry \\[Can be slow, use with care\\].
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPixel(int posX, int posY, Color color);
#' ```
#'
#' @family pixel functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_pixel(100L, 100L, "red"))
#'
#' @export
draw_pixel <- function(pos_x, pos_y, color) {
  lens <- c(length(pos_x), length(pos_y), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_pixel_vectorized_(pos_x, pos_y, color))
  }
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_pixel_(pos_x, pos_y, color)
}

#' Draw Pixel V
#'
#' Draw a pixel using geometry (Vector version) \\[Can be slow, use with care\\].
#'
#' @param position A numeric vector of length 2.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPixelV(Vector2 position, Color color);
#' ```
#'
#' @family v functions
#' @family pixel functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_pixel_v(c(200, 150), "red"))
#'
#' @export
draw_pixel_v <- function(position, color) {
  lens <- c(.vec_len(position), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 2)
    color <- .color_recycle(color, n)
    return(draw_pixel_v_vectorized_(position, color))
  }
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_pixel_v_(position, color)
}

#' Draw Line
#'
#' Draw a line.
#'
#' @param start_pos_x An integer.
#' @param start_pos_y An integer.
#' @param end_pos_x An integer.
#' @param end_pos_y An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);
#' ```
#'
#' @family line functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_line(50L, 250L, 350L, 50L, "red"))
#'
#' @export
draw_line <- function(start_pos_x, start_pos_y, end_pos_x, end_pos_y, color) {
  lens <- c(length(start_pos_x), length(start_pos_y), length(end_pos_x), length(end_pos_y), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos_x <- rep(start_pos_x, length.out = n)
    start_pos_y <- rep(start_pos_y, length.out = n)
    end_pos_x <- rep(end_pos_x, length.out = n)
    end_pos_y <- rep(end_pos_y, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_line_vectorized_(start_pos_x, start_pos_y, end_pos_x, end_pos_y, color))
  }
  if (!is_int(start_pos_x)) abort(paste0('`start_pos_x` must be an integer, not ', friendly_typeof(start_pos_x), '.'), call = NULL)
  if (!is_int(start_pos_y)) abort(paste0('`start_pos_y` must be an integer, not ', friendly_typeof(start_pos_y), '.'), call = NULL)
  if (!is_int(end_pos_x)) abort(paste0('`end_pos_x` must be an integer, not ', friendly_typeof(end_pos_x), '.'), call = NULL)
  if (!is_int(end_pos_y)) abort(paste0('`end_pos_y` must be an integer, not ', friendly_typeof(end_pos_y), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_(start_pos_x, start_pos_y, end_pos_x, end_pos_y, color)
}

#' Draw Line V
#'
#' Draw a line (using gl lines).
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);
#' ```
#'
#' @family v functions
#' @family line functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_line_v(c(200, 150), c(200, 150), "red"))
#'
#' @export
draw_line_v <- function(start_pos, end_pos, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 2)
    end_pos <- .vec_recycle(end_pos, n, 2)
    color <- .color_recycle(color, n)
    return(draw_line_v_vectorized_(start_pos, end_pos, color))
  }
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_v_(start_pos, end_pos, color)
}

#' Draw Line Ex
#'
#' Draw a line (using triangles/quads).
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);
#' ```
#'
#' @family ex functions
#' @family line functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_line_ex(c(200, 150), c(200, 150), 3.0, "red"))
#'
#' @export
draw_line_ex <- function(start_pos, end_pos, thick, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), length(thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 2)
    end_pos <- .vec_recycle(end_pos, n, 2)
    thick <- rep(thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_line_ex_vectorized_(start_pos, end_pos, thick, color))
  }
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_ex_(start_pos, end_pos, thick, color)
}

#' Draw Line Bezier
#'
#' Draw line segment cubic-bezier in-out interpolation.
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);
#' ```
#'
#' @family bezier functions
#' @family line functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_line_bezier(c(200, 150), c(200, 150), 3.0, "red"))
#'
#' @export
draw_line_bezier <- function(start_pos, end_pos, thick, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), length(thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 2)
    end_pos <- .vec_recycle(end_pos, n, 2)
    thick <- rep(thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_line_bezier_vectorized_(start_pos, end_pos, thick, color))
  }
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_bezier_(start_pos, end_pos, thick, color)
}

#' Draw Line Dashed
#'
#' Draw a dashed line.
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param dash_size An integer.
#' @param space_size An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineDashed(Vector2 startPos, Vector2 endPos, int dashSize, int spaceSize, Color color);
#' ```
#'
#' @family dashed functions
#' @family line functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_line_dashed(c(200, 150), c(200, 150), 0L, 0L, "red"))
#'
#' @export
draw_line_dashed <- function(start_pos, end_pos, dash_size, space_size, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), length(dash_size), length(space_size), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 2)
    end_pos <- .vec_recycle(end_pos, n, 2)
    dash_size <- rep(dash_size, length.out = n)
    space_size <- rep(space_size, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_line_dashed_vectorized_(start_pos, end_pos, dash_size, space_size, color))
  }
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_int(dash_size)) abort(paste0('`dash_size` must be an integer, not ', friendly_typeof(dash_size), '.'), call = NULL)
  if (!is_int(space_size)) abort(paste0('`space_size` must be an integer, not ', friendly_typeof(space_size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_dashed_(start_pos, end_pos, dash_size, space_size, color)
}

#' Draw Circle
#'
#' Draw a color-filled circle.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircle(int centerX, int centerY, float radius, Color color);
#' ```
#'
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() {
#'   draw_circle(200L, 150L, 80.0, "yellow")
#'   draw_circle(210L, 160L, 80.0, color_alpha("white", 0.3))
#' })
#'
#' @export
draw_circle <- function(center_x, center_y, radius, color) {
  lens <- c(length(center_x), length(center_y), length(radius), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_x <- rep(center_x, length.out = n)
    center_y <- rep(center_y, length.out = n)
    radius <- rep(radius, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_circle_vectorized_(center_x, center_y, radius, color))
  }
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_(center_x, center_y, radius, color)
}

#' Draw Circle V
#'
#' Draw a color-filled circle (Vector version).
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleV(Vector2 center, float radius, Color color);
#' ```
#'
#' @family v functions
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_circle_v(c(200, 150), 80.0, "red"))
#'
#' @export
draw_circle_v <- function(center, radius, color) {
  lens <- c(.vec_len(center), length(radius), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    radius <- rep(radius, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_circle_v_vectorized_(center, radius, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_v_(center, radius, color)
}

#' Draw Circle Gradient
#'
#' Draw a gradient-filled circle.
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param inner A color.
#' @param outer A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleGradient(Vector2 center, float radius, Color inner, Color outer);
#' ```
#'
#' @family gradient functions
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_circle_gradient(c(200, 150), 80.0, "red", "red"))
#'
#' @export
draw_circle_gradient <- function(center, radius, inner, outer) {
  lens <- c(.vec_len(center), length(radius), .color_len(inner), .color_len(outer))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    radius <- rep(radius, length.out = n)
    inner <- .color_recycle(inner, n)
    outer <- .color_recycle(outer, n)
    return(draw_circle_gradient_vectorized_(center, radius, inner, outer))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(inner)) abort(paste0('`inner` must be a color, not ', friendly_typeof(inner), '.'), call = NULL)
  if (!is_color(outer)) abort(paste0('`outer` must be a color, not ', friendly_typeof(outer), '.'), call = NULL)
  draw_circle_gradient_(center, radius, inner, outer)
}

#' Draw Circle Sector
#'
#' Draw a piece of a circle.
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param start_angle A number.
#' @param end_angle A number.
#' @param segments An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family sector functions
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_circle_sector(c(200, 150), 80.0, 0.0, 270.0, 36L, "red"))
#'
#' @export
draw_circle_sector <- function(center, radius, start_angle, end_angle, segments, color) {
  lens <- c(.vec_len(center), length(radius), length(start_angle), length(end_angle), length(segments), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    radius <- rep(radius, length.out = n)
    start_angle <- rep(start_angle, length.out = n)
    end_angle <- rep(end_angle, length.out = n)
    segments <- rep(segments, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_circle_sector_vectorized_(center, radius, start_angle, end_angle, segments, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(start_angle)) abort(paste0('`start_angle` must be a number, not ', friendly_typeof(start_angle), '.'), call = NULL)
  if (!is_float(end_angle)) abort(paste0('`end_angle` must be a number, not ', friendly_typeof(end_angle), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_sector_(center, radius, start_angle, end_angle, segments, color)
}

#' Draw Circle Sector Lines
#'
#' Draw circle sector outline.
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param start_angle A number.
#' @param end_angle A number.
#' @param segments An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family lines functions
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_circle_sector_lines(c(200, 150), 80.0, 0.0, 270.0, 36L, "red"))
#'
#' @export
draw_circle_sector_lines <- function(center, radius, start_angle, end_angle, segments, color) {
  lens <- c(.vec_len(center), length(radius), length(start_angle), length(end_angle), length(segments), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    radius <- rep(radius, length.out = n)
    start_angle <- rep(start_angle, length.out = n)
    end_angle <- rep(end_angle, length.out = n)
    segments <- rep(segments, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_circle_sector_lines_vectorized_(center, radius, start_angle, end_angle, segments, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(start_angle)) abort(paste0('`start_angle` must be a number, not ', friendly_typeof(start_angle), '.'), call = NULL)
  if (!is_float(end_angle)) abort(paste0('`end_angle` must be a number, not ', friendly_typeof(end_angle), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_sector_lines_(center, radius, start_angle, end_angle, segments, color)
}

#' Draw Circle Lines
#'
#' Draw circle outline.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleLines(int centerX, int centerY, float radius, Color color);
#' ```
#'
#' @family lines functions
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_circle_lines(200L, 150L, 80.0, "red"))
#'
#' @export
draw_circle_lines <- function(center_x, center_y, radius, color) {
  lens <- c(length(center_x), length(center_y), length(radius), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_x <- rep(center_x, length.out = n)
    center_y <- rep(center_y, length.out = n)
    radius <- rep(radius, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_circle_lines_vectorized_(center_x, center_y, radius, color))
  }
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_lines_(center_x, center_y, radius, color)
}

#' Draw Circle Lines V
#'
#' Draw circle outline (Vector version).
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleLinesV(Vector2 center, float radius, Color color);
#' ```
#'
#' @family v functions
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_circle_lines_v(c(200, 150), 80.0, "red"))
#'
#' @export
draw_circle_lines_v <- function(center, radius, color) {
  lens <- c(.vec_len(center), length(radius), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    radius <- rep(radius, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_circle_lines_v_vectorized_(center, radius, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_lines_v_(center, radius, color)
}

#' Draw Ellipse
#'
#' Draw ellipse.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius_h A number.
#' @param radius_v A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);
#' ```
#'
#' @family ellipse functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_ellipse(200L, 150L, 80.0, 80.0, "red"))
#'
#' @export
draw_ellipse <- function(center_x, center_y, radius_h, radius_v, color) {
  lens <- c(length(center_x), length(center_y), length(radius_h), length(radius_v), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_x <- rep(center_x, length.out = n)
    center_y <- rep(center_y, length.out = n)
    radius_h <- rep(radius_h, length.out = n)
    radius_v <- rep(radius_v, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_ellipse_vectorized_(center_x, center_y, radius_h, radius_v, color))
  }
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_float(radius_h)) abort(paste0('`radius_h` must be a number, not ', friendly_typeof(radius_h), '.'), call = NULL)
  if (!is_float(radius_v)) abort(paste0('`radius_v` must be a number, not ', friendly_typeof(radius_v), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ellipse_(center_x, center_y, radius_h, radius_v, color)
}

#' Draw Ellipse V
#'
#' Draw ellipse (Vector version).
#'
#' @param center A numeric vector of length 2.
#' @param radius_h A number.
#' @param radius_v A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawEllipseV(Vector2 center, float radiusH, float radiusV, Color color);
#' ```
#'
#' @family v functions
#' @family ellipse functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_ellipse_v(c(200, 150), 80.0, 80.0, "red"))
#'
#' @export
draw_ellipse_v <- function(center, radius_h, radius_v, color) {
  lens <- c(.vec_len(center), length(radius_h), length(radius_v), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    radius_h <- rep(radius_h, length.out = n)
    radius_v <- rep(radius_v, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_ellipse_v_vectorized_(center, radius_h, radius_v, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius_h)) abort(paste0('`radius_h` must be a number, not ', friendly_typeof(radius_h), '.'), call = NULL)
  if (!is_float(radius_v)) abort(paste0('`radius_v` must be a number, not ', friendly_typeof(radius_v), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ellipse_v_(center, radius_h, radius_v, color)
}

#' Draw Ellipse Lines
#'
#' Draw ellipse outline.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius_h A number.
#' @param radius_v A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);
#' ```
#'
#' @family lines functions
#' @family ellipse functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_ellipse_lines(200L, 150L, 80.0, 80.0, "red"))
#'
#' @export
draw_ellipse_lines <- function(center_x, center_y, radius_h, radius_v, color) {
  lens <- c(length(center_x), length(center_y), length(radius_h), length(radius_v), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_x <- rep(center_x, length.out = n)
    center_y <- rep(center_y, length.out = n)
    radius_h <- rep(radius_h, length.out = n)
    radius_v <- rep(radius_v, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_ellipse_lines_vectorized_(center_x, center_y, radius_h, radius_v, color))
  }
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_float(radius_h)) abort(paste0('`radius_h` must be a number, not ', friendly_typeof(radius_h), '.'), call = NULL)
  if (!is_float(radius_v)) abort(paste0('`radius_v` must be a number, not ', friendly_typeof(radius_v), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ellipse_lines_(center_x, center_y, radius_h, radius_v, color)
}

#' Draw Ellipse Lines V
#'
#' Draw ellipse outline (Vector version).
#'
#' @param center A numeric vector of length 2.
#' @param radius_h A number.
#' @param radius_v A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawEllipseLinesV(Vector2 center, float radiusH, float radiusV, Color color);
#' ```
#'
#' @family v functions
#' @family ellipse functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_ellipse_lines_v(c(200, 150), 80.0, 80.0, "red"))
#'
#' @export
draw_ellipse_lines_v <- function(center, radius_h, radius_v, color) {
  lens <- c(.vec_len(center), length(radius_h), length(radius_v), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    radius_h <- rep(radius_h, length.out = n)
    radius_v <- rep(radius_v, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_ellipse_lines_v_vectorized_(center, radius_h, radius_v, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius_h)) abort(paste0('`radius_h` must be a number, not ', friendly_typeof(radius_h), '.'), call = NULL)
  if (!is_float(radius_v)) abort(paste0('`radius_v` must be a number, not ', friendly_typeof(radius_v), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ellipse_lines_v_(center, radius_h, radius_v, color)
}

#' Draw Ring
#'
#' Draw ring.
#'
#' @param center A numeric vector of length 2.
#' @param inner_radius A number.
#' @param outer_radius A number.
#' @param start_angle A number.
#' @param end_angle A number.
#' @param segments An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family ring functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_ring(c(200, 150), 80.0, 80.0, 0.0, 270.0, 36L, "red"))
#'
#' @export
draw_ring <- function(center, inner_radius, outer_radius, start_angle, end_angle, segments, color) {
  lens <- c(.vec_len(center), length(inner_radius), length(outer_radius), length(start_angle), length(end_angle), length(segments), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    inner_radius <- rep(inner_radius, length.out = n)
    outer_radius <- rep(outer_radius, length.out = n)
    start_angle <- rep(start_angle, length.out = n)
    end_angle <- rep(end_angle, length.out = n)
    segments <- rep(segments, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_ring_vectorized_(center, inner_radius, outer_radius, start_angle, end_angle, segments, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(inner_radius)) abort(paste0('`inner_radius` must be a number, not ', friendly_typeof(inner_radius), '.'), call = NULL)
  if (!is_float(outer_radius)) abort(paste0('`outer_radius` must be a number, not ', friendly_typeof(outer_radius), '.'), call = NULL)
  if (!is_float(start_angle)) abort(paste0('`start_angle` must be a number, not ', friendly_typeof(start_angle), '.'), call = NULL)
  if (!is_float(end_angle)) abort(paste0('`end_angle` must be a number, not ', friendly_typeof(end_angle), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ring_(center, inner_radius, outer_radius, start_angle, end_angle, segments, color)
}

#' Draw Ring Lines
#'
#' Draw ring outline.
#'
#' @param center A numeric vector of length 2.
#' @param inner_radius A number.
#' @param outer_radius A number.
#' @param start_angle A number.
#' @param end_angle A number.
#' @param segments An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family lines functions
#' @family ring functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_ring_lines(c(200, 150), 80.0, 80.0, 0.0, 270.0, 36L, "red"))
#'
#' @export
draw_ring_lines <- function(center, inner_radius, outer_radius, start_angle, end_angle, segments, color) {
  lens <- c(.vec_len(center), length(inner_radius), length(outer_radius), length(start_angle), length(end_angle), length(segments), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    inner_radius <- rep(inner_radius, length.out = n)
    outer_radius <- rep(outer_radius, length.out = n)
    start_angle <- rep(start_angle, length.out = n)
    end_angle <- rep(end_angle, length.out = n)
    segments <- rep(segments, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_ring_lines_vectorized_(center, inner_radius, outer_radius, start_angle, end_angle, segments, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(inner_radius)) abort(paste0('`inner_radius` must be a number, not ', friendly_typeof(inner_radius), '.'), call = NULL)
  if (!is_float(outer_radius)) abort(paste0('`outer_radius` must be a number, not ', friendly_typeof(outer_radius), '.'), call = NULL)
  if (!is_float(start_angle)) abort(paste0('`start_angle` must be a number, not ', friendly_typeof(start_angle), '.'), call = NULL)
  if (!is_float(end_angle)) abort(paste0('`end_angle` must be a number, not ', friendly_typeof(end_angle), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ring_lines_(center, inner_radius, outer_radius, start_angle, end_angle, segments, color)
}

#' Draw Rectangle
#'
#' Draw a color-filled rectangle.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangle(int posX, int posY, int width, int height, Color color);
#' ```
#'
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle(100L, 100L, 200L, 100L, "red"))
#'
#' @export
draw_rectangle <- function(pos_x, pos_y, width, height, color) {
  lens <- c(length(pos_x), length(pos_y), length(width), length(height), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    width <- rep(width, length.out = n)
    height <- rep(height, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_vectorized_(pos_x, pos_y, width, height, color))
  }
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_(pos_x, pos_y, width, height, color)
}

#' Draw Rectangle V
#'
#' Draw a color-filled rectangle (Vector version).
#'
#' @param position A numeric vector of length 2.
#' @param size A numeric vector of length 2.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleV(Vector2 position, Vector2 size, Color color);
#' ```
#'
#' @family v functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_v(c(200, 150), c(200, 150), "red"))
#'
#' @export
draw_rectangle_v <- function(position, size, color) {
  lens <- c(.vec_len(position), .vec_len(size), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 2)
    size <- .vec_recycle(size, n, 2)
    color <- .color_recycle(color, n)
    return(draw_rectangle_v_vectorized_(position, size, color))
  }
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_2(size)) abort(paste0('`size` must be a numeric vector of length 2, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_v_(position, size, color)
}

#' Draw Rectangle Rec
#'
#' Draw a color-filled rectangle.
#'
#' @param rec A rectangle.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleRec(Rectangle rec, Color color);
#' ```
#'
#' @family rec functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_rec(rectangle(100, 75, 200, 150), "red"))
#'
#' @export
draw_rectangle_rec <- function(rec, color) {
  lens <- c(.struct_len(rec), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    rec <- .struct_recycle(rec, n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_rec_vectorized_(rec, color))
  }
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_rec_(rec, color)
}

#' Draw Rectangle Pro
#'
#' Draw a color-filled rectangle with pro parameters.
#'
#' @param rec A rectangle.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);
#' ```
#'
#' @family pro functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_pro(rectangle(100, 75, 200, 150), c(0, 0), 0.0, "red"))
#'
#' @export
draw_rectangle_pro <- function(rec, origin, rotation, color) {
  lens <- c(.struct_len(rec), .vec_len(origin), length(rotation), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    rec <- .struct_recycle(rec, n)
    origin <- .vec_recycle(origin, n, 2)
    rotation <- rep(rotation, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_pro_vectorized_(rec, origin, rotation, color))
  }
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_pro_(rec, origin, rotation, color)
}

#' Draw Rectangle Gradient V
#'
#' Draw a vertical-gradient-filled rectangle.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param top A color.
#' @param bottom A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleGradientV(int posX, int posY, int width, int height, Color top, Color bottom);
#' ```
#'
#' @family v functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_gradient_v(100L, 100L, 200L, 100L, "red", "red"))
#'
#' @export
draw_rectangle_gradient_v <- function(pos_x, pos_y, width, height, top, bottom) {
  lens <- c(length(pos_x), length(pos_y), length(width), length(height), .color_len(top), .color_len(bottom))
  if (any(lens > 1)) {
    n <- max(lens)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    width <- rep(width, length.out = n)
    height <- rep(height, length.out = n)
    top <- .color_recycle(top, n)
    bottom <- .color_recycle(bottom, n)
    return(draw_rectangle_gradient_v_vectorized_(pos_x, pos_y, width, height, top, bottom))
  }
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(top)) abort(paste0('`top` must be a color, not ', friendly_typeof(top), '.'), call = NULL)
  if (!is_color(bottom)) abort(paste0('`bottom` must be a color, not ', friendly_typeof(bottom), '.'), call = NULL)
  draw_rectangle_gradient_v_(pos_x, pos_y, width, height, top, bottom)
}

#' Draw Rectangle Gradient H
#'
#' Draw a horizontal-gradient-filled rectangle.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param left A color.
#' @param right A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleGradientH(int posX, int posY, int width, int height, Color left, Color right);
#' ```
#'
#' @family h functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_gradient_h(100L, 100L, 200L, 100L, "red", "red"))
#'
#' @export
draw_rectangle_gradient_h <- function(pos_x, pos_y, width, height, left, right) {
  lens <- c(length(pos_x), length(pos_y), length(width), length(height), .color_len(left), .color_len(right))
  if (any(lens > 1)) {
    n <- max(lens)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    width <- rep(width, length.out = n)
    height <- rep(height, length.out = n)
    left <- .color_recycle(left, n)
    right <- .color_recycle(right, n)
    return(draw_rectangle_gradient_h_vectorized_(pos_x, pos_y, width, height, left, right))
  }
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(left)) abort(paste0('`left` must be a color, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_color(right)) abort(paste0('`right` must be a color, not ', friendly_typeof(right), '.'), call = NULL)
  draw_rectangle_gradient_h_(pos_x, pos_y, width, height, left, right)
}

#' Draw Rectangle Gradient Ex
#'
#' Draw a gradient-filled rectangle with custom vertex colors.
#'
#' @param rec A rectangle.
#' @param top_left A color.
#' @param bottom_left A color.
#' @param bottom_right A color.
#' @param top_right A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleGradientEx(Rectangle rec, Color topLeft, Color bottomLeft, Color bottomRight, Color topRight);
#' ```
#'
#' @family ex functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_gradient_ex(rectangle(100, 75, 200, 150), "red", "red", "red", "red"))
#'
#' @export
draw_rectangle_gradient_ex <- function(rec, top_left, bottom_left, bottom_right, top_right) {
  lens <- c(.struct_len(rec), .color_len(top_left), .color_len(bottom_left), .color_len(bottom_right), .color_len(top_right))
  if (any(lens > 1)) {
    n <- max(lens)
    rec <- .struct_recycle(rec, n)
    top_left <- .color_recycle(top_left, n)
    bottom_left <- .color_recycle(bottom_left, n)
    bottom_right <- .color_recycle(bottom_right, n)
    top_right <- .color_recycle(top_right, n)
    return(draw_rectangle_gradient_ex_vectorized_(rec, top_left, bottom_left, bottom_right, top_right))
  }
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_color(top_left)) abort(paste0('`top_left` must be a color, not ', friendly_typeof(top_left), '.'), call = NULL)
  if (!is_color(bottom_left)) abort(paste0('`bottom_left` must be a color, not ', friendly_typeof(bottom_left), '.'), call = NULL)
  if (!is_color(bottom_right)) abort(paste0('`bottom_right` must be a color, not ', friendly_typeof(bottom_right), '.'), call = NULL)
  if (!is_color(top_right)) abort(paste0('`top_right` must be a color, not ', friendly_typeof(top_right), '.'), call = NULL)
  draw_rectangle_gradient_ex_(rec, top_left, bottom_left, bottom_right, top_right)
}

#' Draw Rectangle Lines
#'
#' Draw rectangle outline.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleLines(int posX, int posY, int width, int height, Color color);
#' ```
#'
#' @family lines functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_lines(100L, 100L, 200L, 100L, "red"))
#'
#' @export
draw_rectangle_lines <- function(pos_x, pos_y, width, height, color) {
  lens <- c(length(pos_x), length(pos_y), length(width), length(height), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    width <- rep(width, length.out = n)
    height <- rep(height, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_lines_vectorized_(pos_x, pos_y, width, height, color))
  }
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_lines_(pos_x, pos_y, width, height, color)
}

#' Draw Rectangle Lines Ex
#'
#' Draw rectangle outline with extended parameters.
#'
#' @param rec A rectangle.
#' @param line_thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);
#' ```
#'
#' @family ex functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_lines_ex(rectangle(100, 75, 200, 150), 3.0, "red"))
#'
#' @export
draw_rectangle_lines_ex <- function(rec, line_thick, color) {
  lens <- c(.struct_len(rec), length(line_thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    rec <- .struct_recycle(rec, n)
    line_thick <- rep(line_thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_lines_ex_vectorized_(rec, line_thick, color))
  }
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_float(line_thick)) abort(paste0('`line_thick` must be a number, not ', friendly_typeof(line_thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_lines_ex_(rec, line_thick, color)
}

#' Draw Rectangle Rounded
#'
#' Draw rectangle with rounded edges.
#'
#' @param rec A rectangle.
#' @param roundness A number.
#' @param segments An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);
#' ```
#'
#' @family rounded functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_rounded(rectangle(100, 75, 200, 150), 0.3, 36L, "red"))
#'
#' @export
draw_rectangle_rounded <- function(rec, roundness, segments, color) {
  lens <- c(.struct_len(rec), length(roundness), length(segments), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    rec <- .struct_recycle(rec, n)
    roundness <- rep(roundness, length.out = n)
    segments <- rep(segments, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_rounded_vectorized_(rec, roundness, segments, color))
  }
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_float(roundness)) abort(paste0('`roundness` must be a number, not ', friendly_typeof(roundness), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_rounded_(rec, roundness, segments, color)
}

#' Draw Rectangle Rounded Lines
#'
#' Draw rectangle lines with rounded edges.
#'
#' @param rec A rectangle.
#' @param roundness A number.
#' @param segments An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, Color color);
#' ```
#'
#' @family lines functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_rounded_lines(rectangle(100, 75, 200, 150), 0.3, 36L, "red"))
#'
#' @export
draw_rectangle_rounded_lines <- function(rec, roundness, segments, color) {
  lens <- c(.struct_len(rec), length(roundness), length(segments), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    rec <- .struct_recycle(rec, n)
    roundness <- rep(roundness, length.out = n)
    segments <- rep(segments, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_rounded_lines_vectorized_(rec, roundness, segments, color))
  }
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_float(roundness)) abort(paste0('`roundness` must be a number, not ', friendly_typeof(roundness), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_rounded_lines_(rec, roundness, segments, color)
}

#' Draw Rectangle Rounded Lines Ex
#'
#' Draw rectangle with rounded edges outline.
#'
#' @param rec A rectangle.
#' @param roundness A number.
#' @param segments An integer.
#' @param line_thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleRoundedLinesEx(Rectangle rec, float roundness, int segments, float lineThick, Color color);
#' ```
#'
#' @family ex functions
#' @family rectangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_rectangle_rounded_lines_ex(rectangle(100, 75, 200, 150), 0.3, 36L, 3.0, "red"))
#'
#' @export
draw_rectangle_rounded_lines_ex <- function(rec, roundness, segments, line_thick, color) {
  lens <- c(.struct_len(rec), length(roundness), length(segments), length(line_thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    rec <- .struct_recycle(rec, n)
    roundness <- rep(roundness, length.out = n)
    segments <- rep(segments, length.out = n)
    line_thick <- rep(line_thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_rectangle_rounded_lines_ex_vectorized_(rec, roundness, segments, line_thick, color))
  }
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_float(roundness)) abort(paste0('`roundness` must be a number, not ', friendly_typeof(roundness), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_float(line_thick)) abort(paste0('`line_thick` must be a number, not ', friendly_typeof(line_thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_rounded_lines_ex_(rec, roundness, segments, line_thick, color)
}

#' Draw Triangle
#'
#' Draw a color-filled triangle (vertex in counter-clockwise order!).
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#' @param v3 A numeric vector of length 2.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
#' ```
#'
#' @family triangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_triangle(c(200, 50), c(100, 250), c(300, 250), "red"))
#'
#' @export
draw_triangle <- function(v1, v2, v3, color) {
  lens <- c(.vec_len(v1), .vec_len(v2), .vec_len(v3), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    v1 <- .vec_recycle(v1, n, 2)
    v2 <- .vec_recycle(v2, n, 2)
    v3 <- .vec_recycle(v3, n, 2)
    color <- .color_recycle(color, n)
    return(draw_triangle_vectorized_(v1, v2, v3, color))
  }
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_vector_2(v3)) abort(paste0('`v3` must be a numeric vector of length 2, not ', friendly_typeof(v3), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_triangle_(v1, v2, v3, color)
}

#' Draw Triangle Lines
#'
#' Draw triangle outline (vertex in counter-clockwise order!).
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#' @param v3 A numeric vector of length 2.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
#' ```
#'
#' @family lines functions
#' @family triangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_triangle_lines(c(200, 50), c(100, 250), c(300, 250), "red"))
#'
#' @export
draw_triangle_lines <- function(v1, v2, v3, color) {
  lens <- c(.vec_len(v1), .vec_len(v2), .vec_len(v3), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    v1 <- .vec_recycle(v1, n, 2)
    v2 <- .vec_recycle(v2, n, 2)
    v3 <- .vec_recycle(v3, n, 2)
    color <- .color_recycle(color, n)
    return(draw_triangle_lines_vectorized_(v1, v2, v3, color))
  }
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_vector_2(v3)) abort(paste0('`v3` must be a numeric vector of length 2, not ', friendly_typeof(v3), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_triangle_lines_(v1, v2, v3, color)
}

#' Draw Poly
#'
#' Draw a regular polygon (Vector version).
#'
#' @param center A numeric vector of length 2.
#' @param sides An integer.
#' @param radius A number.
#' @param rotation A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);
#' ```
#'
#' @family poly functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_poly(c(200, 150), 6L, 80.0, 0.0, "red"))
#'
#' @export
draw_poly <- function(center, sides, radius, rotation, color) {
  lens <- c(.vec_len(center), length(sides), length(radius), length(rotation), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    sides <- rep(sides, length.out = n)
    radius <- rep(radius, length.out = n)
    rotation <- rep(rotation, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_poly_vectorized_(center, sides, radius, rotation, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_poly_(center, sides, radius, rotation, color)
}

#' Draw Poly Lines
#'
#' Draw a polygon outline of n sides.
#'
#' @param center A numeric vector of length 2.
#' @param sides An integer.
#' @param radius A number.
#' @param rotation A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);
#' ```
#'
#' @family lines functions
#' @family poly functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_poly_lines(c(200, 150), 6L, 80.0, 0.0, "red"))
#'
#' @export
draw_poly_lines <- function(center, sides, radius, rotation, color) {
  lens <- c(.vec_len(center), length(sides), length(radius), length(rotation), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    sides <- rep(sides, length.out = n)
    radius <- rep(radius, length.out = n)
    rotation <- rep(rotation, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_poly_lines_vectorized_(center, sides, radius, rotation, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_poly_lines_(center, sides, radius, rotation, color)
}

#' Draw Poly Lines Ex
#'
#' Draw a polygon outline of n sides with extended parameters.
#'
#' @param center A numeric vector of length 2.
#' @param sides An integer.
#' @param radius A number.
#' @param rotation A number.
#' @param line_thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);
#' ```
#'
#' @family ex functions
#' @family poly functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_poly_lines_ex(c(200, 150), 6L, 80.0, 0.0, 3.0, "red"))
#'
#' @export
draw_poly_lines_ex <- function(center, sides, radius, rotation, line_thick, color) {
  lens <- c(.vec_len(center), length(sides), length(radius), length(rotation), length(line_thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 2)
    sides <- rep(sides, length.out = n)
    radius <- rep(radius, length.out = n)
    rotation <- rep(rotation, length.out = n)
    line_thick <- rep(line_thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_poly_lines_ex_vectorized_(center, sides, radius, rotation, line_thick, color))
  }
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_float(line_thick)) abort(paste0('`line_thick` must be a number, not ', friendly_typeof(line_thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_poly_lines_ex_(center, sides, radius, rotation, line_thick, color)
}

#' Draw Spline Segment Linear
#'
#' Draw spline segment: Linear, 2 points.
#'
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSplineSegmentLinear(Vector2 p1, Vector2 p2, float thick, Color color);
#' ```
#'
#' @family linear functions
#' @family spline functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_spline_segment_linear(c(200, 50), c(100, 250), 3.0, "red"))
#'
#' @export
draw_spline_segment_linear <- function(p1, p2, thick, color) {
  lens <- c(.vec_len(p1), .vec_len(p2), length(thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    p1 <- .vec_recycle(p1, n, 2)
    p2 <- .vec_recycle(p2, n, 2)
    thick <- rep(thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_spline_segment_linear_vectorized_(p1, p2, thick, color))
  }
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_spline_segment_linear_(p1, p2, thick, color)
}

#' Draw Spline Segment Basis
#'
#' Draw spline segment: B-Spline, 4 points.
#'
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#' @param p3 A numeric vector of length 2.
#' @param p4 A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSplineSegmentBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);
#' ```
#'
#' @family basis functions
#' @family spline functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_spline_segment_basis(c(200, 50), c(100, 250), c(300, 250), c(350, 100), 3.0, "red"))
#'
#' @export
draw_spline_segment_basis <- function(p1, p2, p3, p4, thick, color) {
  lens <- c(.vec_len(p1), .vec_len(p2), .vec_len(p3), .vec_len(p4), length(thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    p1 <- .vec_recycle(p1, n, 2)
    p2 <- .vec_recycle(p2, n, 2)
    p3 <- .vec_recycle(p3, n, 2)
    p4 <- .vec_recycle(p4, n, 2)
    thick <- rep(thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_spline_segment_basis_vectorized_(p1, p2, p3, p4, thick, color))
  }
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_vector_2(p3)) abort(paste0('`p3` must be a numeric vector of length 2, not ', friendly_typeof(p3), '.'), call = NULL)
  if (!is_vector_2(p4)) abort(paste0('`p4` must be a numeric vector of length 2, not ', friendly_typeof(p4), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_spline_segment_basis_(p1, p2, p3, p4, thick, color)
}

#' Draw Spline Segment Catmull Rom
#'
#' Draw spline segment: Catmull-Rom, 4 points.
#'
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#' @param p3 A numeric vector of length 2.
#' @param p4 A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSplineSegmentCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);
#' ```
#'
#' @family rom functions
#' @family spline functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_spline_segment_catmull_rom(c(200, 50), c(100, 250), c(300, 250), c(350, 100), 3.0, "red"))
#'
#' @export
draw_spline_segment_catmull_rom <- function(p1, p2, p3, p4, thick, color) {
  lens <- c(.vec_len(p1), .vec_len(p2), .vec_len(p3), .vec_len(p4), length(thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    p1 <- .vec_recycle(p1, n, 2)
    p2 <- .vec_recycle(p2, n, 2)
    p3 <- .vec_recycle(p3, n, 2)
    p4 <- .vec_recycle(p4, n, 2)
    thick <- rep(thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_spline_segment_catmull_rom_vectorized_(p1, p2, p3, p4, thick, color))
  }
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_vector_2(p3)) abort(paste0('`p3` must be a numeric vector of length 2, not ', friendly_typeof(p3), '.'), call = NULL)
  if (!is_vector_2(p4)) abort(paste0('`p4` must be a numeric vector of length 2, not ', friendly_typeof(p4), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_spline_segment_catmull_rom_(p1, p2, p3, p4, thick, color)
}

#' Draw Spline Segment Bezier Quadratic
#'
#' Draw spline segment: Quadratic Bezier, 2 points, 1 control point.
#'
#' @param p1 A numeric vector of length 2.
#' @param c2 A numeric vector of length 2.
#' @param p3 A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSplineSegmentBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color);
#' ```
#'
#' @family quadratic functions
#' @family spline functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_spline_segment_bezier_quadratic(c(200, 50), c(200, 150), c(300, 250), 3.0, "red"))
#'
#' @export
draw_spline_segment_bezier_quadratic <- function(p1, c2, p3, thick, color) {
  lens <- c(.vec_len(p1), .vec_len(c2), .vec_len(p3), length(thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    p1 <- .vec_recycle(p1, n, 2)
    c2 <- .vec_recycle(c2, n, 2)
    p3 <- .vec_recycle(p3, n, 2)
    thick <- rep(thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_spline_segment_bezier_quadratic_vectorized_(p1, c2, p3, thick, color))
  }
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(c2)) abort(paste0('`c2` must be a numeric vector of length 2, not ', friendly_typeof(c2), '.'), call = NULL)
  if (!is_vector_2(p3)) abort(paste0('`p3` must be a numeric vector of length 2, not ', friendly_typeof(p3), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_spline_segment_bezier_quadratic_(p1, c2, p3, thick, color)
}

#' Draw Spline Segment Bezier Cubic
#'
#' Draw spline segment: Cubic Bezier, 2 points, 2 control points.
#'
#' @param p1 A numeric vector of length 2.
#' @param c2 A numeric vector of length 2.
#' @param c3 A numeric vector of length 2.
#' @param p4 A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSplineSegmentBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color);
#' ```
#'
#' @family cubic functions
#' @family spline functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_spline_segment_bezier_cubic(c(200, 50), c(200, 150), c(200, 150), c(350, 100), 3.0, "red"))
#'
#' @export
draw_spline_segment_bezier_cubic <- function(p1, c2, c3, p4, thick, color) {
  lens <- c(.vec_len(p1), .vec_len(c2), .vec_len(c3), .vec_len(p4), length(thick), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    p1 <- .vec_recycle(p1, n, 2)
    c2 <- .vec_recycle(c2, n, 2)
    c3 <- .vec_recycle(c3, n, 2)
    p4 <- .vec_recycle(p4, n, 2)
    thick <- rep(thick, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_spline_segment_bezier_cubic_vectorized_(p1, c2, c3, p4, thick, color))
  }
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(c2)) abort(paste0('`c2` must be a numeric vector of length 2, not ', friendly_typeof(c2), '.'), call = NULL)
  if (!is_vector_2(c3)) abort(paste0('`c3` must be a numeric vector of length 2, not ', friendly_typeof(c3), '.'), call = NULL)
  if (!is_vector_2(p4)) abort(paste0('`p4` must be a numeric vector of length 2, not ', friendly_typeof(p4), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_spline_segment_bezier_cubic_(p1, c2, c3, p4, thick, color)
}

#' Get Spline Point Linear
#'
#' Get (evaluate) spline point: Linear.
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param t A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetSplinePointLinear(Vector2 startPos, Vector2 endPos, float t);
#' ```
#'
#' @family linear functions
#' @family spline functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_spline_point_linear(c(100, 100), c(100, 100), 0.0)
#'
#' @export
get_spline_point_linear <- function(start_pos, end_pos, t) {
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(t)) abort(paste0('`t` must be a number, not ', friendly_typeof(t), '.'), call = NULL)
  get_spline_point_linear_(start_pos, end_pos, t)
}

#' Get Spline Point Basis
#'
#' Get (evaluate) spline point: B-Spline.
#'
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#' @param p3 A numeric vector of length 2.
#' @param p4 A numeric vector of length 2.
#' @param t A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetSplinePointBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);
#' ```
#'
#' @family basis functions
#' @family spline functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_spline_point_basis(c(100, 100), c(100, 100), c(100, 100), c(100, 100), 0.0)
#'
#' @export
get_spline_point_basis <- function(p1, p2, p3, p4, t) {
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_vector_2(p3)) abort(paste0('`p3` must be a numeric vector of length 2, not ', friendly_typeof(p3), '.'), call = NULL)
  if (!is_vector_2(p4)) abort(paste0('`p4` must be a numeric vector of length 2, not ', friendly_typeof(p4), '.'), call = NULL)
  if (!is_float(t)) abort(paste0('`t` must be a number, not ', friendly_typeof(t), '.'), call = NULL)
  get_spline_point_basis_(p1, p2, p3, p4, t)
}

#' Get Spline Point Catmull Rom
#'
#' Get (evaluate) spline point: Catmull-Rom.
#'
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#' @param p3 A numeric vector of length 2.
#' @param p4 A numeric vector of length 2.
#' @param t A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetSplinePointCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);
#' ```
#'
#' @family rom functions
#' @family spline functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_spline_point_catmull_rom(c(100, 100), c(100, 100), c(100, 100), c(100, 100), 0.0)
#'
#' @export
get_spline_point_catmull_rom <- function(p1, p2, p3, p4, t) {
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_vector_2(p3)) abort(paste0('`p3` must be a numeric vector of length 2, not ', friendly_typeof(p3), '.'), call = NULL)
  if (!is_vector_2(p4)) abort(paste0('`p4` must be a numeric vector of length 2, not ', friendly_typeof(p4), '.'), call = NULL)
  if (!is_float(t)) abort(paste0('`t` must be a number, not ', friendly_typeof(t), '.'), call = NULL)
  get_spline_point_catmull_rom_(p1, p2, p3, p4, t)
}

#' Get Spline Point Bezier Quad
#'
#' Get (evaluate) spline point: Quadratic Bezier.
#'
#' @param p1 A numeric vector of length 2.
#' @param c2 A numeric vector of length 2.
#' @param p3 A numeric vector of length 2.
#' @param t A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetSplinePointBezierQuad(Vector2 p1, Vector2 c2, Vector2 p3, float t);
#' ```
#'
#' @family quad functions
#' @family spline functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_spline_point_bezier_quad(c(100, 100), c(100, 100), c(100, 100), 0.0)
#'
#' @export
get_spline_point_bezier_quad <- function(p1, c2, p3, t) {
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(c2)) abort(paste0('`c2` must be a numeric vector of length 2, not ', friendly_typeof(c2), '.'), call = NULL)
  if (!is_vector_2(p3)) abort(paste0('`p3` must be a numeric vector of length 2, not ', friendly_typeof(p3), '.'), call = NULL)
  if (!is_float(t)) abort(paste0('`t` must be a number, not ', friendly_typeof(t), '.'), call = NULL)
  get_spline_point_bezier_quad_(p1, c2, p3, t)
}

#' Get Spline Point Bezier Cubic
#'
#' Get (evaluate) spline point: Cubic Bezier.
#'
#' @param p1 A numeric vector of length 2.
#' @param c2 A numeric vector of length 2.
#' @param c3 A numeric vector of length 2.
#' @param p4 A numeric vector of length 2.
#' @param t A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 GetSplinePointBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t);
#' ```
#'
#' @family cubic functions
#' @family spline functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_spline_point_bezier_cubic(c(100, 100), c(100, 100), c(100, 100), c(100, 100), 0.0)
#'
#' @export
get_spline_point_bezier_cubic <- function(p1, c2, c3, p4, t) {
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(c2)) abort(paste0('`c2` must be a numeric vector of length 2, not ', friendly_typeof(c2), '.'), call = NULL)
  if (!is_vector_2(c3)) abort(paste0('`c3` must be a numeric vector of length 2, not ', friendly_typeof(c3), '.'), call = NULL)
  if (!is_vector_2(p4)) abort(paste0('`p4` must be a numeric vector of length 2, not ', friendly_typeof(p4), '.'), call = NULL)
  if (!is_float(t)) abort(paste0('`t` must be a number, not ', friendly_typeof(t), '.'), call = NULL)
  get_spline_point_bezier_cubic_(p1, c2, c3, p4, t)
}

#' Check Collision Recs
#'
#' Check collision between two rectangles.
#'
#' @param rec1 A rectangle.
#' @param rec2 A rectangle.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);
#' ```
#'
#' @family recs functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_recs(rectangle(10, 10, 200, 100), rectangle(10, 10, 200, 100))
#'
#' @export
check_collision_recs <- function(rec1, rec2) {
  if (!is_rectangle(rec1)) abort(paste0('`rec1` must be a rectangle, not ', friendly_typeof(rec1), '.'), call = NULL)
  if (!is_rectangle(rec2)) abort(paste0('`rec2` must be a rectangle, not ', friendly_typeof(rec2), '.'), call = NULL)
  check_collision_recs_(rec1, rec2)
}

#' Check Collision Circles
#'
#' Check collision between two circles.
#'
#' @param center1 A numeric vector of length 2.
#' @param radius1 A number.
#' @param center2 A numeric vector of length 2.
#' @param radius2 A number.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);
#' ```
#'
#' @family circles functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_circles(c(100, 100), 50.0, c(100, 100), 50.0)
#'
#' @export
check_collision_circles <- function(center1, radius1, center2, radius2) {
  if (!is_vector_2(center1)) abort(paste0('`center1` must be a numeric vector of length 2, not ', friendly_typeof(center1), '.'), call = NULL)
  if (!is_float(radius1)) abort(paste0('`radius1` must be a number, not ', friendly_typeof(radius1), '.'), call = NULL)
  if (!is_vector_2(center2)) abort(paste0('`center2` must be a numeric vector of length 2, not ', friendly_typeof(center2), '.'), call = NULL)
  if (!is_float(radius2)) abort(paste0('`radius2` must be a number, not ', friendly_typeof(radius2), '.'), call = NULL)
  check_collision_circles_(center1, radius1, center2, radius2)
}

#' Check Collision Circle Rec
#'
#' Check collision between circle and rectangle.
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param rec A rectangle.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);
#' ```
#'
#' @family rec functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_circle_rec(c(100, 100), 50.0, rectangle(10, 10, 200, 100))
#'
#' @export
check_collision_circle_rec <- function(center, radius, rec) {
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  check_collision_circle_rec_(center, radius, rec)
}

#' Check Collision Circle Line
#'
#' Check if circle collides with a line created betweeen two points \\[p1\\] and \\[p2\\].
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionCircleLine(Vector2 center, float radius, Vector2 p1, Vector2 p2);
#' ```
#'
#' @family line functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_circle_line(c(100, 100), 50.0, c(100, 100), c(100, 100))
#'
#' @export
check_collision_circle_line <- function(center, radius, p1, p2) {
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  check_collision_circle_line_(center, radius, p1, p2)
}

#' Check Collision Point Rec
#'
#' Check if point is inside rectangle.
#'
#' @param point A numeric vector of length 2.
#' @param rec A rectangle.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionPointRec(Vector2 point, Rectangle rec);
#' ```
#'
#' @family rec functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_point_rec(c(100, 100), rectangle(10, 10, 200, 100))
#'
#' @export
check_collision_point_rec <- function(point, rec) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  check_collision_point_rec_(point, rec)
}

#' Check Collision Point Circle
#'
#' Check if point is inside circle.
#'
#' @param point A numeric vector of length 2.
#' @param center A numeric vector of length 2.
#' @param radius A number.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);
#' ```
#'
#' @family circle functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_point_circle(c(100, 100), c(100, 100), 50.0)
#'
#' @export
check_collision_point_circle <- function(point, center, radius) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  check_collision_point_circle_(point, center, radius)
}

#' Check Collision Point Triangle
#'
#' Check if point is inside a triangle.
#'
#' @param point A numeric vector of length 2.
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#' @param p3 A numeric vector of length 2.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);
#' ```
#'
#' @family triangle functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_point_triangle(c(100, 100), c(100, 100), c(100, 100), c(100, 100))
#'
#' @export
check_collision_point_triangle <- function(point, p1, p2, p3) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_vector_2(p3)) abort(paste0('`p3` must be a numeric vector of length 2, not ', friendly_typeof(p3), '.'), call = NULL)
  check_collision_point_triangle_(point, p1, p2, p3)
}

#' Check Collision Point Line
#'
#' Check if point belongs to line created between two points \\[p1\\] and \\[p2\\] with defined margin in pixels \\[threshold\\].
#'
#' @param point A numeric vector of length 2.
#' @param p1 A numeric vector of length 2.
#' @param p2 A numeric vector of length 2.
#' @param threshold An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);
#' ```
#'
#' @family line functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_point_line(c(100, 100), c(100, 100), c(100, 100), 0L)
#'
#' @export
check_collision_point_line <- function(point, p1, p2, threshold) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_2(p1)) abort(paste0('`p1` must be a numeric vector of length 2, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_2(p2)) abort(paste0('`p2` must be a numeric vector of length 2, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_int(threshold)) abort(paste0('`threshold` must be an integer, not ', friendly_typeof(threshold), '.'), call = NULL)
  check_collision_point_line_(point, p1, p2, threshold)
}

#' Get Collision Rec
#'
#' Get collision rectangle for two rectangles collision.
#'
#' @param rec1 A rectangle.
#' @param rec2 A rectangle.
#'
#' @return A rectangle
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);
#' ```
#'
#' @family rec functions
#' @family collision functions
#' @family get functions
#'
#' @examples
#' get_collision_rec(rectangle(10, 10, 200, 100), rectangle(10, 10, 200, 100))
#'
#' @export
get_collision_rec <- function(rec1, rec2) {
  if (!is_rectangle(rec1)) abort(paste0('`rec1` must be a rectangle, not ', friendly_typeof(rec1), '.'), call = NULL)
  if (!is_rectangle(rec2)) abort(paste0('`rec2` must be a rectangle, not ', friendly_typeof(rec2), '.'), call = NULL)
  get_collision_rec_(rec1, rec2)
}

#' Load Image
#'
#' Load image from file into CPU memory (RAM).
#'
#' @param file_name A string.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImage(const char * fileName);
#' ```
#'
#' @family image functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_image("file.png")
#'
#' @export
load_image <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_image_(file_name)
}

#' Load Image Raw
#'
#' Load image from RAW file data.
#'
#' @param file_name A string.
#' @param width An integer.
#' @param height An integer.
#' @param format An integer.
#' @param header_size An integer.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImageRaw(const char * fileName, int width, int height, int format, int headerSize);
#' ```
#'
#' @family raw functions
#' @family image functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_image_raw("file.png", 800L, 450L, 0L, 32L)
#'
#' @export
load_image_raw <- function(file_name, width, height, format, header_size) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(format)) abort(paste0('`format` must be an integer, not ', friendly_typeof(format), '.'), call = NULL)
  if (!is_int(header_size)) abort(paste0('`header_size` must be an integer, not ', friendly_typeof(header_size), '.'), call = NULL)
  load_image_raw_(file_name, width, height, format, header_size)
}

#' Load Image From Texture
#'
#' Load image from GPU texture data.
#'
#' @param texture A texture.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImageFromTexture(Texture2D texture);
#' ```
#'
#' @family texture functions
#' @family image functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_image_from_texture(load_texture("file.png"))
#'
#' @export
load_image_from_texture <- function(texture) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  load_image_from_texture_(texture)
}

#' Load Image From Screen
#'
#' Load image from screen buffer and (screenshot).
#'
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImageFromScreen(void);
#' ```
#'
#' @family screen functions
#' @family image functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_image_from_screen()
#'
#' @export
load_image_from_screen <- function() {
  load_image_from_screen_()
}

#' Is Image Valid
#'
#' Check if an image is valid (data and parameters).
#'
#' @param image An image.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsImageValid(Image image);
#' ```
#'
#' @family valid functions
#' @family image functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_image_valid(gen_image_color(100, 100, "blue"))
#'
#' @export
is_image_valid <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  is_image_valid_(image)
}

#' Unload Image
#'
#' Unload image from CPU memory (RAM).
#'
#' @param image An image.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadImage(Image image);
#' ```
#'
#' @family image functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_image(gen_image_color(100, 100, "blue"))
#'
#' @export
unload_image <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  unload_image_(image)
}

#' Export Image
#'
#' Export image data to file, returns true on success.
#'
#' @param image An image.
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ExportImage(Image image, const char * fileName);
#' ```
#'
#' @family image functions
#' @family export functions
#'
#' @examplesIf FALSE
#' export_image(gen_image_color(100, 100, "blue"), "file.png")
#'
#' @export
export_image <- function(image, file_name) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_image_(image, file_name)
}

#' Export Image As Code
#'
#' Export image as code file defining an array of bytes, returns true on success.
#'
#' @param image An image.
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ExportImageAsCode(Image image, const char * fileName);
#' ```
#'
#' @family code functions
#' @family image functions
#' @family export functions
#'
#' @examplesIf FALSE
#' export_image_as_code(gen_image_color(100, 100, "blue"), "file.png")
#'
#' @export
export_image_as_code <- function(image, file_name) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_image_as_code_(image, file_name)
}

#' Gen Image Color
#'
#' Generate image: plain color.
#'
#' @param width An integer.
#' @param height An integer.
#' @param color A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageColor(int width, int height, Color color);
#' ```
#'
#' @family color functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_color(800L, 450L, "red")
#'
#' @export
gen_image_color <- function(width, height, color) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  gen_image_color_(width, height, color)
}

#' Gen Image Gradient Linear
#'
#' Generate image: linear gradient, direction in degrees \\[0..360\\], 0=Vertical gradient.
#'
#' @param width An integer.
#' @param height An integer.
#' @param direction An integer.
#' @param start A color.
#' @param end A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientLinear(int width, int height, int direction, Color start, Color end);
#' ```
#'
#' @family linear functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_gradient_linear(800L, 450L, 0L, "red", "red")
#'
#' @export
gen_image_gradient_linear <- function(width, height, direction, start, end) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(direction)) abort(paste0('`direction` must be an integer, not ', friendly_typeof(direction), '.'), call = NULL)
  if (!is_color(start)) abort(paste0('`start` must be a color, not ', friendly_typeof(start), '.'), call = NULL)
  if (!is_color(end)) abort(paste0('`end` must be a color, not ', friendly_typeof(end), '.'), call = NULL)
  gen_image_gradient_linear_(width, height, direction, start, end)
}

#' Gen Image Gradient Radial
#'
#' Generate image: radial gradient.
#'
#' @param width An integer.
#' @param height An integer.
#' @param density A number.
#' @param inner A color.
#' @param outer A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);
#' ```
#'
#' @family radial functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_gradient_radial(800L, 450L, 0.0, "red", "red")
#'
#' @export
gen_image_gradient_radial <- function(width, height, density, inner, outer) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(density)) abort(paste0('`density` must be a number, not ', friendly_typeof(density), '.'), call = NULL)
  if (!is_color(inner)) abort(paste0('`inner` must be a color, not ', friendly_typeof(inner), '.'), call = NULL)
  if (!is_color(outer)) abort(paste0('`outer` must be a color, not ', friendly_typeof(outer), '.'), call = NULL)
  gen_image_gradient_radial_(width, height, density, inner, outer)
}

#' Gen Image Gradient Square
#'
#' Generate image: square gradient.
#'
#' @param width An integer.
#' @param height An integer.
#' @param density A number.
#' @param inner A color.
#' @param outer A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientSquare(int width, int height, float density, Color inner, Color outer);
#' ```
#'
#' @family square functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_gradient_square(800L, 450L, 0.0, "red", "red")
#'
#' @export
gen_image_gradient_square <- function(width, height, density, inner, outer) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(density)) abort(paste0('`density` must be a number, not ', friendly_typeof(density), '.'), call = NULL)
  if (!is_color(inner)) abort(paste0('`inner` must be a color, not ', friendly_typeof(inner), '.'), call = NULL)
  if (!is_color(outer)) abort(paste0('`outer` must be a color, not ', friendly_typeof(outer), '.'), call = NULL)
  gen_image_gradient_square_(width, height, density, inner, outer)
}

#' Gen Image Checked
#'
#' Generate image: checked.
#'
#' @param width An integer.
#' @param height An integer.
#' @param checks_x An integer.
#' @param checks_y An integer.
#' @param col1 A color.
#' @param col2 A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);
#' ```
#'
#' @family checked functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_checked(800L, 450L, 0L, 0L, "red", "red")
#'
#' @export
gen_image_checked <- function(width, height, checks_x, checks_y, col1, col2) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(checks_x)) abort(paste0('`checks_x` must be an integer, not ', friendly_typeof(checks_x), '.'), call = NULL)
  if (!is_int(checks_y)) abort(paste0('`checks_y` must be an integer, not ', friendly_typeof(checks_y), '.'), call = NULL)
  if (!is_color(col1)) abort(paste0('`col1` must be a color, not ', friendly_typeof(col1), '.'), call = NULL)
  if (!is_color(col2)) abort(paste0('`col2` must be a color, not ', friendly_typeof(col2), '.'), call = NULL)
  gen_image_checked_(width, height, checks_x, checks_y, col1, col2)
}

#' Gen Image White Noise
#'
#' Generate image: white noise.
#'
#' @param width An integer.
#' @param height An integer.
#' @param factor A number.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageWhiteNoise(int width, int height, float factor);
#' ```
#'
#' @family noise functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_white_noise(800L, 450L, 0.0)
#'
#' @export
gen_image_white_noise <- function(width, height, factor) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(factor)) abort(paste0('`factor` must be a number, not ', friendly_typeof(factor), '.'), call = NULL)
  gen_image_white_noise_(width, height, factor)
}

#' Gen Image Perlin Noise
#'
#' Generate image: perlin noise.
#'
#' @param width An integer.
#' @param height An integer.
#' @param offset_x An integer.
#' @param offset_y An integer.
#' @param scale A number.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);
#' ```
#'
#' @family noise functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_perlin_noise(800L, 450L, 0L, 0L, 1.0)
#'
#' @export
gen_image_perlin_noise <- function(width, height, offset_x, offset_y, scale) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(offset_x)) abort(paste0('`offset_x` must be an integer, not ', friendly_typeof(offset_x), '.'), call = NULL)
  if (!is_int(offset_y)) abort(paste0('`offset_y` must be an integer, not ', friendly_typeof(offset_y), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  gen_image_perlin_noise_(width, height, offset_x, offset_y, scale)
}

#' Gen Image Cellular
#'
#' Generate image: cellular algorithm, bigger tileSize means bigger cells.
#'
#' @param width An integer.
#' @param height An integer.
#' @param tile_size An integer.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageCellular(int width, int height, int tileSize);
#' ```
#'
#' @family cellular functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_cellular(800L, 450L, 32L)
#'
#' @export
gen_image_cellular <- function(width, height, tile_size) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(tile_size)) abort(paste0('`tile_size` must be an integer, not ', friendly_typeof(tile_size), '.'), call = NULL)
  gen_image_cellular_(width, height, tile_size)
}

#' Gen Image Text
#'
#' Generate image: grayscale image from text data.
#'
#' @param width An integer.
#' @param height An integer.
#' @param text A string.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageText(int width, int height, const char * text);
#' ```
#'
#' @family text functions
#' @family image functions
#'
#' @examplesIf FALSE
#' gen_image_text(800L, 450L, "Hello")
#'
#' @export
gen_image_text <- function(width, height, text) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  gen_image_text_(width, height, text)
}

#' Image Copy
#'
#' Create an image duplicate (useful for transformations).
#'
#' @param image An image.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image ImageCopy(Image image);
#' ```
#'
#' @family copy functions
#'
#' @examplesIf FALSE
#' image_copy(gen_image_color(100, 100, "blue"))
#'
#' @export
image_copy <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_copy_(image)
}

#' Image From Image
#'
#' Create an image from another image piece.
#'
#' @param image An image.
#' @param rec A rectangle.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image ImageFromImage(Image image, Rectangle rec);
#' ```
#'
#' @family image functions
#' @family from functions
#'
#' @examplesIf FALSE
#' image_from_image(gen_image_color(100, 100, "blue"), rectangle(10, 10, 200, 100))
#'
#' @export
image_from_image <- function(image, rec) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  image_from_image_(image, rec)
}

#' Image From Channel
#'
#' Create an image from a selected channel of another image (GRAYSCALE).
#'
#' @param image An image.
#' @param selected_channel An integer.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image ImageFromChannel(Image image, int selectedChannel);
#' ```
#'
#' @family channel functions
#' @family from functions
#'
#' @examplesIf FALSE
#' image_from_channel(gen_image_color(100, 100, "blue"), 0L)
#'
#' @export
image_from_channel <- function(image, selected_channel) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(selected_channel)) abort(paste0('`selected_channel` must be an integer, not ', friendly_typeof(selected_channel), '.'), call = NULL)
  image_from_channel_(image, selected_channel)
}

#' Image Text
#'
#' Create an image from text (default font).
#'
#' @param text A string.
#' @param font_size An integer.
#' @param color A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image ImageText(const char * text, int fontSize, Color color);
#' ```
#'
#' @family text functions
#'
#' @examplesIf FALSE
#' image_text("Hello", 20L, "red")
#'
#' @export
image_text <- function(text, font_size, color) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(font_size)) abort(paste0('`font_size` must be an integer, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_text_(text, font_size, color)
}

#' Image Text Ex
#'
#' Create an image from text (custom sprite font).
#'
#' @param font A font.
#' @param text A string.
#' @param font_size A number.
#' @param spacing A number.
#' @param tint A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image ImageTextEx(Font font, const char * text, float fontSize, float spacing, Color tint);
#' ```
#'
#' @family ex functions
#' @family text functions
#'
#' @examplesIf FALSE
#' image_text_ex(get_font_default(), "Hello", 1.0, 1.0, "red")
#'
#' @export
image_text_ex <- function(font, text, font_size, spacing, tint) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  image_text_ex_(font, text, font_size, spacing, tint)
}

#' Get Image Alpha Border
#'
#' Get image alpha border rectangle.
#'
#' @param image An image.
#' @param threshold A number.
#'
#' @return A rectangle
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Rectangle GetImageAlphaBorder(Image image, float threshold);
#' ```
#'
#' @family border functions
#' @family image functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_image_alpha_border(gen_image_color(100, 100, "blue"), 0.0)
#'
#' @export
get_image_alpha_border <- function(image, threshold) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_float(threshold)) abort(paste0('`threshold` must be a number, not ', friendly_typeof(threshold), '.'), call = NULL)
  get_image_alpha_border_(image, threshold)
}

#' Get Image Color
#'
#' Get image pixel color at (x, y) position.
#'
#' @param image An image.
#' @param x An integer.
#' @param y An integer.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color GetImageColor(Image image, int x, int y);
#' ```
#'
#' @family color functions
#' @family image functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_image_color(gen_image_color(100, 100, "blue"), 100L, 100L)
#'
#' @export
get_image_color <- function(image, x, y) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  get_image_color_(image, x, y)
}

#' Load Texture
#'
#' Load texture from file into GPU memory (VRAM).
#'
#' @param file_name A string.
#'
#' @return A texture
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Texture2D LoadTexture(const char * fileName);
#' ```
#'
#' @family texture functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_texture("file.png")
#'
#' @export
load_texture <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_texture_(file_name)
}

#' Load Texture From Image
#'
#' Load texture from image data.
#'
#' @param image An image.
#'
#' @return A texture
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Texture2D LoadTextureFromImage(Image image);
#' ```
#'
#' @family image functions
#' @family texture functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_texture_from_image(gen_image_color(100, 100, "blue"))
#'
#' @export
load_texture_from_image <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  load_texture_from_image_(image)
}

#' Load Render Texture
#'
#' Load texture for rendering (framebuffer).
#'
#' @param width An integer.
#' @param height An integer.
#'
#' @return A render texture
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RenderTexture2D LoadRenderTexture(int width, int height);
#' ```
#'
#' @family texture functions
#' @family render functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_render_texture(800L, 450L)
#'
#' @export
load_render_texture <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  load_render_texture_(width, height)
}

#' Is Texture Valid
#'
#' Check if a texture is valid (loaded in GPU).
#'
#' @param texture A texture.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsTextureValid(Texture2D texture);
#' ```
#'
#' @family valid functions
#' @family texture functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_texture_valid(load_texture("file.png"))
#'
#' @export
is_texture_valid <- function(texture) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  is_texture_valid_(texture)
}

#' Unload Texture
#'
#' Unload texture from GPU memory (VRAM).
#'
#' @param texture A texture.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadTexture(Texture2D texture);
#' ```
#'
#' @family texture functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_texture(load_texture("file.png"))
#'
#' @export
unload_texture <- function(texture) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  unload_texture_(texture)
}

#' Is Render Texture Valid
#'
#' Check if a render texture is valid (loaded in GPU).
#'
#' @param target A render texture.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsRenderTextureValid(RenderTexture2D target);
#' ```
#'
#' @family valid functions
#' @family render functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_render_texture_valid(load_render_texture(800, 450))
#'
#' @export
is_render_texture_valid <- function(target) {
  if (!is_render_texture(target)) abort(paste0('`target` must be a render texture, not ', friendly_typeof(target), '.'), call = NULL)
  is_render_texture_valid_(target)
}

#' Unload Render Texture
#'
#' Unload render texture from GPU memory (VRAM).
#'
#' @param target A render texture.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadRenderTexture(RenderTexture2D target);
#' ```
#'
#' @family texture functions
#' @family render functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_render_texture(load_render_texture(800, 450))
#'
#' @export
unload_render_texture <- function(target) {
  if (!is_render_texture(target)) abort(paste0('`target` must be a render texture, not ', friendly_typeof(target), '.'), call = NULL)
  unload_render_texture_(target)
}

#' Set Texture Filter
#'
#' Set texture scaling filter mode.
#'
#' @param texture A texture.
#' @param filter An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTextureFilter(Texture2D texture, int filter);
#' ```
#'
#' @family filter functions
#' @family texture functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_texture_filter(load_texture("file.png"), 0L)
#'
#' @export
set_texture_filter <- function(texture, filter) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_int(filter)) abort(paste0('`filter` must be an integer, not ', friendly_typeof(filter), '.'), call = NULL)
  set_texture_filter_(texture, filter)
}

#' Set Texture Wrap
#'
#' Set texture wrapping mode.
#'
#' @param texture A texture.
#' @param wrap An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTextureWrap(Texture2D texture, int wrap);
#' ```
#'
#' @family wrap functions
#' @family texture functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_texture_wrap(load_texture("file.png"), 0L)
#'
#' @export
set_texture_wrap <- function(texture, wrap) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_int(wrap)) abort(paste0('`wrap` must be an integer, not ', friendly_typeof(wrap), '.'), call = NULL)
  set_texture_wrap_(texture, wrap)
}

#' Draw Texture
#'
#' Draw a Texture2D.
#'
#' @param texture A texture.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTexture(Texture2D texture, int posX, int posY, Color tint);
#' ```
#'
#' @family texture functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_texture(load_texture("file.png"), 100L, 100L, "red")
#'
#' @export
draw_texture <- function(texture, pos_x, pos_y, tint) {
  lens <- c(.struct_len(texture), length(pos_x), length(pos_y), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    texture <- .struct_recycle(texture, n)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_texture_vectorized_(texture, pos_x, pos_y, tint))
  }
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_(texture, pos_x, pos_y, tint)
}

#' Draw Texture V
#'
#' Draw a Texture2D with position defined as Vector2.
#'
#' @param texture A texture.
#' @param position A numeric vector of length 2.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureV(Texture2D texture, Vector2 position, Color tint);
#' ```
#'
#' @family v functions
#' @family texture functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_texture_v(load_texture("file.png"), c(100, 100), "red")
#'
#' @export
draw_texture_v <- function(texture, position, tint) {
  lens <- c(.struct_len(texture), .vec_len(position), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    texture <- .struct_recycle(texture, n)
    position <- .vec_recycle(position, n, 2)
    tint <- .color_recycle(tint, n)
    return(draw_texture_v_vectorized_(texture, position, tint))
  }
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_v_(texture, position, tint)
}

#' Draw Texture Ex
#'
#' Draw a Texture2D with extended parameters.
#'
#' @param texture A texture.
#' @param position A numeric vector of length 2.
#' @param rotation A number.
#' @param scale A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);
#' ```
#'
#' @family ex functions
#' @family texture functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_texture_ex(load_texture("file.png"), c(100, 100), 0.0, 1.0, "red")
#'
#' @export
draw_texture_ex <- function(texture, position, rotation, scale, tint) {
  lens <- c(.struct_len(texture), .vec_len(position), length(rotation), length(scale), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    texture <- .struct_recycle(texture, n)
    position <- .vec_recycle(position, n, 2)
    rotation <- rep(rotation, length.out = n)
    scale <- rep(scale, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_texture_ex_vectorized_(texture, position, rotation, scale, tint))
  }
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_ex_(texture, position, rotation, scale, tint)
}

#' Draw Texture Rec
#'
#' Draw a part of a texture defined by a rectangle.
#'
#' @param texture A texture.
#' @param source A rectangle.
#' @param position A numeric vector of length 2.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);
#' ```
#'
#' @family rec functions
#' @family texture functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_texture_rec(load_texture("file.png"), rectangle(10, 10, 200, 100), c(100, 100), "red")
#'
#' @export
draw_texture_rec <- function(texture, source, position, tint) {
  lens <- c(.struct_len(texture), .struct_len(source), .vec_len(position), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    texture <- .struct_recycle(texture, n)
    source <- .struct_recycle(source, n)
    position <- .vec_recycle(position, n, 2)
    tint <- .color_recycle(tint, n)
    return(draw_texture_rec_vectorized_(texture, source, position, tint))
  }
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_rec_(texture, source, position, tint)
}

#' Draw Texture Pro
#'
#' Draw a part of a texture defined by a rectangle with 'pro' parameters.
#'
#' @param texture A texture.
#' @param source A rectangle.
#' @param dest A rectangle.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);
#' ```
#'
#' @family pro functions
#' @family texture functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_texture_pro(load_texture("file.png"), rectangle(10, 10, 200, 100), rectangle(10, 10, 200, 100), c(100, 100), 0.0, "red")
#'
#' @export
draw_texture_pro <- function(texture, source, dest, origin, rotation, tint) {
  lens <- c(.struct_len(texture), .struct_len(source), .struct_len(dest), .vec_len(origin), length(rotation), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    texture <- .struct_recycle(texture, n)
    source <- .struct_recycle(source, n)
    dest <- .struct_recycle(dest, n)
    origin <- .vec_recycle(origin, n, 2)
    rotation <- rep(rotation, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_texture_pro_vectorized_(texture, source, dest, origin, rotation, tint))
  }
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_rectangle(dest)) abort(paste0('`dest` must be a rectangle, not ', friendly_typeof(dest), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_pro_(texture, source, dest, origin, rotation, tint)
}

#' Draw Texture N Patch
#'
#' Draws a texture (or part of it) that stretches or shrinks nicely.
#'
#' @param texture A texture.
#' @param n_patch_info An n_patch_info.
#' @param dest A rectangle.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);
#' ```
#'
#' @family patch functions
#' @family texture functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_texture_n_patch(load_texture("file.png"), n_patch_info(rectangle(0, 0, 64, 64), 16L, 16L, 16L, 16L, 0L), rectangle(10, 10, 200, 100), c(100, 100), 0.0, "red")
#'
#' @export
draw_texture_n_patch <- function(texture, n_patch_info, dest, origin, rotation, tint) {
  lens <- c(.struct_len(texture), .struct_len(n_patch_info), .struct_len(dest), .vec_len(origin), length(rotation), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    texture <- .struct_recycle(texture, n)
    n_patch_info <- .struct_recycle(n_patch_info, n)
    dest <- .struct_recycle(dest, n)
    origin <- .vec_recycle(origin, n, 2)
    rotation <- rep(rotation, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_texture_n_patch_vectorized_(texture, n_patch_info, dest, origin, rotation, tint))
  }
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_n_patch_info(n_patch_info)) abort(paste0('`n_patch_info` must be an n_patch_info, not ', friendly_typeof(n_patch_info), '.'), call = NULL)
  if (!is_rectangle(dest)) abort(paste0('`dest` must be a rectangle, not ', friendly_typeof(dest), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_n_patch_(texture, n_patch_info, dest, origin, rotation, tint)
}

#' Color Is Equal
#'
#' Check if two colors are equal.
#'
#' @param col1 A color.
#' @param col2 A color.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ColorIsEqual(Color col1, Color col2);
#' ```
#'
#' @family equal functions
#' @family is functions
#'
#' @examplesIf FALSE
#' color_is_equal("red", "red")
#'
#' @export
color_is_equal <- function(col1, col2) {
  if (!is_color(col1)) abort(paste0('`col1` must be a color, not ', friendly_typeof(col1), '.'), call = NULL)
  if (!is_color(col2)) abort(paste0('`col2` must be a color, not ', friendly_typeof(col2), '.'), call = NULL)
  color_is_equal_(col1, col2)
}

#' Fade
#'
#' Get color with alpha applied, alpha goes from 0.0f to 1.0f.
#'
#' @param color A color.
#' @param alpha A number.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color Fade(Color color, float alpha);
#' ```
#'
#'
#' @examples
#' fade("red", 0.0)
#'
#' @export
fade <- function(color, alpha) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(alpha)) abort(paste0('`alpha` must be a number, not ', friendly_typeof(alpha), '.'), call = NULL)
  fade_(color, alpha)
}

#' Color To Int
#'
#' Get hexadecimal value for a Color (0xRRGGBBAA).
#'
#' @param color A color.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int ColorToInt(Color color);
#' ```
#'
#' @family int functions
#' @family to functions
#'
#' @examples
#' color_to_int("red")
#'
#' @export
color_to_int <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_to_int_(color)
}

#' Color Normalize
#'
#' Get Color normalized as float \\[0..1\\].
#'
#' @param color A color.
#'
#' @return A numeric vector of length 4
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector4 ColorNormalize(Color color);
#' ```
#'
#' @family normalize functions
#'
#' @examples
#' color_normalize("red")
#'
#' @export
color_normalize <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_normalize_(color)
}

#' Color From Normalized
#'
#' Get Color from normalized values \\[0..1\\].
#'
#' @param normalized A numeric vector of length 4.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorFromNormalized(Vector4 normalized);
#' ```
#'
#' @family normalized functions
#' @family from functions
#'
#' @examples
#' color_from_normalized(c(0, 0, 0, 1))
#'
#' @export
color_from_normalized <- function(normalized) {
  if (!is_vector_4(normalized)) abort(paste0('`normalized` must be a numeric vector of length 4, not ', friendly_typeof(normalized), '.'), call = NULL)
  color_from_normalized_(normalized)
}

#' Color To Hsv
#'
#' Get HSV values for a Color, hue \\[0..360\\], saturation/value \\[0..1\\].
#'
#' @param color A color.
#'
#' @return A numeric vector of length 3
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector3 ColorToHSV(Color color);
#' ```
#'
#' @family hsv functions
#' @family to functions
#'
#' @examples
#' color_to_hsv("red")
#'
#' @export
color_to_hsv <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_to_hsv_(color)
}

#' Color From Hsv
#'
#' Get a Color from HSV values, hue \\[0..360\\], saturation/value \\[0..1\\].
#'
#' @param hue A number.
#' @param saturation A number.
#' @param value A number.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorFromHSV(float hue, float saturation, float value);
#' ```
#'
#' @family hsv functions
#' @family from functions
#'
#' @examples
#' color_from_hsv(0.0, 0.0, 0.0)
#'
#' @export
color_from_hsv <- function(hue, saturation, value) {
  if (!is_float(hue)) abort(paste0('`hue` must be a number, not ', friendly_typeof(hue), '.'), call = NULL)
  if (!is_float(saturation)) abort(paste0('`saturation` must be a number, not ', friendly_typeof(saturation), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  color_from_hsv_(hue, saturation, value)
}

#' Color Tint
#'
#' Get color multiplied with another color.
#'
#' @param color A color.
#' @param tint A color.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorTint(Color color, Color tint);
#' ```
#'
#' @family tint functions
#'
#' @examples
#' color_tint("red", "red")
#'
#' @export
color_tint <- function(color, tint) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  color_tint_(color, tint)
}

#' Color Brightness
#'
#' Get color with brightness correction, brightness factor goes from -1.0f to 1.0f.
#'
#' @param color A color.
#' @param factor A number.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorBrightness(Color color, float factor);
#' ```
#'
#' @family brightness functions
#'
#' @examples
#' color_brightness("red", 0.0)
#'
#' @export
color_brightness <- function(color, factor) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(factor)) abort(paste0('`factor` must be a number, not ', friendly_typeof(factor), '.'), call = NULL)
  color_brightness_(color, factor)
}

#' Color Contrast
#'
#' Get color with contrast correction, contrast values between -1.0f and 1.0f.
#'
#' @param color A color.
#' @param contrast A number.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorContrast(Color color, float contrast);
#' ```
#'
#' @family contrast functions
#'
#' @examples
#' color_contrast("red", 0.0)
#'
#' @export
color_contrast <- function(color, contrast) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(contrast)) abort(paste0('`contrast` must be a number, not ', friendly_typeof(contrast), '.'), call = NULL)
  color_contrast_(color, contrast)
}

#' Color Alpha
#'
#' Get color with alpha applied, alpha goes from 0.0f to 1.0f.
#'
#' @param color A color.
#' @param alpha A number.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorAlpha(Color color, float alpha);
#' ```
#'
#' @family alpha functions
#'
#' @examples
#' color_alpha("red", 0.0)
#'
#' @export
color_alpha <- function(color, alpha) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(alpha)) abort(paste0('`alpha` must be a number, not ', friendly_typeof(alpha), '.'), call = NULL)
  color_alpha_(color, alpha)
}

#' Color Alpha Blend
#'
#' Get src alpha-blended into dst color with tint.
#'
#' @param dst A color.
#' @param src A color.
#' @param tint A color.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorAlphaBlend(Color dst, Color src, Color tint);
#' ```
#'
#' @family blend functions
#' @family alpha functions
#'
#' @examples
#' color_alpha_blend("red", "red", "red")
#'
#' @export
color_alpha_blend <- function(dst, src, tint) {
  if (!is_color(dst)) abort(paste0('`dst` must be a color, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_color(src)) abort(paste0('`src` must be a color, not ', friendly_typeof(src), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  color_alpha_blend_(dst, src, tint)
}

#' Color Lerp
#'
#' Get color lerp interpolation between two colors, factor \\[0.0f..1.0f\\].
#'
#' @param color1 A color.
#' @param color2 A color.
#' @param factor A number.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color ColorLerp(Color color1, Color color2, float factor);
#' ```
#'
#' @family lerp functions
#'
#' @examples
#' color_lerp("red", "red", 0.0)
#'
#' @export
color_lerp <- function(color1, color2, factor) {
  if (!is_color(color1)) abort(paste0('`color1` must be a color, not ', friendly_typeof(color1), '.'), call = NULL)
  if (!is_color(color2)) abort(paste0('`color2` must be a color, not ', friendly_typeof(color2), '.'), call = NULL)
  if (!is_float(factor)) abort(paste0('`factor` must be a number, not ', friendly_typeof(factor), '.'), call = NULL)
  color_lerp_(color1, color2, factor)
}

#' Get Color
#'
#' Get Color structure from hexadecimal value.
#'
#' @param hex_value A non-negative integer.
#'
#' @return A color
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Color GetColor(unsigned int hexValue);
#' ```
#'
#' @family color functions
#' @family get functions
#'
#' @examples
#' get_color(0L)
#'
#' @export
get_color <- function(hex_value) {
  if (!is_unsigned_int(hex_value)) abort(paste0('`hex_value` must be a non-negative integer, not ', friendly_typeof(hex_value), '.'), call = NULL)
  get_color_(hex_value)
}

#' Get Pixel Data Size
#'
#' Get pixel data size in bytes for certain format.
#'
#' @param width An integer.
#' @param height An integer.
#' @param format An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetPixelDataSize(int width, int height, int format);
#' ```
#'
#' @family size functions
#' @family pixel functions
#' @family get functions
#'
#' @examples
#' get_pixel_data_size(800L, 450L, 0L)
#'
#' @export
get_pixel_data_size <- function(width, height, format) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(format)) abort(paste0('`format` must be an integer, not ', friendly_typeof(format), '.'), call = NULL)
  get_pixel_data_size_(width, height, format)
}

#' Get Font Default
#'
#' Get the default Font.
#'
#'
#' @return A font
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Font GetFontDefault(void);
#' ```
#'
#' @family default functions
#' @family font functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_font_default()
#'
#' @export
get_font_default <- function() {
  get_font_default_()
}

#' Load Font
#'
#' Load font from file into GPU memory (VRAM).
#'
#' @param file_name A string.
#'
#' @return A font
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Font LoadFont(const char * fileName);
#' ```
#'
#' @family font functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_font("file.png")
#'
#' @export
load_font <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_font_(file_name)
}

#' Load Font From Image
#'
#' Load font from Image (XNA style).
#'
#' @param image An image.
#' @param key A color.
#' @param first_char An integer.
#'
#' @return A font
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Font LoadFontFromImage(Image image, Color key, int firstChar);
#' ```
#'
#' @family image functions
#' @family font functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_font_from_image(gen_image_color(100, 100, "blue"), "red", 0L)
#'
#' @export
load_font_from_image <- function(image, key, first_char) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_color(key)) abort(paste0('`key` must be a color, not ', friendly_typeof(key), '.'), call = NULL)
  if (!is_int(first_char)) abort(paste0('`first_char` must be an integer, not ', friendly_typeof(first_char), '.'), call = NULL)
  load_font_from_image_(image, key, first_char)
}

#' Is Font Valid
#'
#' Check if a font is valid (font data loaded, WARNING: GPU texture not checked).
#'
#' @param font A font.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsFontValid(Font font);
#' ```
#'
#' @family valid functions
#' @family font functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_font_valid(get_font_default())
#'
#' @export
is_font_valid <- function(font) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  is_font_valid_(font)
}

#' Unload Font
#'
#' Unload font from GPU memory (VRAM).
#'
#' @param font A font.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadFont(Font font);
#' ```
#'
#' @family font functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_font(get_font_default())
#'
#' @export
unload_font <- function(font) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  unload_font_(font)
}

#' Export Font As Code
#'
#' Export font as code file, returns true on success.
#'
#' @param font A font.
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ExportFontAsCode(Font font, const char * fileName);
#' ```
#'
#' @family code functions
#' @family font functions
#' @family export functions
#'
#' @examplesIf FALSE
#' export_font_as_code(get_font_default(), "file.png")
#'
#' @export
export_font_as_code <- function(font, file_name) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_font_as_code_(font, file_name)
}

#' Draw Fps
#'
#' Draw current FPS.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawFPS(int posX, int posY);
#' ```
#'
#' @family fps functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_fps(100L, 100L))
#'
#' @export
draw_fps <- function(pos_x = 10L, pos_y = 10L) {
  lens <- c(length(pos_x), length(pos_y))
  if (any(lens > 1)) {
    n <- max(lens)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    return(draw_fps_vectorized_(pos_x, pos_y))
  }
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  draw_fps_(pos_x, pos_y)
}

#' Draw Text
#'
#' Draw text (using default font).
#'
#' @param text A string.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param font_size An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawText(const char * text, int posX, int posY, int fontSize, Color color);
#' ```
#'
#' @family text functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot(function() draw_text("Hello", 100L, 100L, 30L, "red"))
#'
#' @export
draw_text <- function(text, pos_x, pos_y, font_size, color = "black") {
  lens <- c(length(text), length(pos_x), length(pos_y), length(font_size), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    text <- rep(text, length.out = n)
    pos_x <- rep(pos_x, length.out = n)
    pos_y <- rep(pos_y, length.out = n)
    font_size <- rep(font_size, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_text_vectorized_(text, pos_x, pos_y, font_size, color))
  }
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(font_size)) abort(paste0('`font_size` must be an integer, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_text_(text, pos_x, pos_y, font_size, color)
}

#' Draw Text Ex
#'
#' Draw text using font and additional parameters.
#'
#' @param font A font.
#' @param text A string.
#' @param position A numeric vector of length 2.
#' @param font_size A number.
#' @param spacing A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextEx(Font font, const char * text, Vector2 position, float fontSize, float spacing, Color tint);
#' ```
#'
#' @family ex functions
#' @family text functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_text_ex(get_font_default(), "Hello", c(100, 100), 1.0, 1.0, "red")
#'
#' @export
draw_text_ex <- function(font, text, position, font_size, spacing, tint) {
  lens <- c(.struct_len(font), length(text), .vec_len(position), length(font_size), length(spacing), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    font <- .struct_recycle(font, n)
    text <- rep(text, length.out = n)
    position <- .vec_recycle(position, n, 2)
    font_size <- rep(font_size, length.out = n)
    spacing <- rep(spacing, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_text_ex_vectorized_(font, text, position, font_size, spacing, tint))
  }
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_text_ex_(font, text, position, font_size, spacing, tint)
}

#' Draw Text Pro
#'
#' Draw text using Font and pro parameters (rotation).
#'
#' @param font A font.
#' @param text A string.
#' @param position A numeric vector of length 2.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param font_size A number.
#' @param spacing A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextPro(Font font, const char * text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);
#' ```
#'
#' @family pro functions
#' @family text functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_text_pro(get_font_default(), "Hello", c(100, 100), c(100, 100), 0.0, 1.0, 1.0, "red")
#'
#' @export
draw_text_pro <- function(font, text, position, origin, rotation, font_size, spacing, tint) {
  lens <- c(.struct_len(font), length(text), .vec_len(position), .vec_len(origin), length(rotation), length(font_size), length(spacing), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    font <- .struct_recycle(font, n)
    text <- rep(text, length.out = n)
    position <- .vec_recycle(position, n, 2)
    origin <- .vec_recycle(origin, n, 2)
    rotation <- rep(rotation, length.out = n)
    font_size <- rep(font_size, length.out = n)
    spacing <- rep(spacing, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_text_pro_vectorized_(font, text, position, origin, rotation, font_size, spacing, tint))
  }
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_text_pro_(font, text, position, origin, rotation, font_size, spacing, tint)
}

#' Draw Text Codepoint
#'
#' Draw one character (codepoint).
#'
#' @param font A font.
#' @param codepoint An integer.
#' @param position A numeric vector of length 2.
#' @param font_size A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);
#' ```
#'
#' @family codepoint functions
#' @family text functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_text_codepoint(get_font_default(), 0L, c(100, 100), 1.0, "red")
#'
#' @export
draw_text_codepoint <- function(font, codepoint, position, font_size, tint) {
  lens <- c(.struct_len(font), length(codepoint), .vec_len(position), length(font_size), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    font <- .struct_recycle(font, n)
    codepoint <- rep(codepoint, length.out = n)
    position <- .vec_recycle(position, n, 2)
    font_size <- rep(font_size, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_text_codepoint_vectorized_(font, codepoint, position, font_size, tint))
  }
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_int(codepoint)) abort(paste0('`codepoint` must be an integer, not ', friendly_typeof(codepoint), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_text_codepoint_(font, codepoint, position, font_size, tint)
}

#' Set Text Line Spacing
#'
#' Set vertical line spacing when drawing with line-breaks.
#'
#' @param spacing An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTextLineSpacing(int spacing);
#' ```
#'
#' @family spacing functions
#' @family text functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_text_line_spacing(0L)
#'
#' @export
set_text_line_spacing <- function(spacing) {
  if (!is_int(spacing)) abort(paste0('`spacing` must be an integer, not ', friendly_typeof(spacing), '.'), call = NULL)
  set_text_line_spacing_(spacing)
}

#' Measure Text
#'
#' Measure string width for default font.
#'
#' @param text A string.
#' @param font_size An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int MeasureText(const char * text, int fontSize);
#' ```
#'
#' @family text functions
#'
#' @examplesIf FALSE
#' measure_text("Hello", 20L)
#'
#' @export
measure_text <- function(text, font_size) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(font_size)) abort(paste0('`font_size` must be an integer, not ', friendly_typeof(font_size), '.'), call = NULL)
  measure_text_(text, font_size)
}

#' Measure Text Ex
#'
#' Measure string size for Font.
#'
#' @param font A font.
#' @param text A string.
#' @param font_size A number.
#' @param spacing A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 MeasureTextEx(Font font, const char * text, float fontSize, float spacing);
#' ```
#'
#' @family ex functions
#' @family text functions
#'
#' @examplesIf FALSE
#' measure_text_ex(get_font_default(), "Hello", 1.0, 1.0)
#'
#' @export
measure_text_ex <- function(font, text, font_size, spacing) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  measure_text_ex_(font, text, font_size, spacing)
}

#' Get Glyph Index
#'
#' Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found.
#'
#' @param font A font.
#' @param codepoint An integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetGlyphIndex(Font font, int codepoint);
#' ```
#'
#' @family index functions
#' @family glyph functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_glyph_index(get_font_default(), 0L)
#'
#' @export
get_glyph_index <- function(font, codepoint) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_int(codepoint)) abort(paste0('`codepoint` must be an integer, not ', friendly_typeof(codepoint), '.'), call = NULL)
  get_glyph_index_(font, codepoint)
}

#' Get Glyph Info
#'
#' Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found.
#'
#' @param font A font.
#' @param codepoint An integer.
#'
#' @return A glyph_info
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' GlyphInfo GetGlyphInfo(Font font, int codepoint);
#' ```
#'
#' @family info functions
#' @family glyph functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_glyph_info(get_font_default(), 0L)
#'
#' @export
get_glyph_info <- function(font, codepoint) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_int(codepoint)) abort(paste0('`codepoint` must be an integer, not ', friendly_typeof(codepoint), '.'), call = NULL)
  get_glyph_info_(font, codepoint)
}

#' Get Glyph Atlas Rec
#'
#' Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found.
#'
#' @param font A font.
#' @param codepoint An integer.
#'
#' @return A rectangle
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Rectangle GetGlyphAtlasRec(Font font, int codepoint);
#' ```
#'
#' @family rec functions
#' @family glyph functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_glyph_atlas_rec(get_font_default(), 0L)
#'
#' @export
get_glyph_atlas_rec <- function(font, codepoint) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_int(codepoint)) abort(paste0('`codepoint` must be an integer, not ', friendly_typeof(codepoint), '.'), call = NULL)
  get_glyph_atlas_rec_(font, codepoint)
}

#' Get Codepoint Count
#'
#' Get total number of codepoints in a UTF-8 encoded string.
#'
#' @param text A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetCodepointCount(const char * text);
#' ```
#'
#' @family count functions
#' @family codepoint functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_codepoint_count("Hello")
#'
#' @export
get_codepoint_count <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  get_codepoint_count_(text)
}

#' Text Is Equal
#'
#' Check if two text string are equal.
#'
#' @param text1 A string.
#' @param text2 A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool TextIsEqual(const char * text1, const char * text2);
#' ```
#'
#' @family equal functions
#' @family is functions
#'
#' @examplesIf FALSE
#' text_is_equal("Hello", "Hello")
#'
#' @export
text_is_equal <- function(text1, text2) {
  if (!is_const_char_pointer(text1)) abort(paste0('`text1` must be a string, not ', friendly_typeof(text1), '.'), call = NULL)
  if (!is_const_char_pointer(text2)) abort(paste0('`text2` must be a string, not ', friendly_typeof(text2), '.'), call = NULL)
  text_is_equal_(text1, text2)
}

#' Text Length
#'
#' Get text length, checks for '\0' ending.
#'
#' @param text A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' unsigned int TextLength(const char * text);
#' ```
#'
#' @family length functions
#'
#' @examplesIf FALSE
#' text_length("Hello")
#'
#' @export
text_length <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_length_(text)
}

#' Text Subtext
#'
#' Get a piece of a text string.
#'
#' @param text A string.
#' @param position An integer.
#' @param length An integer.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * TextSubtext(const char * text, int position, int length);
#' ```
#'
#' @family subtext functions
#'
#' @examplesIf FALSE
#' text_subtext("Hello", 0L, 0L)
#'
#' @export
text_subtext <- function(text, position, length) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(position)) abort(paste0('`position` must be an integer, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_int(length)) abort(paste0('`length` must be an integer, not ', friendly_typeof(length), '.'), call = NULL)
  text_subtext_(text, position, length)
}

#' Text Remove Spaces
#'
#' Remove text spaces, concat words.
#'
#' @param text A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char * TextRemoveSpaces(const char * text);
#' ```
#'
#' @family spaces functions
#' @family remove functions
#'
#' @examplesIf FALSE
#' text_remove_spaces("Hello")
#'
#' @export
text_remove_spaces <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_remove_spaces_(text)
}

#' Get Text Between
#'
#' Get text between two strings.
#'
#' @param text A string.
#' @param begin A string.
#' @param end A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * GetTextBetween(const char * text, const char * begin, const char * end);
#' ```
#'
#' @family between functions
#' @family text functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_text_between("Hello", "text", "text")
#'
#' @export
get_text_between <- function(text, begin, end) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(begin)) abort(paste0('`begin` must be a string, not ', friendly_typeof(begin), '.'), call = NULL)
  if (!is_const_char_pointer(end)) abort(paste0('`end` must be a string, not ', friendly_typeof(end), '.'), call = NULL)
  get_text_between_(text, begin, end)
}

#' Text Replace
#'
#' Replace text string with new string.
#'
#' @param text A string.
#' @param search A string.
#' @param replacement A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextReplace(const char * text, const char * search, const char * replacement);
#' ```
#'
#' @family replace functions
#'
#' @examplesIf FALSE
#' text_replace("Hello", "text", "text")
#'
#' @export
text_replace <- function(text, search, replacement) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(search)) abort(paste0('`search` must be a string, not ', friendly_typeof(search), '.'), call = NULL)
  if (!is_const_char_pointer(replacement)) abort(paste0('`replacement` must be a string, not ', friendly_typeof(replacement), '.'), call = NULL)
  text_replace_(text, search, replacement)
}

#' Text Replace Alloc
#'
#' Replace text string with new string, memory must be MemFree().
#'
#' @param text A string.
#' @param search A string.
#' @param replacement A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextReplaceAlloc(const char * text, const char * search, const char * replacement);
#' ```
#'
#' @family alloc functions
#' @family replace functions
#'
#' @examplesIf FALSE
#' text_replace_alloc("Hello", "text", "text")
#'
#' @export
text_replace_alloc <- function(text, search, replacement) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(search)) abort(paste0('`search` must be a string, not ', friendly_typeof(search), '.'), call = NULL)
  if (!is_const_char_pointer(replacement)) abort(paste0('`replacement` must be a string, not ', friendly_typeof(replacement), '.'), call = NULL)
  text_replace_alloc_(text, search, replacement)
}

#' Text Replace Between
#'
#' Replace text between two specific strings.
#'
#' @param text A string.
#' @param begin A string.
#' @param end A string.
#' @param replacement A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextReplaceBetween(const char * text, const char * begin, const char * end, const char * replacement);
#' ```
#'
#' @family between functions
#' @family replace functions
#'
#' @examplesIf FALSE
#' text_replace_between("Hello", "text", "text", "text")
#'
#' @export
text_replace_between <- function(text, begin, end, replacement) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(begin)) abort(paste0('`begin` must be a string, not ', friendly_typeof(begin), '.'), call = NULL)
  if (!is_const_char_pointer(end)) abort(paste0('`end` must be a string, not ', friendly_typeof(end), '.'), call = NULL)
  if (!is_const_char_pointer(replacement)) abort(paste0('`replacement` must be a string, not ', friendly_typeof(replacement), '.'), call = NULL)
  text_replace_between_(text, begin, end, replacement)
}

#' Text Replace Between Alloc
#'
#' Replace text between two specific strings, memory must be MemFree().
#'
#' @param text A string.
#' @param begin A string.
#' @param end A string.
#' @param replacement A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextReplaceBetweenAlloc(const char * text, const char * begin, const char * end, const char * replacement);
#' ```
#'
#' @family alloc functions
#' @family replace functions
#'
#' @examplesIf FALSE
#' text_replace_between_alloc("Hello", "text", "text", "text")
#'
#' @export
text_replace_between_alloc <- function(text, begin, end, replacement) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(begin)) abort(paste0('`begin` must be a string, not ', friendly_typeof(begin), '.'), call = NULL)
  if (!is_const_char_pointer(end)) abort(paste0('`end` must be a string, not ', friendly_typeof(end), '.'), call = NULL)
  if (!is_const_char_pointer(replacement)) abort(paste0('`replacement` must be a string, not ', friendly_typeof(replacement), '.'), call = NULL)
  text_replace_between_alloc_(text, begin, end, replacement)
}

#' Text Insert
#'
#' Insert text in a defined byte position.
#'
#' @param text A string.
#' @param insert A string.
#' @param position An integer.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextInsert(const char * text, const char * insert, int position);
#' ```
#'
#' @family insert functions
#'
#' @examplesIf FALSE
#' text_insert("Hello", "text", 0L)
#'
#' @export
text_insert <- function(text, insert, position) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(insert)) abort(paste0('`insert` must be a string, not ', friendly_typeof(insert), '.'), call = NULL)
  if (!is_int(position)) abort(paste0('`position` must be an integer, not ', friendly_typeof(position), '.'), call = NULL)
  text_insert_(text, insert, position)
}

#' Text Insert Alloc
#'
#' Insert text in a defined byte position, memory must be MemFree().
#'
#' @param text A string.
#' @param insert A string.
#' @param position An integer.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextInsertAlloc(const char * text, const char * insert, int position);
#' ```
#'
#' @family alloc functions
#' @family insert functions
#'
#' @examplesIf FALSE
#' text_insert_alloc("Hello", "text", 0L)
#'
#' @export
text_insert_alloc <- function(text, insert, position) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(insert)) abort(paste0('`insert` must be a string, not ', friendly_typeof(insert), '.'), call = NULL)
  if (!is_int(position)) abort(paste0('`position` must be an integer, not ', friendly_typeof(position), '.'), call = NULL)
  text_insert_alloc_(text, insert, position)
}

#' Text Find Index
#'
#' Find first text occurrence within a string, -1 if not found.
#'
#' @param text A string.
#' @param search A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int TextFindIndex(const char * text, const char * search);
#' ```
#'
#' @family index functions
#' @family find functions
#'
#' @examplesIf FALSE
#' text_find_index("Hello", "text")
#'
#' @export
text_find_index <- function(text, search) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(search)) abort(paste0('`search` must be a string, not ', friendly_typeof(search), '.'), call = NULL)
  text_find_index_(text, search)
}

#' Text To Upper
#'
#' Get upper case version of provided string.
#'
#' @param text A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextToUpper(const char * text);
#' ```
#'
#' @family upper functions
#' @family to functions
#'
#' @examplesIf FALSE
#' text_to_upper("Hello")
#'
#' @export
text_to_upper <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_upper_(text)
}

#' Text To Lower
#'
#' Get lower case version of provided string.
#'
#' @param text A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextToLower(const char * text);
#' ```
#'
#' @family lower functions
#' @family to functions
#'
#' @examplesIf FALSE
#' text_to_lower("Hello")
#'
#' @export
text_to_lower <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_lower_(text)
}

#' Text To Pascal
#'
#' Get Pascal case notation version of provided string.
#'
#' @param text A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextToPascal(const char * text);
#' ```
#'
#' @family pascal functions
#' @family to functions
#'
#' @examplesIf FALSE
#' text_to_pascal("Hello")
#'
#' @export
text_to_pascal <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_pascal_(text)
}

#' Text To Snake
#'
#' Get Snake case notation version of provided string.
#'
#' @param text A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextToSnake(const char * text);
#' ```
#'
#' @family snake functions
#' @family to functions
#'
#' @examplesIf FALSE
#' text_to_snake("Hello")
#'
#' @export
text_to_snake <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_snake_(text)
}

#' Text To Camel
#'
#' Get Camel case notation version of provided string.
#'
#' @param text A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char * TextToCamel(const char * text);
#' ```
#'
#' @family camel functions
#' @family to functions
#'
#' @examplesIf FALSE
#' text_to_camel("Hello")
#'
#' @export
text_to_camel <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_camel_(text)
}

#' Text To Integer
#'
#' Get integer value from text.
#'
#' @param text A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int TextToInteger(const char * text);
#' ```
#'
#' @family integer functions
#' @family to functions
#'
#' @examplesIf FALSE
#' text_to_integer("Hello")
#'
#' @export
text_to_integer <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_integer_(text)
}

#' Text To Float
#'
#' Get float value from text.
#'
#' @param text A string.
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float TextToFloat(const char * text);
#' ```
#'
#' @family float functions
#' @family to functions
#'
#' @examplesIf FALSE
#' text_to_float("Hello")
#'
#' @export
text_to_float <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_float_(text)
}

#' Draw Line 3d
#'
#' Draw a line in 3D world space.
#'
#' @param start_pos A numeric vector of length 3.
#' @param end_pos A numeric vector of length 3.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);
#' ```
#'
#' @family 3d functions
#' @family line functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_line_3d(c(-1, 0, 0), c(1, 0, 0), "red"))
#'
#' @export
draw_line_3d <- function(start_pos, end_pos, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 3)
    end_pos <- .vec_recycle(end_pos, n, 3)
    color <- .color_recycle(color, n)
    return(draw_line_3d_vectorized_(start_pos, end_pos, color))
  }
  if (!is_vector_3(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 3, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_3(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 3, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_3d_(start_pos, end_pos, color)
}

#' Draw Point 3d
#'
#' Draw a point in 3D space, actually a small line.
#'
#' @param position A numeric vector of length 3.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPoint3D(Vector3 position, Color color);
#' ```
#'
#' @family 3d functions
#' @family point functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_point_3d(c(0, 0, 0), "red"))
#'
#' @export
draw_point_3d <- function(position, color) {
  lens <- c(.vec_len(position), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 3)
    color <- .color_recycle(color, n)
    return(draw_point_3d_vectorized_(position, color))
  }
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_point_3d_(position, color)
}

#' Draw Circle 3d
#'
#' Draw a circle in 3D world space.
#'
#' @param center A numeric vector of length 3.
#' @param radius A number.
#' @param rotation_axis A numeric vector of length 3.
#' @param rotation_angle A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);
#' ```
#'
#' @family 3d functions
#' @family circle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_circle_3d(c(0, 0, 0), 1.0, c(0, 1, 0), 0.0, "red"))
#'
#' @export
draw_circle_3d <- function(center, radius, rotation_axis, rotation_angle, color) {
  lens <- c(.vec_len(center), length(radius), .vec_len(rotation_axis), length(rotation_angle), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center <- .vec_recycle(center, n, 3)
    radius <- rep(radius, length.out = n)
    rotation_axis <- .vec_recycle(rotation_axis, n, 3)
    rotation_angle <- rep(rotation_angle, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_circle_3d_vectorized_(center, radius, rotation_axis, rotation_angle, color))
  }
  if (!is_vector_3(center)) abort(paste0('`center` must be a numeric vector of length 3, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_vector_3(rotation_axis)) abort(paste0('`rotation_axis` must be a numeric vector of length 3, not ', friendly_typeof(rotation_axis), '.'), call = NULL)
  if (!is_float(rotation_angle)) abort(paste0('`rotation_angle` must be a number, not ', friendly_typeof(rotation_angle), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_3d_(center, radius, rotation_axis, rotation_angle, color)
}

#' Draw Triangle 3d
#'
#' Draw a color-filled triangle (vertex in counter-clockwise order!).
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#' @param v3 A numeric vector of length 3.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);
#' ```
#'
#' @family 3d functions
#' @family triangle functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_triangle_3d(c(-1, 0, 0), c(1, 0, 0), c(0, 1, 0), "red"))
#'
#' @export
draw_triangle_3d <- function(v1, v2, v3, color) {
  lens <- c(.vec_len(v1), .vec_len(v2), .vec_len(v3), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    v1 <- .vec_recycle(v1, n, 3)
    v2 <- .vec_recycle(v2, n, 3)
    v3 <- .vec_recycle(v3, n, 3)
    color <- .color_recycle(color, n)
    return(draw_triangle_3d_vectorized_(v1, v2, v3, color))
  }
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_vector_3(v3)) abort(paste0('`v3` must be a numeric vector of length 3, not ', friendly_typeof(v3), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_triangle_3d_(v1, v2, v3, color)
}

#' Draw Cube
#'
#' Draw cube.
#'
#' @param position A numeric vector of length 3.
#' @param width A number.
#' @param height A number.
#' @param length A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCube(Vector3 position, float width, float height, float length, Color color);
#' ```
#'
#' @family cube functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cube(c(0, 0, 0), 2.0, 2.0, 2.0, "red"))
#'
#' @export
draw_cube <- function(position, width, height, length, color) {
  lens <- c(.vec_len(position), length(width), length(height), length(length), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 3)
    width <- rep(width, length.out = n)
    height <- rep(height, length.out = n)
    length <- rep(length, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_cube_vectorized_(position, width, height, length, color))
  }
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(length)) abort(paste0('`length` must be a number, not ', friendly_typeof(length), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_(position, width, height, length, color)
}

#' Draw Cube V
#'
#' Draw cube (Vector version).
#'
#' @param position A numeric vector of length 3.
#' @param size A numeric vector of length 3.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeV(Vector3 position, Vector3 size, Color color);
#' ```
#'
#' @family v functions
#' @family cube functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cube_v(c(0, 0, 0), c(2, 2, 2), "red"))
#'
#' @export
draw_cube_v <- function(position, size, color) {
  lens <- c(.vec_len(position), .vec_len(size), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 3)
    size <- .vec_recycle(size, n, 3)
    color <- .color_recycle(color, n)
    return(draw_cube_v_vectorized_(position, size, color))
  }
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(size)) abort(paste0('`size` must be a numeric vector of length 3, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_v_(position, size, color)
}

#' Draw Cube Wires
#'
#' Draw cube wires.
#'
#' @param position A numeric vector of length 3.
#' @param width A number.
#' @param height A number.
#' @param length A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
#' ```
#'
#' @family wires functions
#' @family cube functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cube_wires(c(0, 0, 0), 2.0, 2.0, 2.0, "red"))
#'
#' @export
draw_cube_wires <- function(position, width, height, length, color) {
  lens <- c(.vec_len(position), length(width), length(height), length(length), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 3)
    width <- rep(width, length.out = n)
    height <- rep(height, length.out = n)
    length <- rep(length, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_cube_wires_vectorized_(position, width, height, length, color))
  }
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(length)) abort(paste0('`length` must be a number, not ', friendly_typeof(length), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_wires_(position, width, height, length, color)
}

#' Draw Cube Wires V
#'
#' Draw cube wires (Vector version).
#'
#' @param position A numeric vector of length 3.
#' @param size A numeric vector of length 3.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
#' ```
#'
#' @family v functions
#' @family cube functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cube_wires_v(c(0, 0, 0), c(2, 2, 2), "red"))
#'
#' @export
draw_cube_wires_v <- function(position, size, color) {
  lens <- c(.vec_len(position), .vec_len(size), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 3)
    size <- .vec_recycle(size, n, 3)
    color <- .color_recycle(color, n)
    return(draw_cube_wires_v_vectorized_(position, size, color))
  }
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(size)) abort(paste0('`size` must be a numeric vector of length 3, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_wires_v_(position, size, color)
}

#' Draw Sphere
#'
#' Draw sphere.
#'
#' @param center_pos A numeric vector of length 3.
#' @param radius A number.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSphere(Vector3 centerPos, float radius, Color color);
#' ```
#'
#' @family sphere functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_sphere(c(0, 0, 0), 1.0, "red"))
#'
#' @export
draw_sphere <- function(center_pos, radius, color) {
  lens <- c(.vec_len(center_pos), length(radius), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_pos <- .vec_recycle(center_pos, n, 3)
    radius <- rep(radius, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_sphere_vectorized_(center_pos, radius, color))
  }
  if (!is_vector_3(center_pos)) abort(paste0('`center_pos` must be a numeric vector of length 3, not ', friendly_typeof(center_pos), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_sphere_(center_pos, radius, color)
}

#' Draw Sphere Ex
#'
#' Draw sphere with extended parameters.
#'
#' @param center_pos A numeric vector of length 3.
#' @param radius A number.
#' @param rings An integer.
#' @param slices An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);
#' ```
#'
#' @family ex functions
#' @family sphere functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_sphere_ex(c(0, 0, 0), 1.0, 16L, 16L, "red"))
#'
#' @export
draw_sphere_ex <- function(center_pos, radius, rings, slices, color) {
  lens <- c(.vec_len(center_pos), length(radius), length(rings), length(slices), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_pos <- .vec_recycle(center_pos, n, 3)
    radius <- rep(radius, length.out = n)
    rings <- rep(rings, length.out = n)
    slices <- rep(slices, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_sphere_ex_vectorized_(center_pos, radius, rings, slices, color))
  }
  if (!is_vector_3(center_pos)) abort(paste0('`center_pos` must be a numeric vector of length 3, not ', friendly_typeof(center_pos), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_int(rings)) abort(paste0('`rings` must be an integer, not ', friendly_typeof(rings), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_sphere_ex_(center_pos, radius, rings, slices, color)
}

#' Draw Sphere Wires
#'
#' Draw sphere wires.
#'
#' @param center_pos A numeric vector of length 3.
#' @param radius A number.
#' @param rings An integer.
#' @param slices An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);
#' ```
#'
#' @family wires functions
#' @family sphere functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_sphere_wires(c(0, 0, 0), 1.0, 16L, 16L, "red"))
#'
#' @export
draw_sphere_wires <- function(center_pos, radius, rings, slices, color) {
  lens <- c(.vec_len(center_pos), length(radius), length(rings), length(slices), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_pos <- .vec_recycle(center_pos, n, 3)
    radius <- rep(radius, length.out = n)
    rings <- rep(rings, length.out = n)
    slices <- rep(slices, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_sphere_wires_vectorized_(center_pos, radius, rings, slices, color))
  }
  if (!is_vector_3(center_pos)) abort(paste0('`center_pos` must be a numeric vector of length 3, not ', friendly_typeof(center_pos), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_int(rings)) abort(paste0('`rings` must be an integer, not ', friendly_typeof(rings), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_sphere_wires_(center_pos, radius, rings, slices, color)
}

#' Draw Cylinder
#'
#' Draw a cylinder/cone.
#'
#' @param position A numeric vector of length 3.
#' @param radius_top A number.
#' @param radius_bottom A number.
#' @param height A number.
#' @param slices An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
#' ```
#'
#' @family cylinder functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cylinder(c(0, 0, 0), 1.0, 1.0, 2.0, 16L, "red"))
#'
#' @export
draw_cylinder <- function(position, radius_top, radius_bottom, height, slices, color) {
  lens <- c(.vec_len(position), length(radius_top), length(radius_bottom), length(height), length(slices), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 3)
    radius_top <- rep(radius_top, length.out = n)
    radius_bottom <- rep(radius_bottom, length.out = n)
    height <- rep(height, length.out = n)
    slices <- rep(slices, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_cylinder_vectorized_(position, radius_top, radius_bottom, height, slices, color))
  }
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(radius_top)) abort(paste0('`radius_top` must be a number, not ', friendly_typeof(radius_top), '.'), call = NULL)
  if (!is_float(radius_bottom)) abort(paste0('`radius_bottom` must be a number, not ', friendly_typeof(radius_bottom), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cylinder_(position, radius_top, radius_bottom, height, slices, color)
}

#' Draw Cylinder Ex
#'
#' Draw a cylinder with base at startPos and top at endPos.
#'
#' @param start_pos A numeric vector of length 3.
#' @param end_pos A numeric vector of length 3.
#' @param start_radius A number.
#' @param end_radius A number.
#' @param sides An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
#' ```
#'
#' @family ex functions
#' @family cylinder functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cylinder_ex(c(-1, 0, 0), c(1, 0, 0), 1.0, 1.0, 16L, "red"))
#'
#' @export
draw_cylinder_ex <- function(start_pos, end_pos, start_radius, end_radius, sides, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), length(start_radius), length(end_radius), length(sides), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 3)
    end_pos <- .vec_recycle(end_pos, n, 3)
    start_radius <- rep(start_radius, length.out = n)
    end_radius <- rep(end_radius, length.out = n)
    sides <- rep(sides, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_cylinder_ex_vectorized_(start_pos, end_pos, start_radius, end_radius, sides, color))
  }
  if (!is_vector_3(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 3, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_3(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 3, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(start_radius)) abort(paste0('`start_radius` must be a number, not ', friendly_typeof(start_radius), '.'), call = NULL)
  if (!is_float(end_radius)) abort(paste0('`end_radius` must be a number, not ', friendly_typeof(end_radius), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cylinder_ex_(start_pos, end_pos, start_radius, end_radius, sides, color)
}

#' Draw Cylinder Wires
#'
#' Draw a cylinder/cone wires.
#'
#' @param position A numeric vector of length 3.
#' @param radius_top A number.
#' @param radius_bottom A number.
#' @param height A number.
#' @param slices An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
#' ```
#'
#' @family wires functions
#' @family cylinder functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cylinder_wires(c(0, 0, 0), 1.0, 1.0, 2.0, 16L, "red"))
#'
#' @export
draw_cylinder_wires <- function(position, radius_top, radius_bottom, height, slices, color) {
  lens <- c(.vec_len(position), length(radius_top), length(radius_bottom), length(height), length(slices), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    position <- .vec_recycle(position, n, 3)
    radius_top <- rep(radius_top, length.out = n)
    radius_bottom <- rep(radius_bottom, length.out = n)
    height <- rep(height, length.out = n)
    slices <- rep(slices, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_cylinder_wires_vectorized_(position, radius_top, radius_bottom, height, slices, color))
  }
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(radius_top)) abort(paste0('`radius_top` must be a number, not ', friendly_typeof(radius_top), '.'), call = NULL)
  if (!is_float(radius_bottom)) abort(paste0('`radius_bottom` must be a number, not ', friendly_typeof(radius_bottom), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cylinder_wires_(position, radius_top, radius_bottom, height, slices, color)
}

#' Draw Cylinder Wires Ex
#'
#' Draw a cylinder wires with base at startPos and top at endPos.
#'
#' @param start_pos A numeric vector of length 3.
#' @param end_pos A numeric vector of length 3.
#' @param start_radius A number.
#' @param end_radius A number.
#' @param sides An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
#' ```
#'
#' @family ex functions
#' @family cylinder functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_cylinder_wires_ex(c(-1, 0, 0), c(1, 0, 0), 1.0, 1.0, 16L, "red"))
#'
#' @export
draw_cylinder_wires_ex <- function(start_pos, end_pos, start_radius, end_radius, sides, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), length(start_radius), length(end_radius), length(sides), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 3)
    end_pos <- .vec_recycle(end_pos, n, 3)
    start_radius <- rep(start_radius, length.out = n)
    end_radius <- rep(end_radius, length.out = n)
    sides <- rep(sides, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_cylinder_wires_ex_vectorized_(start_pos, end_pos, start_radius, end_radius, sides, color))
  }
  if (!is_vector_3(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 3, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_3(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 3, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(start_radius)) abort(paste0('`start_radius` must be a number, not ', friendly_typeof(start_radius), '.'), call = NULL)
  if (!is_float(end_radius)) abort(paste0('`end_radius` must be a number, not ', friendly_typeof(end_radius), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cylinder_wires_ex_(start_pos, end_pos, start_radius, end_radius, sides, color)
}

#' Draw Capsule
#'
#' Draw a capsule with the center of its sphere caps at startPos and endPos.
#'
#' @param start_pos A numeric vector of length 3.
#' @param end_pos A numeric vector of length 3.
#' @param radius A number.
#' @param slices An integer.
#' @param rings An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);
#' ```
#'
#' @family capsule functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_capsule(c(-1, 0, 0), c(1, 0, 0), 1.0, 16L, 16L, "red"))
#'
#' @export
draw_capsule <- function(start_pos, end_pos, radius, slices, rings, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), length(radius), length(slices), length(rings), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 3)
    end_pos <- .vec_recycle(end_pos, n, 3)
    radius <- rep(radius, length.out = n)
    slices <- rep(slices, length.out = n)
    rings <- rep(rings, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_capsule_vectorized_(start_pos, end_pos, radius, slices, rings, color))
  }
  if (!is_vector_3(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 3, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_3(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 3, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_int(rings)) abort(paste0('`rings` must be an integer, not ', friendly_typeof(rings), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_capsule_(start_pos, end_pos, radius, slices, rings, color)
}

#' Draw Capsule Wires
#'
#' Draw capsule wireframe with the center of its sphere caps at startPos and endPos.
#'
#' @param start_pos A numeric vector of length 3.
#' @param end_pos A numeric vector of length 3.
#' @param radius A number.
#' @param slices An integer.
#' @param rings An integer.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);
#' ```
#'
#' @family wires functions
#' @family capsule functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_capsule_wires(c(-1, 0, 0), c(1, 0, 0), 1.0, 16L, 16L, "red"))
#'
#' @export
draw_capsule_wires <- function(start_pos, end_pos, radius, slices, rings, color) {
  lens <- c(.vec_len(start_pos), .vec_len(end_pos), length(radius), length(slices), length(rings), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    start_pos <- .vec_recycle(start_pos, n, 3)
    end_pos <- .vec_recycle(end_pos, n, 3)
    radius <- rep(radius, length.out = n)
    slices <- rep(slices, length.out = n)
    rings <- rep(rings, length.out = n)
    color <- .color_recycle(color, n)
    return(draw_capsule_wires_vectorized_(start_pos, end_pos, radius, slices, rings, color))
  }
  if (!is_vector_3(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 3, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_3(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 3, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_int(rings)) abort(paste0('`rings` must be an integer, not ', friendly_typeof(rings), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_capsule_wires_(start_pos, end_pos, radius, slices, rings, color)
}

#' Draw Plane
#'
#' Draw a plane XZ.
#'
#' @param center_pos A numeric vector of length 3.
#' @param size A numeric vector of length 2.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPlane(Vector3 centerPos, Vector2 size, Color color);
#' ```
#'
#' @family plane functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_plane(c(0, 0, 0), c(4, 4), "red"))
#'
#' @export
draw_plane <- function(center_pos, size, color) {
  lens <- c(.vec_len(center_pos), .vec_len(size), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    center_pos <- .vec_recycle(center_pos, n, 3)
    size <- .vec_recycle(size, n, 2)
    color <- .color_recycle(color, n)
    return(draw_plane_vectorized_(center_pos, size, color))
  }
  if (!is_vector_3(center_pos)) abort(paste0('`center_pos` must be a numeric vector of length 3, not ', friendly_typeof(center_pos), '.'), call = NULL)
  if (!is_vector_2(size)) abort(paste0('`size` must be a numeric vector of length 2, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_plane_(center_pos, size, color)
}

#' Draw Ray
#'
#' Draw a ray line.
#'
#' @param ray A ray.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRay(Ray ray, Color color);
#' ```
#'
#' @family ray functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_ray(ray(c(0, 0, 0), c(0, 0, 1)), "red")
#'
#' @export
draw_ray <- function(ray, color) {
  lens <- c(.struct_len(ray), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    ray <- .struct_recycle(ray, n)
    color <- .color_recycle(color, n)
    return(draw_ray_vectorized_(ray, color))
  }
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ray_(ray, color)
}

#' Draw Grid
#'
#' Draw a grid (centered at (0, 0, 0)).
#'
#' @param slices An integer.
#' @param spacing A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawGrid(int slices, float spacing);
#' ```
#'
#' @family grid functions
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' raylibr_screenshot_3d(function() draw_grid(16L, 1.0))
#'
#' @export
draw_grid <- function(slices = 10L, spacing = 1) {
  lens <- c(length(slices), length(spacing))
  if (any(lens > 1)) {
    n <- max(lens)
    slices <- rep(slices, length.out = n)
    spacing <- rep(spacing, length.out = n)
    return(draw_grid_vectorized_(slices, spacing))
  }
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  draw_grid_(slices, spacing)
}

#' Load Model
#'
#' Load model from files (meshes and materials).
#'
#' @param file_name A string.
#'
#' @return A model
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Model LoadModel(const char * fileName);
#' ```
#'
#' @family model functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_model("file.png")
#'
#' @export
load_model <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_model_(file_name)
}

#' Load Model From Mesh
#'
#' Load model from generated mesh (default material).
#'
#' @param mesh A mesh.
#'
#' @return A model
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Model LoadModelFromMesh(Mesh mesh);
#' ```
#'
#' @family mesh functions
#' @family model functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_model_from_mesh(gen_mesh_cube(1.0, 1.0, 1.0))
#'
#' @export
load_model_from_mesh <- function(mesh) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  load_model_from_mesh_(mesh)
}

#' Is Model Valid
#'
#' Check if a model is valid (loaded in GPU, VAO/VBOs).
#'
#' @param model A model.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsModelValid(Model model);
#' ```
#'
#' @family valid functions
#' @family model functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_model_valid(load_model("model.obj"))
#'
#' @export
is_model_valid <- function(model) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  is_model_valid_(model)
}

#' Unload Model
#'
#' Unload model (including meshes) from memory (RAM and/or VRAM).
#'
#' @param model A model.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadModel(Model model);
#' ```
#'
#' @family model functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_model(load_model("model.obj"))
#'
#' @export
unload_model <- function(model) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  unload_model_(model)
}

#' Get Model Bounding Box
#'
#' Compute model bounding box limits (considers all meshes).
#'
#' @param model A model.
#'
#' @return A bounding_box
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' BoundingBox GetModelBoundingBox(Model model);
#' ```
#'
#' @family box functions
#' @family model functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_model_bounding_box(load_model("model.obj"))
#'
#' @export
get_model_bounding_box <- function(model) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  get_model_bounding_box_(model)
}

#' Draw Model
#'
#' Draw a model (with texture if set).
#'
#' @param model A model.
#' @param position A numeric vector of length 3.
#' @param scale A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawModel(Model model, Vector3 position, float scale, Color tint);
#' ```
#'
#' @family model functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_model(load_model("model.obj"), c(0, 5, 0), 1.0, "red")
#'
#' @export
draw_model <- function(model, position, scale, tint) {
  lens <- c(.struct_len(model), .vec_len(position), length(scale), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    model <- .struct_recycle(model, n)
    position <- .vec_recycle(position, n, 3)
    scale <- rep(scale, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_model_vectorized_(model, position, scale, tint))
  }
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_model_(model, position, scale, tint)
}

#' Draw Model Ex
#'
#' Draw a model with extended parameters.
#'
#' @param model A model.
#' @param position A numeric vector of length 3.
#' @param rotation_axis A numeric vector of length 3.
#' @param rotation_angle A number.
#' @param scale A numeric vector of length 3.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
#' ```
#'
#' @family ex functions
#' @family model functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_model_ex(load_model("model.obj"), c(0, 5, 0), c(0, 0, 0), 0.0, c(1, 1, 1), "red")
#'
#' @export
draw_model_ex <- function(model, position, rotation_axis, rotation_angle, scale, tint) {
  lens <- c(.struct_len(model), .vec_len(position), .vec_len(rotation_axis), length(rotation_angle), .vec_len(scale), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    model <- .struct_recycle(model, n)
    position <- .vec_recycle(position, n, 3)
    rotation_axis <- .vec_recycle(rotation_axis, n, 3)
    rotation_angle <- rep(rotation_angle, length.out = n)
    scale <- .vec_recycle(scale, n, 3)
    tint <- .color_recycle(tint, n)
    return(draw_model_ex_vectorized_(model, position, rotation_axis, rotation_angle, scale, tint))
  }
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(rotation_axis)) abort(paste0('`rotation_axis` must be a numeric vector of length 3, not ', friendly_typeof(rotation_axis), '.'), call = NULL)
  if (!is_float(rotation_angle)) abort(paste0('`rotation_angle` must be a number, not ', friendly_typeof(rotation_angle), '.'), call = NULL)
  if (!is_vector_3(scale)) abort(paste0('`scale` must be a numeric vector of length 3, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_model_ex_(model, position, rotation_axis, rotation_angle, scale, tint)
}

#' Draw Model Wires
#'
#' Draw a model wires (with texture if set).
#'
#' @param model A model.
#' @param position A numeric vector of length 3.
#' @param scale A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawModelWires(Model model, Vector3 position, float scale, Color tint);
#' ```
#'
#' @family wires functions
#' @family model functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_model_wires(load_model("model.obj"), c(0, 5, 0), 1.0, "red")
#'
#' @export
draw_model_wires <- function(model, position, scale, tint) {
  lens <- c(.struct_len(model), .vec_len(position), length(scale), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    model <- .struct_recycle(model, n)
    position <- .vec_recycle(position, n, 3)
    scale <- rep(scale, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_model_wires_vectorized_(model, position, scale, tint))
  }
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_model_wires_(model, position, scale, tint)
}

#' Draw Model Wires Ex
#'
#' Draw a model wires (with texture if set) with extended parameters.
#'
#' @param model A model.
#' @param position A numeric vector of length 3.
#' @param rotation_axis A numeric vector of length 3.
#' @param rotation_angle A number.
#' @param scale A numeric vector of length 3.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
#' ```
#'
#' @family ex functions
#' @family model functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_model_wires_ex(load_model("model.obj"), c(0, 5, 0), c(0, 0, 0), 0.0, c(1, 1, 1), "red")
#'
#' @export
draw_model_wires_ex <- function(model, position, rotation_axis, rotation_angle, scale, tint) {
  lens <- c(.struct_len(model), .vec_len(position), .vec_len(rotation_axis), length(rotation_angle), .vec_len(scale), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    model <- .struct_recycle(model, n)
    position <- .vec_recycle(position, n, 3)
    rotation_axis <- .vec_recycle(rotation_axis, n, 3)
    rotation_angle <- rep(rotation_angle, length.out = n)
    scale <- .vec_recycle(scale, n, 3)
    tint <- .color_recycle(tint, n)
    return(draw_model_wires_ex_vectorized_(model, position, rotation_axis, rotation_angle, scale, tint))
  }
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(rotation_axis)) abort(paste0('`rotation_axis` must be a numeric vector of length 3, not ', friendly_typeof(rotation_axis), '.'), call = NULL)
  if (!is_float(rotation_angle)) abort(paste0('`rotation_angle` must be a number, not ', friendly_typeof(rotation_angle), '.'), call = NULL)
  if (!is_vector_3(scale)) abort(paste0('`scale` must be a numeric vector of length 3, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_model_wires_ex_(model, position, rotation_axis, rotation_angle, scale, tint)
}

#' Draw Bounding Box
#'
#' Draw bounding box (wires).
#'
#' @param box A bounding_box.
#' @param color A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawBoundingBox(BoundingBox box, Color color);
#' ```
#'
#' @family box functions
#' @family bounding functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_bounding_box(bounding_box(c(-1, -1, -1), c(1, 1, 1)), "red")
#'
#' @export
draw_bounding_box <- function(box, color) {
  lens <- c(.struct_len(box), .color_len(color))
  if (any(lens > 1)) {
    n <- max(lens)
    box <- .struct_recycle(box, n)
    color <- .color_recycle(color, n)
    return(draw_bounding_box_vectorized_(box, color))
  }
  if (!is_bounding_box(box)) abort(paste0('`box` must be a bounding_box, not ', friendly_typeof(box), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_bounding_box_(box, color)
}

#' Draw Billboard
#'
#' Draw a billboard texture.
#'
#' @param camera A camera_3d.
#' @param texture A texture.
#' @param position A numeric vector of length 3.
#' @param scale A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float scale, Color tint);
#' ```
#'
#' @family billboard functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_billboard(camera_3d(c(0, 10, 10)), load_texture("file.png"), c(0, 5, 0), 1.0, "red")
#'
#' @export
draw_billboard <- function(camera, texture, position, scale, tint) {
  lens <- c(.struct_len(camera), .struct_len(texture), .vec_len(position), length(scale), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    camera <- .struct_recycle(camera, n)
    texture <- .struct_recycle(texture, n)
    position <- .vec_recycle(position, n, 3)
    scale <- rep(scale, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_billboard_vectorized_(camera, texture, position, scale, tint))
  }
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_billboard_(camera, texture, position, scale, tint)
}

#' Draw Billboard Rec
#'
#' Draw a billboard texture defined by source.
#'
#' @param camera A camera_3d.
#' @param texture A texture.
#' @param source A rectangle.
#' @param position A numeric vector of length 3.
#' @param size A numeric vector of length 2.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);
#' ```
#'
#' @family rec functions
#' @family billboard functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_billboard_rec(camera_3d(c(0, 10, 10)), load_texture("file.png"), rectangle(10, 10, 200, 100), c(0, 5, 0), c(100, 100), "red")
#'
#' @export
draw_billboard_rec <- function(camera, texture, source, position, size, tint) {
  lens <- c(.struct_len(camera), .struct_len(texture), .struct_len(source), .vec_len(position), .vec_len(size), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    camera <- .struct_recycle(camera, n)
    texture <- .struct_recycle(texture, n)
    source <- .struct_recycle(source, n)
    position <- .vec_recycle(position, n, 3)
    size <- .vec_recycle(size, n, 2)
    tint <- .color_recycle(tint, n)
    return(draw_billboard_rec_vectorized_(camera, texture, source, position, size, tint))
  }
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_2(size)) abort(paste0('`size` must be a numeric vector of length 2, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_billboard_rec_(camera, texture, source, position, size, tint)
}

#' Draw Billboard Pro
#'
#' Draw a billboard texture defined by source and rotation.
#'
#' @param camera A camera_3d.
#' @param texture A texture.
#' @param source A rectangle.
#' @param position A numeric vector of length 3.
#' @param up A numeric vector of length 3.
#' @param size A numeric vector of length 2.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param tint A color.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);
#' ```
#'
#' @family pro functions
#' @family billboard functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_billboard_pro(camera_3d(c(0, 10, 10)), load_texture("file.png"), rectangle(10, 10, 200, 100), c(0, 5, 0), c(0, 1, 0), c(100, 100), c(100, 100), 0.0, "red")
#'
#' @export
draw_billboard_pro <- function(camera, texture, source, position, up, size, origin, rotation, tint) {
  lens <- c(.struct_len(camera), .struct_len(texture), .struct_len(source), .vec_len(position), .vec_len(up), .vec_len(size), .vec_len(origin), length(rotation), .color_len(tint))
  if (any(lens > 1)) {
    n <- max(lens)
    camera <- .struct_recycle(camera, n)
    texture <- .struct_recycle(texture, n)
    source <- .struct_recycle(source, n)
    position <- .vec_recycle(position, n, 3)
    up <- .vec_recycle(up, n, 3)
    size <- .vec_recycle(size, n, 2)
    origin <- .vec_recycle(origin, n, 2)
    rotation <- rep(rotation, length.out = n)
    tint <- .color_recycle(tint, n)
    return(draw_billboard_pro_vectorized_(camera, texture, source, position, up, size, origin, rotation, tint))
  }
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(up)) abort(paste0('`up` must be a numeric vector of length 3, not ', friendly_typeof(up), '.'), call = NULL)
  if (!is_vector_2(size)) abort(paste0('`size` must be a numeric vector of length 2, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_billboard_pro_(camera, texture, source, position, up, size, origin, rotation, tint)
}

#' Unload Mesh
#'
#' Unload mesh data from CPU and GPU.
#'
#' @param mesh A mesh.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadMesh(Mesh mesh);
#' ```
#'
#' @family mesh functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_mesh(gen_mesh_cube(1.0, 1.0, 1.0))
#'
#' @export
unload_mesh <- function(mesh) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  unload_mesh_(mesh)
}

#' Draw Mesh
#'
#' Draw a 3d mesh with material and transform.
#'
#' @param mesh A mesh.
#' @param material A material.
#' @param transform A 4x4 numeric matrix.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawMesh(Mesh mesh, Material material, Matrix transform);
#' ```
#'
#' @family mesh functions
#' @family draw functions
#'
#' @examplesIf FALSE
#' draw_mesh(gen_mesh_cube(1.0, 1.0, 1.0), load_material_default(), diag(4))
#'
#' @export
draw_mesh <- function(mesh, material, transform) {
  lens <- c(.struct_len(mesh), .struct_len(material), .struct_len(transform))
  if (any(lens > 1)) {
    n <- max(lens)
    mesh <- .struct_recycle(mesh, n)
    material <- .struct_recycle(material, n)
    transform <- .struct_recycle(transform, n)
    return(draw_mesh_vectorized_(mesh, material, transform))
  }
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_material(material)) abort(paste0('`material` must be a material, not ', friendly_typeof(material), '.'), call = NULL)
  if (!is_raylib_matrix(transform)) abort(paste0('`transform` must be a 4x4 numeric matrix, not ', friendly_typeof(transform), '.'), call = NULL)
  draw_mesh_(mesh, material, transform)
}

#' Get Mesh Bounding Box
#'
#' Compute mesh bounding box limits.
#'
#' @param mesh A mesh.
#'
#' @return A bounding_box
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' BoundingBox GetMeshBoundingBox(Mesh mesh);
#' ```
#'
#' @family box functions
#' @family mesh functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_mesh_bounding_box(gen_mesh_cube(1.0, 1.0, 1.0))
#'
#' @export
get_mesh_bounding_box <- function(mesh) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  get_mesh_bounding_box_(mesh)
}

#' Export Mesh
#'
#' Export mesh data to file, returns true on success.
#'
#' @param mesh A mesh.
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ExportMesh(Mesh mesh, const char * fileName);
#' ```
#'
#' @family mesh functions
#' @family export functions
#'
#' @examplesIf FALSE
#' export_mesh(gen_mesh_cube(1.0, 1.0, 1.0), "file.png")
#'
#' @export
export_mesh <- function(mesh, file_name) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_mesh_(mesh, file_name)
}

#' Export Mesh As Code
#'
#' Export mesh as code file (.h) defining multiple arrays of vertex attributes.
#'
#' @param mesh A mesh.
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ExportMeshAsCode(Mesh mesh, const char * fileName);
#' ```
#'
#' @family code functions
#' @family mesh functions
#' @family export functions
#'
#' @examplesIf FALSE
#' export_mesh_as_code(gen_mesh_cube(1.0, 1.0, 1.0), "file.png")
#'
#' @export
export_mesh_as_code <- function(mesh, file_name) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_mesh_as_code_(mesh, file_name)
}

#' Gen Mesh Poly
#'
#' Generate polygonal mesh.
#'
#' @param sides An integer.
#' @param radius A number.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshPoly(int sides, float radius);
#' ```
#'
#' @family poly functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_poly(0L, 50.0)
#'
#' @export
gen_mesh_poly <- function(sides, radius) {
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  gen_mesh_poly_(sides, radius)
}

#' Gen Mesh Plane
#'
#' Generate plane mesh (with subdivisions).
#'
#' @param width A number.
#' @param length A number.
#' @param res_x An integer.
#' @param res_z An integer.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshPlane(float width, float length, int resX, int resZ);
#' ```
#'
#' @family plane functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_plane(200.0, 100.0, 0L, 0L)
#'
#' @export
gen_mesh_plane <- function(width, length, res_x, res_z) {
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(length)) abort(paste0('`length` must be a number, not ', friendly_typeof(length), '.'), call = NULL)
  if (!is_int(res_x)) abort(paste0('`res_x` must be an integer, not ', friendly_typeof(res_x), '.'), call = NULL)
  if (!is_int(res_z)) abort(paste0('`res_z` must be an integer, not ', friendly_typeof(res_z), '.'), call = NULL)
  gen_mesh_plane_(width, length, res_x, res_z)
}

#' Gen Mesh Cube
#'
#' Generate cuboid mesh.
#'
#' @param width A number.
#' @param height A number.
#' @param length A number.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshCube(float width, float height, float length);
#' ```
#'
#' @family cube functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_cube(200.0, 100.0, 100.0)
#'
#' @export
gen_mesh_cube <- function(width, height, length) {
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(length)) abort(paste0('`length` must be a number, not ', friendly_typeof(length), '.'), call = NULL)
  gen_mesh_cube_(width, height, length)
}

#' Gen Mesh Sphere
#'
#' Generate sphere mesh (standard sphere).
#'
#' @param radius A number.
#' @param rings An integer.
#' @param slices An integer.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshSphere(float radius, int rings, int slices);
#' ```
#'
#' @family sphere functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_sphere(50.0, 8L, 16L)
#'
#' @export
gen_mesh_sphere <- function(radius, rings, slices) {
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_int(rings)) abort(paste0('`rings` must be an integer, not ', friendly_typeof(rings), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  gen_mesh_sphere_(radius, rings, slices)
}

#' Gen Mesh Hemi Sphere
#'
#' Generate half-sphere mesh (no bottom cap).
#'
#' @param radius A number.
#' @param rings An integer.
#' @param slices An integer.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshHemiSphere(float radius, int rings, int slices);
#' ```
#'
#' @family sphere functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_hemi_sphere(50.0, 8L, 16L)
#'
#' @export
gen_mesh_hemi_sphere <- function(radius, rings, slices) {
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_int(rings)) abort(paste0('`rings` must be an integer, not ', friendly_typeof(rings), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  gen_mesh_hemi_sphere_(radius, rings, slices)
}

#' Gen Mesh Cylinder
#'
#' Generate cylinder mesh.
#'
#' @param radius A number.
#' @param height A number.
#' @param slices An integer.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshCylinder(float radius, float height, int slices);
#' ```
#'
#' @family cylinder functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_cylinder(50.0, 100.0, 16L)
#'
#' @export
gen_mesh_cylinder <- function(radius, height, slices) {
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  gen_mesh_cylinder_(radius, height, slices)
}

#' Gen Mesh Cone
#'
#' Generate cone/pyramid mesh.
#'
#' @param radius A number.
#' @param height A number.
#' @param slices An integer.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshCone(float radius, float height, int slices);
#' ```
#'
#' @family cone functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_cone(50.0, 100.0, 16L)
#'
#' @export
gen_mesh_cone <- function(radius, height, slices) {
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  gen_mesh_cone_(radius, height, slices)
}

#' Gen Mesh Torus
#'
#' Generate torus mesh.
#'
#' @param radius A number.
#' @param size A number.
#' @param rad_seg An integer.
#' @param sides An integer.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);
#' ```
#'
#' @family torus functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_torus(50.0, 1.0, 0L, 0L)
#'
#' @export
gen_mesh_torus <- function(radius, size, rad_seg, sides) {
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(size)) abort(paste0('`size` must be a number, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_int(rad_seg)) abort(paste0('`rad_seg` must be an integer, not ', friendly_typeof(rad_seg), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  gen_mesh_torus_(radius, size, rad_seg, sides)
}

#' Gen Mesh Knot
#'
#' Generate trefoil knot mesh.
#'
#' @param radius A number.
#' @param size A number.
#' @param rad_seg An integer.
#' @param sides An integer.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);
#' ```
#'
#' @family knot functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_knot(50.0, 1.0, 0L, 0L)
#'
#' @export
gen_mesh_knot <- function(radius, size, rad_seg, sides) {
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(size)) abort(paste0('`size` must be a number, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_int(rad_seg)) abort(paste0('`rad_seg` must be an integer, not ', friendly_typeof(rad_seg), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  gen_mesh_knot_(radius, size, rad_seg, sides)
}

#' Gen Mesh Heightmap
#'
#' Generate heightmap mesh from image data.
#'
#' @param heightmap An image.
#' @param size A numeric vector of length 3.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshHeightmap(Image heightmap, Vector3 size);
#' ```
#'
#' @family heightmap functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_heightmap(gen_image_color(100, 100, "blue"), c(1, 1, 1))
#'
#' @export
gen_mesh_heightmap <- function(heightmap, size) {
  if (!is_image(heightmap)) abort(paste0('`heightmap` must be an image, not ', friendly_typeof(heightmap), '.'), call = NULL)
  if (!is_vector_3(size)) abort(paste0('`size` must be a numeric vector of length 3, not ', friendly_typeof(size), '.'), call = NULL)
  gen_mesh_heightmap_(heightmap, size)
}

#' Gen Mesh Cubicmap
#'
#' Generate cubes-based map mesh from image data.
#'
#' @param cubicmap An image.
#' @param cube_size A numeric vector of length 3.
#'
#' @return A mesh
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);
#' ```
#'
#' @family cubicmap functions
#' @family mesh functions
#'
#' @examplesIf FALSE
#' gen_mesh_cubicmap(gen_image_color(100, 100, "blue"), c(1, 1, 1))
#'
#' @export
gen_mesh_cubicmap <- function(cubicmap, cube_size) {
  if (!is_image(cubicmap)) abort(paste0('`cubicmap` must be an image, not ', friendly_typeof(cubicmap), '.'), call = NULL)
  if (!is_vector_3(cube_size)) abort(paste0('`cube_size` must be a numeric vector of length 3, not ', friendly_typeof(cube_size), '.'), call = NULL)
  gen_mesh_cubicmap_(cubicmap, cube_size)
}

#' Load Material Default
#'
#' Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps).
#'
#'
#' @return A material
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Material LoadMaterialDefault(void);
#' ```
#'
#' @family default functions
#' @family material functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_material_default()
#'
#' @export
load_material_default <- function() {
  load_material_default_()
}

#' Is Material Valid
#'
#' Check if a material is valid (shader assigned, map textures loaded in GPU).
#'
#' @param material A material.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsMaterialValid(Material material);
#' ```
#'
#' @family valid functions
#' @family material functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_material_valid(load_material_default())
#'
#' @export
is_material_valid <- function(material) {
  if (!is_material(material)) abort(paste0('`material` must be a material, not ', friendly_typeof(material), '.'), call = NULL)
  is_material_valid_(material)
}

#' Unload Material
#'
#' Unload material from GPU memory (VRAM).
#'
#' @param material A material.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadMaterial(Material material);
#' ```
#'
#' @family material functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_material(load_material_default())
#'
#' @export
unload_material <- function(material) {
  if (!is_material(material)) abort(paste0('`material` must be a material, not ', friendly_typeof(material), '.'), call = NULL)
  unload_material_(material)
}

#' Update Model Animation
#'
#' Update model animation pose (vertex buffers and bone matrices).
#'
#' @param model A model.
#' @param anim A model_animation.
#' @param frame A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UpdateModelAnimation(Model model, ModelAnimation anim, float frame);
#' ```
#'
#' @family animation functions
#' @family model functions
#' @family update functions
#'
#' @examplesIf FALSE
#' update_model_animation(load_model("model.obj"), anim, 0.0)
#'
#' @export
update_model_animation <- function(model, anim, frame) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_model_animation(anim)) abort(paste0('`anim` must be a model_animation, not ', friendly_typeof(anim), '.'), call = NULL)
  if (!is_float(frame)) abort(paste0('`frame` must be a number, not ', friendly_typeof(frame), '.'), call = NULL)
  update_model_animation_(model, anim, frame)
}

#' Update Model Animation Ex
#'
#' Update model animation pose, blending two animations.
#'
#' @param model A model.
#' @param anim_a A model_animation.
#' @param frame_a A number.
#' @param anim_b A model_animation.
#' @param frame_b A number.
#' @param blend A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UpdateModelAnimationEx(Model model, ModelAnimation animA, float frameA, ModelAnimation animB, float frameB, float blend);
#' ```
#'
#' @family ex functions
#' @family model functions
#' @family update functions
#'
#' @examplesIf FALSE
#' update_model_animation_ex(load_model("model.obj"), anim, 0.0, anim, 0.0, 0.0)
#'
#' @export
update_model_animation_ex <- function(model, anim_a, frame_a, anim_b, frame_b, blend) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_model_animation(anim_a)) abort(paste0('`anim_a` must be a model_animation, not ', friendly_typeof(anim_a), '.'), call = NULL)
  if (!is_float(frame_a)) abort(paste0('`frame_a` must be a number, not ', friendly_typeof(frame_a), '.'), call = NULL)
  if (!is_model_animation(anim_b)) abort(paste0('`anim_b` must be a model_animation, not ', friendly_typeof(anim_b), '.'), call = NULL)
  if (!is_float(frame_b)) abort(paste0('`frame_b` must be a number, not ', friendly_typeof(frame_b), '.'), call = NULL)
  if (!is_float(blend)) abort(paste0('`blend` must be a number, not ', friendly_typeof(blend), '.'), call = NULL)
  update_model_animation_ex_(model, anim_a, frame_a, anim_b, frame_b, blend)
}

#' Is Model Animation Valid
#'
#' Check model animation skeleton match.
#'
#' @param model A model.
#' @param anim A model_animation.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsModelAnimationValid(Model model, ModelAnimation anim);
#' ```
#'
#' @family valid functions
#' @family model functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_model_animation_valid(load_model("model.obj"), anim)
#'
#' @export
is_model_animation_valid <- function(model, anim) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_model_animation(anim)) abort(paste0('`anim` must be a model_animation, not ', friendly_typeof(anim), '.'), call = NULL)
  is_model_animation_valid_(model, anim)
}

#' Check Collision Spheres
#'
#' Check collision between two spheres.
#'
#' @param center1 A numeric vector of length 3.
#' @param radius1 A number.
#' @param center2 A numeric vector of length 3.
#' @param radius2 A number.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);
#' ```
#'
#' @family spheres functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_spheres(c(0, 0, 0), 50.0, c(0, 0, 0), 50.0)
#'
#' @export
check_collision_spheres <- function(center1, radius1, center2, radius2) {
  if (!is_vector_3(center1)) abort(paste0('`center1` must be a numeric vector of length 3, not ', friendly_typeof(center1), '.'), call = NULL)
  if (!is_float(radius1)) abort(paste0('`radius1` must be a number, not ', friendly_typeof(radius1), '.'), call = NULL)
  if (!is_vector_3(center2)) abort(paste0('`center2` must be a numeric vector of length 3, not ', friendly_typeof(center2), '.'), call = NULL)
  if (!is_float(radius2)) abort(paste0('`radius2` must be a number, not ', friendly_typeof(radius2), '.'), call = NULL)
  check_collision_spheres_(center1, radius1, center2, radius2)
}

#' Check Collision Boxes
#'
#' Check collision between two bounding boxes.
#'
#' @param box1 A bounding_box.
#' @param box2 A bounding_box.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);
#' ```
#'
#' @family boxes functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_boxes(bounding_box(c(-1, -1, -1), c(1, 1, 1)), bounding_box(c(-1, -1, -1), c(1, 1, 1)))
#'
#' @export
check_collision_boxes <- function(box1, box2) {
  if (!is_bounding_box(box1)) abort(paste0('`box1` must be a bounding_box, not ', friendly_typeof(box1), '.'), call = NULL)
  if (!is_bounding_box(box2)) abort(paste0('`box2` must be a bounding_box, not ', friendly_typeof(box2), '.'), call = NULL)
  check_collision_boxes_(box1, box2)
}

#' Check Collision Box Sphere
#'
#' Check collision between box and sphere.
#'
#' @param box A bounding_box.
#' @param center A numeric vector of length 3.
#' @param radius A number.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);
#' ```
#'
#' @family sphere functions
#' @family collision functions
#' @family check functions
#'
#' @examples
#' check_collision_box_sphere(bounding_box(c(-1, -1, -1), c(1, 1, 1)), c(0, 0, 0), 50.0)
#'
#' @export
check_collision_box_sphere <- function(box, center, radius) {
  if (!is_bounding_box(box)) abort(paste0('`box` must be a bounding_box, not ', friendly_typeof(box), '.'), call = NULL)
  if (!is_vector_3(center)) abort(paste0('`center` must be a numeric vector of length 3, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  check_collision_box_sphere_(box, center, radius)
}

#' Get Ray Collision Sphere
#'
#' Get collision info between ray and sphere.
#'
#' @param ray A ray.
#' @param center A numeric vector of length 3.
#' @param radius A number.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);
#' ```
#'
#' @family sphere functions
#' @family ray functions
#' @family get functions
#'
#' @examples
#' get_ray_collision_sphere(ray(c(0, 0, 0), c(0, 0, 1)), c(0, 0, 0), 50.0)
#'
#' @export
get_ray_collision_sphere <- function(ray, center, radius) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_vector_3(center)) abort(paste0('`center` must be a numeric vector of length 3, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  get_ray_collision_sphere_(ray, center, radius)
}

#' Get Ray Collision Box
#'
#' Get collision info between ray and box.
#'
#' @param ray A ray.
#' @param box A bounding_box.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionBox(Ray ray, BoundingBox box);
#' ```
#'
#' @family box functions
#' @family ray functions
#' @family get functions
#'
#' @examples
#' get_ray_collision_box(ray(c(0, 0, 0), c(0, 0, 1)), bounding_box(c(-1, -1, -1), c(1, 1, 1)))
#'
#' @export
get_ray_collision_box <- function(ray, box) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_bounding_box(box)) abort(paste0('`box` must be a bounding_box, not ', friendly_typeof(box), '.'), call = NULL)
  get_ray_collision_box_(ray, box)
}

#' Get Ray Collision Mesh
#'
#' Get collision info between ray and mesh.
#'
#' @param ray A ray.
#' @param mesh A mesh.
#' @param transform A 4x4 numeric matrix.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);
#' ```
#'
#' @family mesh functions
#' @family ray functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_ray_collision_mesh(ray(c(0, 0, 0), c(0, 0, 1)), gen_mesh_cube(1.0, 1.0, 1.0), diag(4))
#'
#' @export
get_ray_collision_mesh <- function(ray, mesh, transform) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_raylib_matrix(transform)) abort(paste0('`transform` must be a 4x4 numeric matrix, not ', friendly_typeof(transform), '.'), call = NULL)
  get_ray_collision_mesh_(ray, mesh, transform)
}

#' Get Ray Collision Triangle
#'
#' Get collision info between ray and triangle.
#'
#' @param ray A ray.
#' @param p1 A numeric vector of length 3.
#' @param p2 A numeric vector of length 3.
#' @param p3 A numeric vector of length 3.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);
#' ```
#'
#' @family triangle functions
#' @family ray functions
#' @family get functions
#'
#' @examples
#' get_ray_collision_triangle(ray(c(0, 0, 0), c(0, 0, 1)), c(0, 0, 0), c(0, 0, 0), c(0, 0, 0))
#'
#' @export
get_ray_collision_triangle <- function(ray, p1, p2, p3) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_vector_3(p1)) abort(paste0('`p1` must be a numeric vector of length 3, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_3(p2)) abort(paste0('`p2` must be a numeric vector of length 3, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_vector_3(p3)) abort(paste0('`p3` must be a numeric vector of length 3, not ', friendly_typeof(p3), '.'), call = NULL)
  get_ray_collision_triangle_(ray, p1, p2, p3)
}

#' Get Ray Collision Quad
#'
#' Get collision info between ray and quad.
#'
#' @param ray A ray.
#' @param p1 A numeric vector of length 3.
#' @param p2 A numeric vector of length 3.
#' @param p3 A numeric vector of length 3.
#' @param p4 A numeric vector of length 3.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);
#' ```
#'
#' @family quad functions
#' @family ray functions
#' @family get functions
#'
#' @examples
#' get_ray_collision_quad(ray(c(0, 0, 0), c(0, 0, 1)), c(0, 0, 0), c(0, 0, 0), c(0, 0, 0), c(0, 0, 0))
#'
#' @export
get_ray_collision_quad <- function(ray, p1, p2, p3, p4) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_vector_3(p1)) abort(paste0('`p1` must be a numeric vector of length 3, not ', friendly_typeof(p1), '.'), call = NULL)
  if (!is_vector_3(p2)) abort(paste0('`p2` must be a numeric vector of length 3, not ', friendly_typeof(p2), '.'), call = NULL)
  if (!is_vector_3(p3)) abort(paste0('`p3` must be a numeric vector of length 3, not ', friendly_typeof(p3), '.'), call = NULL)
  if (!is_vector_3(p4)) abort(paste0('`p4` must be a numeric vector of length 3, not ', friendly_typeof(p4), '.'), call = NULL)
  get_ray_collision_quad_(ray, p1, p2, p3, p4)
}

#' Init Audio Device
#'
#' Initialize audio device and context.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void InitAudioDevice(void);
#' ```
#'
#' @family device functions
#' @family audio functions
#' @family init functions
#'
#' @examplesIf FALSE
#' init_audio_device()
#'
#' @export
init_audio_device <- function() {
  init_audio_device_()
}

#' Close Audio Device
#'
#' Close the audio device and context.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void CloseAudioDevice(void);
#' ```
#'
#' @family device functions
#' @family audio functions
#' @family close functions
#'
#' @examplesIf FALSE
#' close_audio_device()
#'
#' @export
close_audio_device <- function() {
  close_audio_device_()
}

#' Is Audio Device Ready
#'
#' Check if audio device has been initialized successfully.
#'
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsAudioDeviceReady(void);
#' ```
#'
#' @family ready functions
#' @family audio functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_audio_device_ready()
#'
#' @export
is_audio_device_ready <- function() {
  is_audio_device_ready_()
}

#' Set Master Volume
#'
#' Set master volume (listener).
#'
#' @param volume A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMasterVolume(float volume);
#' ```
#'
#' @family volume functions
#' @family master functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_master_volume(0.5)
#'
#' @export
set_master_volume <- function(volume) {
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_master_volume_(volume)
}

#' Get Master Volume
#'
#' Get master volume (listener).
#'
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetMasterVolume(void);
#' ```
#'
#' @family volume functions
#' @family master functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_master_volume()
#'
#' @export
get_master_volume <- function() {
  get_master_volume_()
}

#' Load Wave
#'
#' Load wave data from file.
#'
#' @param file_name A string.
#'
#' @return A wave
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Wave LoadWave(const char * fileName);
#' ```
#'
#' @family wave functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_wave("file.png")
#'
#' @export
load_wave <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_wave_(file_name)
}

#' Is Wave Valid
#'
#' Checks if wave data is valid (data loaded and parameters).
#'
#' @param wave A wave.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsWaveValid(Wave wave);
#' ```
#'
#' @family valid functions
#' @family wave functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_wave_valid(load_wave("sound.wav"))
#'
#' @export
is_wave_valid <- function(wave) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  is_wave_valid_(wave)
}

#' Load Sound
#'
#' Load sound from file.
#'
#' @param file_name A string.
#'
#' @return A sound
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Sound LoadSound(const char * fileName);
#' ```
#'
#' @family sound functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_sound("file.png")
#'
#' @export
load_sound <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_sound_(file_name)
}

#' Load Sound From Wave
#'
#' Load sound from wave data.
#'
#' @param wave A wave.
#'
#' @return A sound
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Sound LoadSoundFromWave(Wave wave);
#' ```
#'
#' @family wave functions
#' @family sound functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_sound_from_wave(load_wave("sound.wav"))
#'
#' @export
load_sound_from_wave <- function(wave) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  load_sound_from_wave_(wave)
}

#' Load Sound Alias
#'
#' Create a new sound that shares the same sample data as the source sound, does not own the sound data.
#'
#' @param source A sound.
#'
#' @return A sound
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Sound LoadSoundAlias(Sound source);
#' ```
#'
#' @family alias functions
#' @family sound functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_sound_alias(load_sound("sound.wav"))
#'
#' @export
load_sound_alias <- function(source) {
  if (!is_sound(source)) abort(paste0('`source` must be a sound, not ', friendly_typeof(source), '.'), call = NULL)
  load_sound_alias_(source)
}

#' Is Sound Valid
#'
#' Checks if a sound is valid (data loaded and buffers initialized).
#'
#' @param sound A sound.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsSoundValid(Sound sound);
#' ```
#'
#' @family valid functions
#' @family sound functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_sound_valid(load_sound("sound.wav"))
#'
#' @export
is_sound_valid <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  is_sound_valid_(sound)
}

#' Unload Wave
#'
#' Unload wave data.
#'
#' @param wave A wave.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadWave(Wave wave);
#' ```
#'
#' @family wave functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_wave(load_wave("sound.wav"))
#'
#' @export
unload_wave <- function(wave) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  unload_wave_(wave)
}

#' Unload Sound
#'
#' Unload sound.
#'
#' @param sound A sound.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadSound(Sound sound);
#' ```
#'
#' @family sound functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_sound(load_sound("sound.wav"))
#'
#' @export
unload_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  unload_sound_(sound)
}

#' Unload Sound Alias
#'
#' Unload a sound alias (does not deallocate sample data).
#'
#' @param alias A sound.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadSoundAlias(Sound alias);
#' ```
#'
#' @family alias functions
#' @family sound functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_sound_alias(load_sound("sound.wav"))
#'
#' @export
unload_sound_alias <- function(alias) {
  if (!is_sound(alias)) abort(paste0('`alias` must be a sound, not ', friendly_typeof(alias), '.'), call = NULL)
  unload_sound_alias_(alias)
}

#' Export Wave
#'
#' Export wave data to file, returns true on success.
#'
#' @param wave A wave.
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ExportWave(Wave wave, const char * fileName);
#' ```
#'
#' @family wave functions
#' @family export functions
#'
#' @examplesIf FALSE
#' export_wave(load_wave("sound.wav"), "file.png")
#'
#' @export
export_wave <- function(wave, file_name) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_wave_(wave, file_name)
}

#' Export Wave As Code
#'
#' Export wave sample data to code (.h), returns true on success.
#'
#' @param wave A wave.
#' @param file_name A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ExportWaveAsCode(Wave wave, const char * fileName);
#' ```
#'
#' @family code functions
#' @family wave functions
#' @family export functions
#'
#' @examplesIf FALSE
#' export_wave_as_code(load_wave("sound.wav"), "file.png")
#'
#' @export
export_wave_as_code <- function(wave, file_name) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_wave_as_code_(wave, file_name)
}

#' Play Sound
#'
#' Play a sound.
#'
#' @param sound A sound.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PlaySound(Sound sound);
#' ```
#'
#' @family sound functions
#' @family play functions
#'
#' @examplesIf FALSE
#' play_sound(load_sound("sound.wav"))
#'
#' @export
play_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  play_sound_(sound)
}

#' Stop Sound
#'
#' Stop playing a sound.
#'
#' @param sound A sound.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopSound(Sound sound);
#' ```
#'
#' @family sound functions
#' @family stop functions
#'
#' @examplesIf FALSE
#' stop_sound(load_sound("sound.wav"))
#'
#' @export
stop_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  stop_sound_(sound)
}

#' Pause Sound
#'
#' Pause a sound.
#'
#' @param sound A sound.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PauseSound(Sound sound);
#' ```
#'
#' @family sound functions
#' @family pause functions
#'
#' @examplesIf FALSE
#' pause_sound(load_sound("sound.wav"))
#'
#' @export
pause_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  pause_sound_(sound)
}

#' Resume Sound
#'
#' Resume a paused sound.
#'
#' @param sound A sound.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ResumeSound(Sound sound);
#' ```
#'
#' @family sound functions
#' @family resume functions
#'
#' @examplesIf FALSE
#' resume_sound(load_sound("sound.wav"))
#'
#' @export
resume_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  resume_sound_(sound)
}

#' Is Sound Playing
#'
#' Check if a sound is currently playing.
#'
#' @param sound A sound.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsSoundPlaying(Sound sound);
#' ```
#'
#' @family playing functions
#' @family sound functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_sound_playing(load_sound("sound.wav"))
#'
#' @export
is_sound_playing <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  is_sound_playing_(sound)
}

#' Set Sound Volume
#'
#' Set volume for a sound (1.0 is max level).
#'
#' @param sound A sound.
#' @param volume A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetSoundVolume(Sound sound, float volume);
#' ```
#'
#' @family volume functions
#' @family sound functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_sound_volume(load_sound("sound.wav"), 0.5)
#'
#' @export
set_sound_volume <- function(sound, volume) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_sound_volume_(sound, volume)
}

#' Set Sound Pitch
#'
#' Set pitch for a sound (1.0 is base level).
#'
#' @param sound A sound.
#' @param pitch A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetSoundPitch(Sound sound, float pitch);
#' ```
#'
#' @family pitch functions
#' @family sound functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_sound_pitch(load_sound("sound.wav"), 1.0)
#'
#' @export
set_sound_pitch <- function(sound, pitch) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_sound_pitch_(sound, pitch)
}

#' Set Sound Pan
#'
#' Set pan for a sound (-1.0 left, 0.0 center, 1.0 right).
#'
#' @param sound A sound.
#' @param pan A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetSoundPan(Sound sound, float pan);
#' ```
#'
#' @family pan functions
#' @family sound functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_sound_pan(load_sound("sound.wav"), 0.5)
#'
#' @export
set_sound_pan <- function(sound, pan) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  if (!is_float(pan)) abort(paste0('`pan` must be a number, not ', friendly_typeof(pan), '.'), call = NULL)
  set_sound_pan_(sound, pan)
}

#' Wave Copy
#'
#' Copy a wave to a new wave.
#'
#' @param wave A wave.
#'
#' @return A wave
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Wave WaveCopy(Wave wave);
#' ```
#'
#' @family copy functions
#'
#' @examplesIf FALSE
#' wave_copy(load_wave("sound.wav"))
#'
#' @export
wave_copy <- function(wave) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  wave_copy_(wave)
}

#' Load Music Stream
#'
#' Load music stream from file.
#'
#' @param file_name A string.
#'
#' @return A music
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Music LoadMusicStream(const char * fileName);
#' ```
#'
#' @family stream functions
#' @family music functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_music_stream("file.png")
#'
#' @export
load_music_stream <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_music_stream_(file_name)
}

#' Is Music Valid
#'
#' Checks if a music stream is valid (context and buffers initialized).
#'
#' @param music A music.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsMusicValid(Music music);
#' ```
#'
#' @family valid functions
#' @family music functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_music_valid(load_music_stream("music.mp3"))
#'
#' @export
is_music_valid <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  is_music_valid_(music)
}

#' Unload Music Stream
#'
#' Unload music stream.
#'
#' @param music A music.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadMusicStream(Music music);
#' ```
#'
#' @family stream functions
#' @family music functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_music_stream(load_music_stream("music.mp3"))
#'
#' @export
unload_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  unload_music_stream_(music)
}

#' Play Music Stream
#'
#' Start music playing.
#'
#' @param music A music.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PlayMusicStream(Music music);
#' ```
#'
#' @family stream functions
#' @family music functions
#' @family play functions
#'
#' @examplesIf FALSE
#' play_music_stream(load_music_stream("music.mp3"))
#'
#' @export
play_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  play_music_stream_(music)
}

#' Is Music Stream Playing
#'
#' Check if music is playing.
#'
#' @param music A music.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsMusicStreamPlaying(Music music);
#' ```
#'
#' @family playing functions
#' @family music functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_music_stream_playing(load_music_stream("music.mp3"))
#'
#' @export
is_music_stream_playing <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  is_music_stream_playing_(music)
}

#' Update Music Stream
#'
#' Updates buffers for music streaming.
#'
#' @param music A music.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UpdateMusicStream(Music music);
#' ```
#'
#' @family stream functions
#' @family music functions
#' @family update functions
#'
#' @examplesIf FALSE
#' update_music_stream(load_music_stream("music.mp3"))
#'
#' @export
update_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  update_music_stream_(music)
}

#' Stop Music Stream
#'
#' Stop music playing.
#'
#' @param music A music.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopMusicStream(Music music);
#' ```
#'
#' @family stream functions
#' @family music functions
#' @family stop functions
#'
#' @examplesIf FALSE
#' stop_music_stream(load_music_stream("music.mp3"))
#'
#' @export
stop_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  stop_music_stream_(music)
}

#' Pause Music Stream
#'
#' Pause music playing.
#'
#' @param music A music.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PauseMusicStream(Music music);
#' ```
#'
#' @family stream functions
#' @family music functions
#' @family pause functions
#'
#' @examplesIf FALSE
#' pause_music_stream(load_music_stream("music.mp3"))
#'
#' @export
pause_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  pause_music_stream_(music)
}

#' Resume Music Stream
#'
#' Resume playing paused music.
#'
#' @param music A music.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ResumeMusicStream(Music music);
#' ```
#'
#' @family stream functions
#' @family music functions
#' @family resume functions
#'
#' @examplesIf FALSE
#' resume_music_stream(load_music_stream("music.mp3"))
#'
#' @export
resume_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  resume_music_stream_(music)
}

#' Seek Music Stream
#'
#' Seek music to a position (in seconds).
#'
#' @param music A music.
#' @param position A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SeekMusicStream(Music music, float position);
#' ```
#'
#' @family stream functions
#' @family music functions
#'
#' @examplesIf FALSE
#' seek_music_stream(load_music_stream("music.mp3"), 0.0)
#'
#' @export
seek_music_stream <- function(music, position) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(position)) abort(paste0('`position` must be a number, not ', friendly_typeof(position), '.'), call = NULL)
  seek_music_stream_(music, position)
}

#' Set Music Volume
#'
#' Set volume for music (1.0 is max level).
#'
#' @param music A music.
#' @param volume A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMusicVolume(Music music, float volume);
#' ```
#'
#' @family volume functions
#' @family music functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_music_volume(load_music_stream("music.mp3"), 0.5)
#'
#' @export
set_music_volume <- function(music, volume) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_music_volume_(music, volume)
}

#' Set Music Pitch
#'
#' Set pitch for a music (1.0 is base level).
#'
#' @param music A music.
#' @param pitch A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMusicPitch(Music music, float pitch);
#' ```
#'
#' @family pitch functions
#' @family music functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_music_pitch(load_music_stream("music.mp3"), 1.0)
#'
#' @export
set_music_pitch <- function(music, pitch) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_music_pitch_(music, pitch)
}

#' Set Music Pan
#'
#' Set pan for a music (-1.0 left, 0.0 center, 1.0 right).
#'
#' @param music A music.
#' @param pan A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMusicPan(Music music, float pan);
#' ```
#'
#' @family pan functions
#' @family music functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_music_pan(load_music_stream("music.mp3"), 0.5)
#'
#' @export
set_music_pan <- function(music, pan) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(pan)) abort(paste0('`pan` must be a number, not ', friendly_typeof(pan), '.'), call = NULL)
  set_music_pan_(music, pan)
}

#' Get Music Time Length
#'
#' Get music time length (in seconds).
#'
#' @param music A music.
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetMusicTimeLength(Music music);
#' ```
#'
#' @family length functions
#' @family music functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_music_time_length(load_music_stream("music.mp3"))
#'
#' @export
get_music_time_length <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  get_music_time_length_(music)
}

#' Get Music Time Played
#'
#' Get current music time played (in seconds).
#'
#' @param music A music.
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float GetMusicTimePlayed(Music music);
#' ```
#'
#' @family played functions
#' @family music functions
#' @family get functions
#'
#' @examplesIf FALSE
#' get_music_time_played(load_music_stream("music.mp3"))
#'
#' @export
get_music_time_played <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  get_music_time_played_(music)
}

#' Load Audio Stream
#'
#' Load audio stream (to stream raw audio pcm data).
#'
#' @param sample_rate A non-negative integer.
#' @param sample_size A non-negative integer.
#' @param channels A non-negative integer.
#'
#' @return An audio_stream
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels);
#' ```
#'
#' @family stream functions
#' @family audio functions
#' @family load functions
#'
#' @examplesIf FALSE
#' load_audio_stream(0L, 32L, 0L)
#'
#' @export
load_audio_stream <- function(sample_rate, sample_size, channels) {
  if (!is_unsigned_int(sample_rate)) abort(paste0('`sample_rate` must be a non-negative integer, not ', friendly_typeof(sample_rate), '.'), call = NULL)
  if (!is_unsigned_int(sample_size)) abort(paste0('`sample_size` must be a non-negative integer, not ', friendly_typeof(sample_size), '.'), call = NULL)
  if (!is_unsigned_int(channels)) abort(paste0('`channels` must be a non-negative integer, not ', friendly_typeof(channels), '.'), call = NULL)
  load_audio_stream_(sample_rate, sample_size, channels)
}

#' Is Audio Stream Valid
#'
#' Checks if an audio stream is valid (buffers initialized).
#'
#' @param stream An audio_stream.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsAudioStreamValid(AudioStream stream);
#' ```
#'
#' @family valid functions
#' @family audio functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_audio_stream_valid(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
is_audio_stream_valid <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  is_audio_stream_valid_(stream)
}

#' Unload Audio Stream
#'
#' Unload audio stream and free memory.
#'
#' @param stream An audio_stream.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadAudioStream(AudioStream stream);
#' ```
#'
#' @family stream functions
#' @family audio functions
#' @family unload functions
#'
#' @examplesIf FALSE
#' unload_audio_stream(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
unload_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  unload_audio_stream_(stream)
}

#' Is Audio Stream Processed
#'
#' Check if any audio stream buffers requires refill.
#'
#' @param stream An audio_stream.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsAudioStreamProcessed(AudioStream stream);
#' ```
#'
#' @family processed functions
#' @family audio functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_audio_stream_processed(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
is_audio_stream_processed <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  is_audio_stream_processed_(stream)
}

#' Play Audio Stream
#'
#' Play audio stream.
#'
#' @param stream An audio_stream.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PlayAudioStream(AudioStream stream);
#' ```
#'
#' @family stream functions
#' @family audio functions
#' @family play functions
#'
#' @examplesIf FALSE
#' play_audio_stream(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
play_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  play_audio_stream_(stream)
}

#' Pause Audio Stream
#'
#' Pause audio stream.
#'
#' @param stream An audio_stream.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PauseAudioStream(AudioStream stream);
#' ```
#'
#' @family stream functions
#' @family audio functions
#' @family pause functions
#'
#' @examplesIf FALSE
#' pause_audio_stream(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
pause_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  pause_audio_stream_(stream)
}

#' Resume Audio Stream
#'
#' Resume audio stream.
#'
#' @param stream An audio_stream.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ResumeAudioStream(AudioStream stream);
#' ```
#'
#' @family stream functions
#' @family audio functions
#' @family resume functions
#'
#' @examplesIf FALSE
#' resume_audio_stream(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
resume_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  resume_audio_stream_(stream)
}

#' Is Audio Stream Playing
#'
#' Check if audio stream is playing.
#'
#' @param stream An audio_stream.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsAudioStreamPlaying(AudioStream stream);
#' ```
#'
#' @family playing functions
#' @family audio functions
#' @family is functions
#'
#' @examplesIf FALSE
#' is_audio_stream_playing(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
is_audio_stream_playing <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  is_audio_stream_playing_(stream)
}

#' Stop Audio Stream
#'
#' Stop audio stream.
#'
#' @param stream An audio_stream.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopAudioStream(AudioStream stream);
#' ```
#'
#' @family stream functions
#' @family audio functions
#' @family stop functions
#'
#' @examplesIf FALSE
#' stop_audio_stream(load_audio_stream(44100L, 16L, 1L))
#'
#' @export
stop_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  stop_audio_stream_(stream)
}

#' Set Audio Stream Volume
#'
#' Set volume for audio stream (1.0 is max level).
#'
#' @param stream An audio_stream.
#' @param volume A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAudioStreamVolume(AudioStream stream, float volume);
#' ```
#'
#' @family volume functions
#' @family audio functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_audio_stream_volume(load_audio_stream(44100L, 16L, 1L), 0.5)
#'
#' @export
set_audio_stream_volume <- function(stream, volume) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_audio_stream_volume_(stream, volume)
}

#' Set Audio Stream Pitch
#'
#' Set pitch for audio stream (1.0 is base level).
#'
#' @param stream An audio_stream.
#' @param pitch A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAudioStreamPitch(AudioStream stream, float pitch);
#' ```
#'
#' @family pitch functions
#' @family audio functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_audio_stream_pitch(load_audio_stream(44100L, 16L, 1L), 1.0)
#'
#' @export
set_audio_stream_pitch <- function(stream, pitch) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_audio_stream_pitch_(stream, pitch)
}

#' Set Audio Stream Pan
#'
#' Set pan for audio stream (-1.0 to 1.0 range, 0.0 is centered).
#'
#' @param stream An audio_stream.
#' @param pan A number.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAudioStreamPan(AudioStream stream, float pan);
#' ```
#'
#' @family pan functions
#' @family audio functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_audio_stream_pan(load_audio_stream(44100L, 16L, 1L), 0.5)
#'
#' @export
set_audio_stream_pan <- function(stream, pan) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  if (!is_float(pan)) abort(paste0('`pan` must be a number, not ', friendly_typeof(pan), '.'), call = NULL)
  set_audio_stream_pan_(stream, pan)
}

#' Set Audio Stream Buffer Size Default
#'
#' Default size for new audio streams.
#'
#' @param size An integer.
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAudioStreamBufferSizeDefault(int size);
#' ```
#'
#' @family default functions
#' @family audio functions
#' @family set functions
#'
#' @examplesIf FALSE
#' set_audio_stream_buffer_size_default(32L)
#'
#' @export
set_audio_stream_buffer_size_default <- function(size) {
  if (!is_int(size)) abort(paste0('`size` must be an integer, not ', friendly_typeof(size), '.'), call = NULL)
  set_audio_stream_buffer_size_default_(size)
}

