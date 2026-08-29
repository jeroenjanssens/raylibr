# Do not edit by hand.

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
#'
#' @export
init_window <- function(width, height, title) {
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
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family set functions
#'
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
#'
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
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
#'
#' @export
set_window_monitor <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  set_window_monitor_(monitor)
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
#' @family set functions
#'
#'
#' @export
set_window_size <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  set_window_size_(width, height)
}

#' Set Window Opacity
#'
#' Set window opacity [0.0f..1.0f].
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
#'
#' @export
get_window_scale_dpi <- function() {
  get_window_scale_dpi_()
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
#' @family get functions
#'
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
#'
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
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#'
#' @export
clear_background <- function(color) {
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
#' @family begin functions
#'
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
#' @family end functions
#'
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
#' @family begin functions
#'
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
#' @family end functions
#'
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
#' @family begin functions
#'
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
#' @family end functions
#'
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
#' @family begin functions
#'
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
#' @family end functions
#'
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
#' @family begin functions
#'
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
#' @family end functions
#'
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
#' @family begin functions
#'
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
#' @family end functions
#'
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
#' @family begin functions
#'
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
#' @family end functions
#'
#'
#' @export
end_vr_stereo_mode <- function() {
  end_vr_stereo_mode_()
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
#' @family unload functions
#'
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
#'
#' @export
load_shader <- function(vs_file_name, fs_file_name) {
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
#' @family load functions
#'
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
#' @family is functions
#'
#'
#' @export
is_shader_valid <- function(shader) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  is_shader_valid_(shader)
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
#'
#' @export
unload_shader <- function(shader) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  unload_shader_(shader)
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
#'
#' @export
get_screen_to_world_2d <- function(position, camera) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_screen_to_world_2d_(position, camera)
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
#' @family set functions
#'
#'
#' @export
set_target_fps <- function(fps) {
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
#' @family get functions
#'
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
#'
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
#'
#'
#' @export
poll_input_events <- function() {
  poll_input_events_()
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
#' @family set functions
#'
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
#' @family get functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#' @family load functions
#'
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
#'
#'
#' @export
save_file_text <- function(file_name, text) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  save_file_text_(file_name, text)
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
#'
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
#' @family is functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
#'
#' @export
get_directory_file_count_ex <- function(base_path, filter, scan_subdirs) {
  if (!is_const_char_pointer(base_path)) abort(paste0('`base_path` must be a string, not ', friendly_typeof(base_path), '.'), call = NULL)
  if (!is_const_char_pointer(filter)) abort(paste0('`filter` must be a string, not ', friendly_typeof(filter), '.'), call = NULL)
  if (!is_bool(scan_subdirs)) abort(paste0('`scan_subdirs` must be a logical, not ', friendly_typeof(scan_subdirs), '.'), call = NULL)
  get_directory_file_count_ex_(base_path, filter, scan_subdirs)
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family get functions
#'
#'
#' @export
get_key_pressed <- function() {
  get_key_pressed_()
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
#' @family set functions
#'
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
#' @family is functions
#'
#'
#' @export
is_gamepad_available <- function(gamepad) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  is_gamepad_available_(gamepad)
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family set functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family set functions
#'
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
#' @family is functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family set functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
#'
#' @export
get_shapes_texture_rectangle <- function() {
  get_shapes_texture_rectangle_()
}

#' Draw Pixel
#'
#' Draw a pixel using geometry [Can be slow, use with care].
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
#'
#' @export
draw_pixel <- function(pos_x, pos_y, color) {
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_pixel_(pos_x, pos_y, color)
}

#' Draw Pixel V
#'
#' Draw a pixel using geometry (Vector version) [Can be slow, use with care].
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
#' @family draw functions
#'
#'
#' @export
draw_pixel_v <- function(position, color) {
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
#'
#' @export
draw_line <- function(start_pos_x, start_pos_y, end_pos_x, end_pos_y, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_line_v <- function(start_pos, end_pos, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_line_ex <- function(start_pos, end_pos, thick, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_line_bezier <- function(start_pos, end_pos, thick, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_line_dashed <- function(start_pos, end_pos, dash_size, space_size, color) {
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
#'
#' @export
draw_circle <- function(center_x, center_y, radius, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_circle_v <- function(center, radius, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_circle_gradient <- function(center, radius, inner, outer) {
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
#' @family draw functions
#'
#'
#' @export
draw_circle_sector <- function(center, radius, start_angle, end_angle, segments, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_circle_sector_lines <- function(center, radius, start_angle, end_angle, segments, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_circle_lines <- function(center_x, center_y, radius, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_circle_lines_v <- function(center, radius, color) {
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
#'
#' @export
draw_ellipse <- function(center_x, center_y, radius_h, radius_v, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_ellipse_v <- function(center, radius_h, radius_v, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_ellipse_lines <- function(center_x, center_y, radius_h, radius_v, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_ellipse_lines_v <- function(center, radius_h, radius_v, color) {
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
#'
#' @export
draw_ring <- function(center, inner_radius, outer_radius, start_angle, end_angle, segments, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_ring_lines <- function(center, inner_radius, outer_radius, start_angle, end_angle, segments, color) {
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
#'
#' @export
draw_rectangle <- function(pos_x, pos_y, width, height, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_v <- function(position, size, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_rec <- function(rec, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_pro <- function(rec, origin, rotation, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_gradient_v <- function(pos_x, pos_y, width, height, top, bottom) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_gradient_h <- function(pos_x, pos_y, width, height, left, right) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_gradient_ex <- function(rec, top_left, bottom_left, bottom_right, top_right) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_lines <- function(pos_x, pos_y, width, height, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_lines_ex <- function(rec, line_thick, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_rounded <- function(rec, roundness, segments, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_rounded_lines <- function(rec, roundness, segments, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_rectangle_rounded_lines_ex <- function(rec, roundness, segments, line_thick, color) {
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
#'
#' @export
draw_triangle <- function(v1, v2, v3, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_triangle_lines <- function(v1, v2, v3, color) {
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
#'
#' @export
draw_poly <- function(center, sides, radius, rotation, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_poly_lines <- function(center, sides, radius, rotation, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_poly_lines_ex <- function(center, sides, radius, rotation, line_thick, color) {
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_int(sides)) abort(paste0('`sides` must be an integer, not ', friendly_typeof(sides), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_float(line_thick)) abort(paste0('`line_thick` must be a number, not ', friendly_typeof(line_thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_poly_lines_ex_(center, sides, radius, rotation, line_thick, color)
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
#' @family check functions
#'
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
#' @family check functions
#'
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
#' @family check functions
#'
#'
#' @export
check_collision_circle_rec <- function(center, radius, rec) {
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  check_collision_circle_rec_(center, radius, rec)
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
#' @family check functions
#'
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
#' @family check functions
#'
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
#' @family check functions
#'
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
#' Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold].
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
#' @family check functions
#'
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
#' @family get functions
#'
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
#'
#' @export
load_image <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_image_(file_name)
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
#' @family load functions
#'
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family export functions
#'
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
#'
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
#' Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient.
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
#'
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
#'
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
#'
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
#'
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
#'
#'
#' @export
gen_image_white_noise <- function(width, height, factor) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(factor)) abort(paste0('`factor` must be a number, not ', friendly_typeof(factor), '.'), call = NULL)
  gen_image_white_noise_(width, height, factor)
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
#'
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
#'
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
#'
#'
#' @export
image_from_image <- function(image, rec) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  image_from_image_(image, rec)
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
#'
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
#' @family get functions
#'
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
#' @family load functions
#'
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family is functions
#'
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
#' @family unload functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
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
#'
#' @export
draw_texture <- function(texture, pos_x, pos_y, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_texture_v <- function(texture, position, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_texture_ex <- function(texture, position, rotation, scale, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_texture_rec <- function(texture, source, position, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_texture_pro <- function(texture, source, dest, origin, rotation, tint) {
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
#' @param n_patch_info An npatch_info.
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
#' @family draw functions
#'
#'
#' @export
draw_texture_n_patch <- function(texture, n_patch_info, dest, origin, rotation, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_npatch_info(n_patch_info)) abort(paste0('`n_patch_info` must be an npatch_info, not ', friendly_typeof(n_patch_info), '.'), call = NULL)
  if (!is_rectangle(dest)) abort(paste0('`dest` must be a rectangle, not ', friendly_typeof(dest), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_n_patch_(texture, n_patch_info, dest, origin, rotation, tint)
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
#'
#'
#' @export
color_to_int <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_to_int_(color)
}

#' Color Normalize
#'
#' Get Color normalized as float [0..1].
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
#'
#' @export
color_normalize <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_normalize_(color)
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
#'
#' @export
color_tint <- function(color, tint) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  color_tint_(color, tint)
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
#'
#'
#' @export
color_alpha_blend <- function(dst, src, tint) {
  if (!is_color(dst)) abort(paste0('`dst` must be a color, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_color(src)) abort(paste0('`src` must be a color, not ', friendly_typeof(src), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  color_alpha_blend_(dst, src, tint)
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family export functions
#'
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
#'
#' @export
draw_fps <- function(pos_x, pos_y) {
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
#'
#' @export
draw_text <- function(text, pos_x, pos_y, font_size, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_text_ex <- function(font, text, position, font_size, spacing, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_text_pro <- function(font, text, position, origin, rotation, font_size, spacing, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_text_codepoint <- function(font, codepoint, position, font_size, tint) {
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
#' @family set functions
#'
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
#'
#'
#' @export
measure_text_ex <- function(font, text, font_size, spacing) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  measure_text_ex_(font, text, font_size, spacing)
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
#'
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
#'
#' @export
text_length <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_length_(text)
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
#' @family get functions
#'
#'
#' @export
get_text_between <- function(text, begin, end) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(begin)) abort(paste0('`begin` must be a string, not ', friendly_typeof(begin), '.'), call = NULL)
  if (!is_const_char_pointer(end)) abort(paste0('`end` must be a string, not ', friendly_typeof(end), '.'), call = NULL)
  get_text_between_(text, begin, end)
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
#'
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
#'
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
#'
#'
#' @export
text_replace_between_alloc <- function(text, begin, end, replacement) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(begin)) abort(paste0('`begin` must be a string, not ', friendly_typeof(begin), '.'), call = NULL)
  if (!is_const_char_pointer(end)) abort(paste0('`end` must be a string, not ', friendly_typeof(end), '.'), call = NULL)
  if (!is_const_char_pointer(replacement)) abort(paste0('`replacement` must be a string, not ', friendly_typeof(replacement), '.'), call = NULL)
  text_replace_between_alloc_(text, begin, end, replacement)
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
#'
#'
#' @export
text_insert_alloc <- function(text, insert, position) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(insert)) abort(paste0('`insert` must be a string, not ', friendly_typeof(insert), '.'), call = NULL)
  if (!is_int(position)) abort(paste0('`position` must be an integer, not ', friendly_typeof(position), '.'), call = NULL)
  text_insert_alloc_(text, insert, position)
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
#' @family draw functions
#'
#'
#' @export
draw_line_3d <- function(start_pos, end_pos, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_point_3d <- function(position, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_circle_3d <- function(center, radius, rotation_axis, rotation_angle, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_triangle_3d <- function(v1, v2, v3, color) {
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
#'
#' @export
draw_cube <- function(position, width, height, length, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_cube_v <- function(position, size, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_cube_wires <- function(position, width, height, length, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_cube_wires_v <- function(position, size, color) {
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
#'
#' @export
draw_sphere <- function(center_pos, radius, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_sphere_ex <- function(center_pos, radius, rings, slices, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_sphere_wires <- function(center_pos, radius, rings, slices, color) {
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
#'
#' @export
draw_cylinder <- function(position, radius_top, radius_bottom, height, slices, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_cylinder_ex <- function(start_pos, end_pos, start_radius, end_radius, sides, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_cylinder_wires <- function(position, radius_top, radius_bottom, height, slices, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_cylinder_wires_ex <- function(start_pos, end_pos, start_radius, end_radius, sides, color) {
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
#'
#' @export
draw_capsule <- function(start_pos, end_pos, radius, slices, rings, color) {
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
#' @family draw functions
#'
#'
#' @export
draw_capsule_wires <- function(start_pos, end_pos, radius, slices, rings, color) {
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
#'
#' @export
draw_plane <- function(center_pos, size, color) {
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
#'
#' @export
draw_ray <- function(ray, color) {
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
#'
#' @export
draw_grid <- function(slices, spacing) {
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family get functions
#'
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
#'
#' @export
draw_model <- function(model, position, scale, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_model_ex <- function(model, position, rotation_axis, rotation_angle, scale, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_model_wires <- function(model, position, scale, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_model_wires_ex <- function(model, position, rotation_axis, rotation_angle, scale, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_bounding_box <- function(box, color) {
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
#'
#' @export
draw_billboard <- function(camera, texture, position, scale, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_billboard_rec <- function(camera, texture, source, position, size, tint) {
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
#' @family draw functions
#'
#'
#' @export
draw_billboard_pro <- function(camera, texture, source, position, up, size, origin, rotation, tint) {
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
#'
#' @export
draw_mesh <- function(mesh, material, transform) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_material(material)) abort(paste0('`material` must be a material, not ', friendly_typeof(material), '.'), call = NULL)
  if (!is_raylib_matrix(transform)) abort(paste0('`transform` must be a 4x4 numeric matrix, not ', friendly_typeof(transform), '.'), call = NULL)
  draw_mesh_(mesh, material, transform)
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family update functions
#'
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
#' @family update functions
#'
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
#' @family is functions
#'
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
#' @family check functions
#'
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
#' @family check functions
#'
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
#' @family check functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family init functions
#'
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
#' @family close functions
#'
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
#' @family is functions
#'
#'
#' @export
is_audio_device_ready <- function() {
  is_audio_device_ready_()
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
#' @family is functions
#'
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
#' @family load functions
#'
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family unload functions
#'
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
#' @family export functions
#'
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
#' @family is functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
#'
#' @export
set_sound_pitch <- function(sound, pitch) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_sound_pitch_(sound, pitch)
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family unload functions
#'
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
#' @family play functions
#'
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
#' @family is functions
#'
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
#' @family update functions
#'
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
#' @family stop functions
#'
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
#' @family pause functions
#'
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
#' @family resume functions
#'
#'
#' @export
resume_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  resume_music_stream_(music)
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
#' @family set functions
#'
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
#' @family set functions
#'
#'
#' @export
set_music_pitch <- function(music, pitch) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_music_pitch_(music, pitch)
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
#' @family get functions
#'
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
#' @family get functions
#'
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
#' @family load functions
#'
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
#' @family is functions
#'
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
#' @family unload functions
#'
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
#' @family is functions
#'
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
#' @family play functions
#'
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
#' @family pause functions
#'
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
#' @family resume functions
#'
#'
#' @export
resume_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  resume_audio_stream_(stream)
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
#' @family stop functions
#'
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
#' @family set functions
#'
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
#' @family set functions
#'
#'
#' @export
set_audio_stream_pitch <- function(stream, pitch) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_audio_stream_pitch_(stream, pitch)
}

