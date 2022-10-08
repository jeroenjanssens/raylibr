# Do not edit by hand.

#' Init window
#'
#' Initialize window and OpenGL context.
#'
#' @param width An integer. Default: `640`.
#' @param height An integer. Default: `480`.
#' @param title A string. Default: `"Raylibr"`.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void InitWindow(int width, int height, const char *title);
#' ```
#'
#' @family init functions
#' @family window functions
#'
#'
#' @export
init_window <- function(width = 640, height = 480, title = "Raylibr") {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_const_char_pointer(title)) abort(paste0('`title` must be a string, not ', friendly_typeof(title), '.'), call = NULL)
  init_window_(width, height, title)
}

#' Window should close
#'
#' Check if KEY_ESCAPE pressed or Close icon pressed.
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
#' @family window functions
#'
#'
#' @export
window_should_close <- function() {
  window_should_close_()
}

#' Close window
#'
#' Close window and unload OpenGL context.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void CloseWindow(void);
#' ```
#'
#' @family window functions
#'
#'
#' @export
close_window <- function() {
  close_window_()
}

#' Is window ready
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
#' @family window functions
#'
#'
#' @export
is_window_ready <- function() {
  is_window_ready_()
}

#' Is window fullscreen
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
#' @family window functions
#'
#'
#' @export
is_window_fullscreen <- function() {
  is_window_fullscreen_()
}

#' Is window hidden
#'
#' Check if window is currently hidden (only PLATFORM_DESKTOP).
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
#' @family window functions
#'
#'
#' @export
is_window_hidden <- function() {
  is_window_hidden_()
}

#' Is window minimized
#'
#' Check if window is currently minimized (only PLATFORM_DESKTOP).
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
#' @family window functions
#'
#'
#' @export
is_window_minimized <- function() {
  is_window_minimized_()
}

#' Is window maximized
#'
#' Check if window is currently maximized (only PLATFORM_DESKTOP).
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
#' @family window functions
#'
#'
#' @export
is_window_maximized <- function() {
  is_window_maximized_()
}

#' Is window focused
#'
#' Check if window is currently focused (only PLATFORM_DESKTOP).
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
#' @family window functions
#'
#'
#' @export
is_window_focused <- function() {
  is_window_focused_()
}

#' Is window resized
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
#' @family window functions
#'
#'
#' @export
is_window_resized <- function() {
  is_window_resized_()
}

#' Is window state
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
#' @family window functions
#'
#'
#' @export
is_window_state <- function(flag) {
  if (!is_unsigned_int(flag)) abort(paste0('`flag` must be a non-negative integer, not ', friendly_typeof(flag), '.'), call = NULL)
  is_window_state_(flag)
}

#' Set window state
#'
#' Set window configuration state using flags.
#'
#' @param flags A non-negative integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowState(unsigned int flags);
#' ```
#'
#' @family window functions
#'
#'
#' @export
set_window_state <- function(flags) {
  if (!is_unsigned_int(flags)) abort(paste0('`flags` must be a non-negative integer, not ', friendly_typeof(flags), '.'), call = NULL)
  set_window_state_(flags)
}

#' Clear window state
#'
#' Clear window configuration state flags.
#'
#' @param flags A non-negative integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ClearWindowState(unsigned int flags);
#' ```
#'
#' @family window functions
#'
#'
#' @export
clear_window_state <- function(flags) {
  if (!is_unsigned_int(flags)) abort(paste0('`flags` must be a non-negative integer, not ', friendly_typeof(flags), '.'), call = NULL)
  clear_window_state_(flags)
}

#' Toggle fullscreen
#'
#' Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ToggleFullscreen(void);
#' ```
#'
#'
#' @export
toggle_fullscreen <- function() {
  toggle_fullscreen_()
}

#' Maximize window
#'
#' Set window state: maximized, if resizable (only PLATFORM_DESKTOP).
#'

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

#' Minimize window
#'
#' Set window state: minimized, if resizable (only PLATFORM_DESKTOP).
#'

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

#' Restore window
#'
#' Set window state: not minimized/maximized (only PLATFORM_DESKTOP).
#'

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

#' Set window icon
#'
#' Set icon for window (only PLATFORM_DESKTOP).
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowIcon(Image image);
#' ```
#'
#' @family window functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
set_window_icon <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  set_window_icon_(image)
}

#' Set window title
#'
#' Set title for window (only PLATFORM_DESKTOP).
#'
#' @param title A string.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowTitle(const char *title);
#' ```
#'
#' @family window functions
#'
#'
#' @export
set_window_title <- function(title) {
  if (!is_const_char_pointer(title)) abort(paste0('`title` must be a string, not ', friendly_typeof(title), '.'), call = NULL)
  set_window_title_(title)
}

#' Set window position
#'
#' Set window position on screen (only PLATFORM_DESKTOP).
#'
#' @param x An integer.
#' @param y An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowPosition(int x, int y);
#' ```
#'
#' @family window functions
#'
#'
#' @export
set_window_position <- function(x, y) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  set_window_position_(x, y)
}

#' Set window monitor
#'
#' Set monitor for the current window (fullscreen mode).
#'
#' @param monitor An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowMonitor(int monitor);
#' ```
#'
#' @family window functions
#' @family monitor functions
#'
#'
#' @export
set_window_monitor <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  set_window_monitor_(monitor)
}

#' Set window min size
#'
#' Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE).
#'
#' @param width An integer.
#' @param height An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowMinSize(int width, int height);
#' ```
#'
#' @family window functions
#'
#'
#' @export
set_window_min_size <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  set_window_min_size_(width, height)
}

#' Set window size
#'
#' Set window dimensions.
#'
#' @param width An integer.
#' @param height An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowSize(int width, int height);
#' ```
#'
#' @family window functions
#'
#'
#' @export
set_window_size <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  set_window_size_(width, height)
}

#' Get screen width
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
#' @family screen functions
#'
#'
#' @export
get_screen_width <- function() {
  get_screen_width_()
}

#' Get screen height
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
#' @family screen functions
#'
#'
#' @export
get_screen_height <- function() {
  get_screen_height_()
}

#' Get monitor count
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
#' @family monitor functions
#'
#'
#' @export
get_monitor_count <- function() {
  get_monitor_count_()
}

#' Get current monitor
#'
#' Get current connected monitor.
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
#'
#'
#' @export
get_current_monitor <- function() {
  get_current_monitor_()
}

#' Get monitor position
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
#' @family monitor functions
#'
#'
#' @export
get_monitor_position <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_position_(monitor)
}

#' Get monitor width
#'
#' Get specified monitor width (max available by monitor).
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
#' @family monitor functions
#'
#'
#' @export
get_monitor_width <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_width_(monitor)
}

#' Get monitor height
#'
#' Get specified monitor height (max available by monitor).
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
#' @family monitor functions
#'
#'
#' @export
get_monitor_height <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_height_(monitor)
}

#' Get monitor physical width
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
#' @family monitor functions
#'
#'
#' @export
get_monitor_physical_width <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_physical_width_(monitor)
}

#' Get monitor physical height
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
#' @family monitor functions
#'
#'
#' @export
get_monitor_physical_height <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_physical_height_(monitor)
}

#' Get monitor refresh rate
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
#' @family monitor functions
#'
#'
#' @export
get_monitor_refresh_rate <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_refresh_rate_(monitor)
}

#' Get window position
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
#' @family window functions
#'
#'
#' @export
get_window_position <- function() {
  get_window_position_()
}

#' Get window scale dpi
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
#' @family window functions
#'
#'
#' @export
get_window_scale_dpi <- function() {
  get_window_scale_dpi_()
}

#' Get monitor name
#'
#' Get the human-readable, UTF-8 encoded name of the primary monitor.
#'
#' @param monitor An integer.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char *GetMonitorName(int monitor);
#' ```
#'
#' @family monitor functions
#'
#'
#' @export
get_monitor_name <- function(monitor) {
  if (!is_int(monitor)) abort(paste0('`monitor` must be an integer, not ', friendly_typeof(monitor), '.'), call = NULL)
  get_monitor_name_(monitor)
}

#' Show cursor
#'
#' Shows cursor.
#'

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

#' Hide cursor
#'
#' Hides cursor.
#'

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

#' Is cursor hidden
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
#' @family cursor functions
#'
#'
#' @export
is_cursor_hidden <- function() {
  is_cursor_hidden_()
}

#' Enable cursor
#'
#' Enables cursor (unlock cursor).
#'

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

#' Disable cursor
#'
#' Disables cursor (lock cursor).
#'

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

#' Is cursor on screen
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
#' @family cursor functions
#' @family screen functions
#'
#'
#' @export
is_cursor_on_screen <- function() {
  is_cursor_on_screen_()
}

#' Clear background
#'
#' Set background color (framebuffer clear color).
#'
#' @param color A color. Default: `"white"`.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ClearBackground(Color color);
#' ```
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
clear_background <- function(color = "white") {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  clear_background_(color)
}

#' Begin drawing
#'
#' Setup canvas (framebuffer) to start drawing.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginDrawing(void);
#' ```
#'
#'
#' @export
begin_drawing <- function() {
  begin_drawing_()
}

#' End drawing
#'
#' End canvas drawing and swap buffers (double buffering).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndDrawing(void);
#' ```
#'
#'
#' @export
end_drawing <- function() {
  end_drawing_()
}

#' Begin mode 2d
#'
#' Begin 2D mode with custom camera (2D).
#'
#' @param camera A camera_2d.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginMode2D(Camera2D camera);
#' ```
#'
#' @family mode functions
#'
#'
#' @seealso [camera_2d()] for creating camera_2d objects.
#'
#' @export
begin_mode_2d <- function(camera) {
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  begin_mode_2d_(camera)
}

#' End mode 2d
#'
#' Ends 2D mode with custom camera.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndMode2D(void);
#' ```
#'
#' @family mode functions
#'
#'
#' @export
end_mode_2d <- function() {
  end_mode_2d_()
}

#' Begin mode 3d
#'
#' Begin 3D mode with custom camera (3D).
#'
#' @param camera A camera_3d.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginMode3D(Camera3D camera);
#' ```
#'
#' @family mode functions
#'
#'
#' @seealso [camera_3d()] for creating camera_3d objects.
#'
#' @export
begin_mode_3d <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  begin_mode_3d_(camera)
}

#' End mode 3d
#'
#' Ends 3D mode and returns to default 2D orthographic mode.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndMode3D(void);
#' ```
#'
#' @family mode functions
#'
#'
#' @export
end_mode_3d <- function() {
  end_mode_3d_()
}

#' Begin texture mode
#'
#' Begin drawing to render texture.
#'
#' @param target A render_texture.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginTextureMode(RenderTexture2D target);
#' ```
#'
#' @family texture functions
#' @family mode functions
#'
#'
#' @export
begin_texture_mode <- function(target) {
  if (!is_render_texture(target)) abort(paste0('`target` must be a render_texture, not ', friendly_typeof(target), '.'), call = NULL)
  begin_texture_mode_(target)
}

#' End texture mode
#'
#' Ends drawing to render texture.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndTextureMode(void);
#' ```
#'
#' @family texture functions
#' @family mode functions
#'
#'
#' @export
end_texture_mode <- function() {
  end_texture_mode_()
}

#' Begin shader mode
#'
#' Begin custom shader drawing.
#'
#' @param shader A shader.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginShaderMode(Shader shader);
#' ```
#'
#' @family shader functions
#' @family mode functions
#'
#'
#' @seealso [shader()] for creating shader objects.
#'
#' @export
begin_shader_mode <- function(shader) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  begin_shader_mode_(shader)
}

#' End shader mode
#'
#' End custom shader drawing (use default shader).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndShaderMode(void);
#' ```
#'
#' @family shader functions
#' @family mode functions
#'
#'
#' @export
end_shader_mode <- function() {
  end_shader_mode_()
}

#' Begin blend mode
#'
#' Begin blending mode (alpha, additive, multiplied, subtract, custom).
#'
#' @param mode An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginBlendMode(int mode);
#' ```
#'
#' @family mode functions
#'
#'
#' @export
begin_blend_mode <- function(mode) {
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  begin_blend_mode_(mode)
}

#' End blend mode
#'
#' End blending mode (reset to default: alpha blending).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndBlendMode(void);
#' ```
#'
#' @family mode functions
#'
#'
#' @export
end_blend_mode <- function() {
  end_blend_mode_()
}

#' Begin scissor mode
#'
#' Begin scissor mode (define screen area for following drawing).
#'
#' @param x An integer.
#' @param y An integer.
#' @param width An integer.
#' @param height An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void BeginScissorMode(int x, int y, int width, int height);
#' ```
#'
#' @family mode functions
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

#' End scissor mode
#'
#' End scissor mode.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndScissorMode(void);
#' ```
#'
#' @family mode functions
#'
#'
#' @export
end_scissor_mode <- function() {
  end_scissor_mode_()
}

#' End vr stereo mode
#'
#' End stereo rendering (requires VR simulator).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void EndVrStereoMode(void);
#' ```
#'
#' @family mode functions
#'
#'
#' @export
end_vr_stereo_mode <- function() {
  end_vr_stereo_mode_()
}

#' Load shader
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
#' Shader LoadShader(const char *vsFileName, const char *fsFileName);
#' ```
#'
#' @family shader functions
#'
#'
#' @export
load_shader <- function(vs_file_name, fs_file_name) {
  if (!is_const_char_pointer(vs_file_name)) abort(paste0('`vs_file_name` must be a string, not ', friendly_typeof(vs_file_name), '.'), call = NULL)
  if (!is_const_char_pointer(fs_file_name)) abort(paste0('`fs_file_name` must be a string, not ', friendly_typeof(fs_file_name), '.'), call = NULL)
  load_shader_(vs_file_name, fs_file_name)
}

#' Load shader from memory
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
#' Shader LoadShaderFromMemory(const char *vsCode, const char *fsCode);
#' ```
#'
#' @family shader functions
#'
#'
#' @export
load_shader_from_memory <- function(vs_code, fs_code) {
  if (!is_const_char_pointer(vs_code)) abort(paste0('`vs_code` must be a string, not ', friendly_typeof(vs_code), '.'), call = NULL)
  if (!is_const_char_pointer(fs_code)) abort(paste0('`fs_code` must be a string, not ', friendly_typeof(fs_code), '.'), call = NULL)
  load_shader_from_memory_(vs_code, fs_code)
}

#' Get shader location
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
#' int GetShaderLocation(Shader shader, const char *uniformName);
#' ```
#'
#' @family shader functions
#'
#'
#' @seealso [shader()] for creating shader objects.
#'
#' @export
get_shader_location <- function(shader, uniform_name) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_const_char_pointer(uniform_name)) abort(paste0('`uniform_name` must be a string, not ', friendly_typeof(uniform_name), '.'), call = NULL)
  get_shader_location_(shader, uniform_name)
}

#' Get shader location attrib
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
#' int GetShaderLocationAttrib(Shader shader, const char *attribName);
#' ```
#'
#' @family shader functions
#'
#'
#' @seealso [shader()] for creating shader objects.
#'
#' @export
get_shader_location_attrib <- function(shader, attrib_name) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_const_char_pointer(attrib_name)) abort(paste0('`attrib_name` must be a string, not ', friendly_typeof(attrib_name), '.'), call = NULL)
  get_shader_location_attrib_(shader, attrib_name)
}

#' Set shader value matrix
#'
#' Set shader uniform value (matrix 4x4).
#'
#' @param shader A shader.
#' @param loc_index An integer.
#' @param mat A numeric matrix of 4 by 4.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);
#' ```
#'
#' @family shader functions
#'
#'
#' @seealso [shader()] for creating shader objects.
#'
#' @export
set_shader_value_matrix <- function(shader, loc_index, mat) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a numeric matrix of 4 by 4, not ', friendly_typeof(mat), '.'), call = NULL)
  set_shader_value_matrix_(shader, loc_index, mat)
}

#' Set shader value texture
#'
#' Set shader uniform value for texture (sampler2d).
#'
#' @param shader A shader.
#' @param loc_index An integer.
#' @param texture A texture.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);
#' ```
#'
#' @family shader functions
#' @family texture functions
#'
#'
#' @seealso [shader()] for creating shader objects.
#' @seealso [texture()] for creating texture objects.
#'
#' @export
set_shader_value_texture <- function(shader, loc_index, texture) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  set_shader_value_texture_(shader, loc_index, texture)
}

#' Unload shader
#'
#' Unload shader from GPU memory (VRAM).
#'
#' @param shader A shader.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadShader(Shader shader);
#' ```
#'
#' @family shader functions
#'
#'
#' @seealso [shader()] for creating shader objects.
#'
#' @export
unload_shader <- function(shader) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  unload_shader_(shader)
}

#' Get camera matrix
#'
#' Get camera transform matrix (view matrix).
#'
#' @param camera A camera_3d.
#'
#' @return A numeric matrix of 4 by 4
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Matrix GetCameraMatrix(Camera camera);
#' ```
#'
#' @family camera functions
#'
#'
#' @seealso [camera_3d()] for creating camera_3d objects.
#'
#' @export
get_camera_matrix <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_matrix_(camera)
}

#' Get camera matrix 2d
#'
#' Get camera 2d transform matrix.
#'
#' @param camera A camera_2d.
#'
#' @return A numeric matrix of 4 by 4
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Matrix GetCameraMatrix2D(Camera2D camera);
#' ```
#'
#' @family camera functions
#'
#'
#' @seealso [camera_2d()] for creating camera_2d objects.
#'
#' @export
get_camera_matrix_2d <- function(camera) {
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_matrix_2d_(camera)
}

#' Get world to screen
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
#' @family world functions
#' @family screen functions
#'
#'
#' @seealso [camera_3d()] for creating camera_3d objects.
#'
#' @export
get_world_to_screen <- function(position, camera) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_world_to_screen_(position, camera)
}

#' Get world to screen ex
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
#' @family world functions
#' @family screen functions
#'
#'
#' @seealso [camera_3d()] for creating camera_3d objects.
#'
#' @export
get_world_to_screen_ex <- function(position, camera, width, height) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  get_world_to_screen_ex_(position, camera, width, height)
}

#' Get world to screen 2d
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
#' @family world functions
#' @family screen functions
#'
#'
#' @seealso [camera_2d()] for creating camera_2d objects.
#'
#' @export
get_world_to_screen_2d <- function(position, camera) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_world_to_screen_2d_(position, camera)
}

#' Get screen to world 2d
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
#' @family screen functions
#' @family world functions
#'
#'
#' @seealso [camera_2d()] for creating camera_2d objects.
#'
#' @export
get_screen_to_world_2d <- function(position, camera) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_camera_2d(camera)) abort(paste0('`camera` must be a camera_2d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_screen_to_world_2d_(position, camera)
}

#' Set target fps
#'
#' Set target FPS (maximum).
#'
#' @param fps An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTargetFPS(int fps);
#' ```
#'
#' @family fps functions
#'
#'
#' @export
set_target_fps <- function(fps) {
  if (!is_int(fps)) abort(paste0('`fps` must be an integer, not ', friendly_typeof(fps), '.'), call = NULL)
  set_target_fps_(fps)
}

#' Get fps
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
#'
#'
#' @export
get_fps <- function() {
  get_fps_()
}

#' Get frame time
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
#'
#' @export
get_frame_time <- function() {
  get_frame_time_()
}

#' Get time
#'
#' Get elapsed time in seconds since InitWindow().
#'

#'
#' @return A double
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' double GetTime(void);
#' ```
#'
#'
#' @export
get_time <- function() {
  get_time_()
}

#' Get random value
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
#'
#' @export
get_random_value <- function(min, max) {
  if (!is_int(min)) abort(paste0('`min` must be an integer, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_int(max)) abort(paste0('`max` must be an integer, not ', friendly_typeof(max), '.'), call = NULL)
  get_random_value_(min, max)
}

#' Take screenshot
#'
#' Takes a screenshot of current screen (filename extension defines format).
#'
#' @param file_name A string.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void TakeScreenshot(const char *fileName);
#' ```
#'
#'
#' @export
take_screenshot <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  take_screenshot_(file_name)
}

#' Set trace log level
#'
#' Set the current threshold (minimum) log level.
#'
#' @param log_level An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTraceLogLevel(int logLevel);
#' ```
#'
#'
#' @export
set_trace_log_level <- function(log_level) {
  if (!is_int(log_level)) abort(paste0('`log_level` must be an integer, not ', friendly_typeof(log_level), '.'), call = NULL)
  set_trace_log_level_(log_level)
}

#' Load file text
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
#' char *LoadFileText(const char *fileName);
#' ```
#'
#' @family file functions
#' @family text functions
#'
#'
#' @export
load_file_text <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_file_text_(file_name)
}

#' File exists
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
#' bool FileExists(const char *fileName);
#' ```
#'
#' @family file functions
#'
#'
#' @export
file_exists <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  file_exists_(file_name)
}

#' Directory exists
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
#' bool DirectoryExists(const char *dirPath);
#' ```
#'
#' @family directory functions
#'
#'
#' @export
directory_exists <- function(dir_path) {
  if (!is_const_char_pointer(dir_path)) abort(paste0('`dir_path` must be a string, not ', friendly_typeof(dir_path), '.'), call = NULL)
  directory_exists_(dir_path)
}

#' Is file extension
#'
#' Check file extension (including point: .png, .wav).
#'
#' @param file_name A string.
#' @param ext A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsFileExtension(const char *fileName, const char *ext);
#' ```
#'
#' @family file functions
#'
#'
#' @export
is_file_extension <- function(file_name, ext) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_const_char_pointer(ext)) abort(paste0('`ext` must be a string, not ', friendly_typeof(ext), '.'), call = NULL)
  is_file_extension_(file_name, ext)
}

#' Get file extension
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
#' const char *GetFileExtension(const char *fileName);
#' ```
#'
#' @family file functions
#'
#'
#' @export
get_file_extension <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  get_file_extension_(file_name)
}

#' Get file name
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
#' const char *GetFileName(const char *filePath);
#' ```
#'
#' @family file functions
#'
#'
#' @export
get_file_name <- function(file_path) {
  if (!is_const_char_pointer(file_path)) abort(paste0('`file_path` must be a string, not ', friendly_typeof(file_path), '.'), call = NULL)
  get_file_name_(file_path)
}

#' Get file name without ext
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
#' const char *GetFileNameWithoutExt(const char *filePath);
#' ```
#'
#' @family file functions
#'
#'
#' @export
get_file_name_without_ext <- function(file_path) {
  if (!is_const_char_pointer(file_path)) abort(paste0('`file_path` must be a string, not ', friendly_typeof(file_path), '.'), call = NULL)
  get_file_name_without_ext_(file_path)
}

#' Get directory path
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
#' const char *GetDirectoryPath(const char *filePath);
#' ```
#'
#' @family directory functions
#'
#'
#' @export
get_directory_path <- function(file_path) {
  if (!is_const_char_pointer(file_path)) abort(paste0('`file_path` must be a string, not ', friendly_typeof(file_path), '.'), call = NULL)
  get_directory_path_(file_path)
}

#' Get prev directory path
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
#' const char *GetPrevDirectoryPath(const char *dirPath);
#' ```
#'
#' @family directory functions
#'
#'
#' @export
get_prev_directory_path <- function(dir_path) {
  if (!is_const_char_pointer(dir_path)) abort(paste0('`dir_path` must be a string, not ', friendly_typeof(dir_path), '.'), call = NULL)
  get_prev_directory_path_(dir_path)
}

#' Get working directory
#'
#' Get current working directory (uses static string).
#'

#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' const char *GetWorkingDirectory(void);
#' ```
#'
#' @family directory functions
#'
#'
#' @export
get_working_directory <- function() {
  get_working_directory_()
}

#' Clear directory files
#'
#' Clear directory files paths buffers (free memory).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ClearDirectoryFiles(void);
#' ```
#'
#' @family directory functions
#'
#'
#' @export
clear_directory_files <- function() {
  clear_directory_files_()
}

#' Change directory
#'
#' Change working directory, return true on success.
#'
#' @param dir A string.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool ChangeDirectory(const char *dir);
#' ```
#'
#' @family directory functions
#'
#'
#' @export
change_directory <- function(dir) {
  if (!is_const_char_pointer(dir)) abort(paste0('`dir` must be a string, not ', friendly_typeof(dir), '.'), call = NULL)
  change_directory_(dir)
}

#' Is file dropped
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
#' @family file functions
#'
#'
#' @export
is_file_dropped <- function() {
  is_file_dropped_()
}

#' Clear dropped files
#'
#' Clear dropped files paths buffer (free memory).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ClearDroppedFiles(void);
#' ```
#'
#'
#' @export
clear_dropped_files <- function() {
  clear_dropped_files_()
}

#' Get file mod time
#'
#' Get file modification time (last write time).
#'
#' @param file_name A string.
#'
#' @return A long
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' long GetFileModTime(const char *fileName);
#' ```
#'
#' @family file functions
#'
#'
#' @export
get_file_mod_time <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  get_file_mod_time_(file_name)
}

#' Save storage value
#'
#' Save integer value to storage file (to defined position), returns true on success.
#'
#' @param position A non-negative integer.
#' @param value An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool SaveStorageValue(unsigned int position, int value);
#' ```
#'
#'
#' @export
save_storage_value <- function(position, value) {
  if (!is_unsigned_int(position)) abort(paste0('`position` must be a non-negative integer, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
  save_storage_value_(position, value)
}

#' Load storage value
#'
#' Load integer value from storage file (from defined position).
#'
#' @param position A non-negative integer.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int LoadStorageValue(unsigned int position);
#' ```
#'
#'
#' @export
load_storage_value <- function(position) {
  if (!is_unsigned_int(position)) abort(paste0('`position` must be a non-negative integer, not ', friendly_typeof(position), '.'), call = NULL)
  load_storage_value_(position)
}

#' Is key pressed
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
#' @family key functions
#'
#'
#' @export
is_key_pressed <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_pressed_(key)
}

#' Is key down
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
#' @family key functions
#'
#'
#' @export
is_key_down <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_down_(key)
}

#' Is key released
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
#' @family key functions
#'
#'
#' @export
is_key_released <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_released_(key)
}

#' Is key up
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
#' @family key functions
#'
#'
#' @export
is_key_up <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  is_key_up_(key)
}

#' Set exit key
#'
#' Set a custom key to exit program (default is ESC).
#'
#' @param key An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetExitKey(int key);
#' ```
#'
#' @family key functions
#'
#'
#' @export
set_exit_key <- function(key) {
  if (!is_int(key)) abort(paste0('`key` must be an integer, not ', friendly_typeof(key), '.'), call = NULL)
  set_exit_key_(key)
}

#' Get key pressed
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
#' @family key functions
#'
#'
#' @export
get_key_pressed <- function() {
  get_key_pressed_()
}

#' Get char pressed
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
#' @family key functions
#'
#'
#' @export
get_char_pressed <- function() {
  get_char_pressed_()
}

#' Is gamepad available
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
#' @family gamepad functions
#'
#'
#' @export
is_gamepad_available <- function(gamepad) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  is_gamepad_available_(gamepad)
}

#' Get gamepad name
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
#' const char *GetGamepadName(int gamepad);
#' ```
#'
#' @family gamepad functions
#'
#'
#' @export
get_gamepad_name <- function(gamepad) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  get_gamepad_name_(gamepad)
}

#' Is gamepad button pressed
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
#' @family gamepad functions
#'
#'
#' @export
is_gamepad_button_pressed <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_pressed_(gamepad, button)
}

#' Is gamepad button down
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
#' @family gamepad functions
#'
#'
#' @export
is_gamepad_button_down <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_down_(gamepad, button)
}

#' Is gamepad button released
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
#' @family gamepad functions
#'
#'
#' @export
is_gamepad_button_released <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_released_(gamepad, button)
}

#' Is gamepad button up
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
#' @family gamepad functions
#'
#'
#' @export
is_gamepad_button_up <- function(gamepad, button) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_gamepad_button_up_(gamepad, button)
}

#' Get gamepad button pressed
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
#' @family gamepad functions
#'
#'
#' @export
get_gamepad_button_pressed <- function() {
  get_gamepad_button_pressed_()
}

#' Get gamepad axis count
#'
#' Get gamepad axis count for a gamepad.
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
#' @family gamepad functions
#'
#'
#' @export
get_gamepad_axis_count <- function(gamepad) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  get_gamepad_axis_count_(gamepad)
}

#' Get gamepad axis movement
#'
#' Get axis movement value for a gamepad axis.
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
#' @family gamepad functions
#'
#'
#' @export
get_gamepad_axis_movement <- function(gamepad, axis) {
  if (!is_int(gamepad)) abort(paste0('`gamepad` must be an integer, not ', friendly_typeof(gamepad), '.'), call = NULL)
  if (!is_int(axis)) abort(paste0('`axis` must be an integer, not ', friendly_typeof(axis), '.'), call = NULL)
  get_gamepad_axis_movement_(gamepad, axis)
}

#' Set gamepad mappings
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
#' int SetGamepadMappings(const char *mappings);
#' ```
#'
#' @family gamepad functions
#'
#'
#' @export
set_gamepad_mappings <- function(mappings) {
  if (!is_const_char_pointer(mappings)) abort(paste0('`mappings` must be a string, not ', friendly_typeof(mappings), '.'), call = NULL)
  set_gamepad_mappings_(mappings)
}

#' Is mouse button pressed
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
#' @family mouse functions
#'
#'
#' @export
is_mouse_button_pressed <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_pressed_(button)
}

#' Is mouse button down
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
#' @family mouse functions
#'
#'
#' @export
is_mouse_button_down <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_down_(button)
}

#' Is mouse button released
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
#' @family mouse functions
#'
#'
#' @export
is_mouse_button_released <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_released_(button)
}

#' Is mouse button up
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
#' @family mouse functions
#'
#'
#' @export
is_mouse_button_up <- function(button) {
  if (!is_int(button)) abort(paste0('`button` must be an integer, not ', friendly_typeof(button), '.'), call = NULL)
  is_mouse_button_up_(button)
}

#' Get mouse x
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
#' @family mouse functions
#'
#'
#' @export
get_mouse_x <- function() {
  get_mouse_x_()
}

#' Get mouse y
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
#' @family mouse functions
#'
#'
#' @export
get_mouse_y <- function() {
  get_mouse_y_()
}

#' Get mouse position
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
#' @family mouse functions
#'
#'
#' @export
get_mouse_position <- function() {
  get_mouse_position_()
}

#' Get mouse delta
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
#' @family mouse functions
#'
#'
#' @export
get_mouse_delta <- function() {
  get_mouse_delta_()
}

#' Set mouse position
#'
#' Set mouse position XY.
#'
#' @param x An integer.
#' @param y An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMousePosition(int x, int y);
#' ```
#'
#' @family mouse functions
#'
#'
#' @export
set_mouse_position <- function(x, y) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  set_mouse_position_(x, y)
}

#' Set mouse offset
#'
#' Set mouse offset.
#'
#' @param offset_x An integer.
#' @param offset_y An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMouseOffset(int offsetX, int offsetY);
#' ```
#'
#' @family mouse functions
#'
#'
#' @export
set_mouse_offset <- function(offset_x, offset_y) {
  if (!is_int(offset_x)) abort(paste0('`offset_x` must be an integer, not ', friendly_typeof(offset_x), '.'), call = NULL)
  if (!is_int(offset_y)) abort(paste0('`offset_y` must be an integer, not ', friendly_typeof(offset_y), '.'), call = NULL)
  set_mouse_offset_(offset_x, offset_y)
}

#' Set mouse scale
#'
#' Set mouse scaling.
#'
#' @param scale_x A number.
#' @param scale_y A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMouseScale(float scaleX, float scaleY);
#' ```
#'
#' @family mouse functions
#'
#'
#' @export
set_mouse_scale <- function(scale_x, scale_y) {
  if (!is_float(scale_x)) abort(paste0('`scale_x` must be a number, not ', friendly_typeof(scale_x), '.'), call = NULL)
  if (!is_float(scale_y)) abort(paste0('`scale_y` must be a number, not ', friendly_typeof(scale_y), '.'), call = NULL)
  set_mouse_scale_(scale_x, scale_y)
}

#' Get mouse wheel move
#'
#' Get mouse wheel movement Y.
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
#' @family mouse functions
#'
#'
#' @export
get_mouse_wheel_move <- function() {
  get_mouse_wheel_move_()
}

#' Set mouse cursor
#'
#' Set mouse cursor.
#'
#' @param cursor An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMouseCursor(int cursor);
#' ```
#'
#' @family mouse functions
#' @family cursor functions
#'
#'
#' @export
set_mouse_cursor <- function(cursor) {
  if (!is_int(cursor)) abort(paste0('`cursor` must be an integer, not ', friendly_typeof(cursor), '.'), call = NULL)
  set_mouse_cursor_(cursor)
}

#' Get touch x
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
#' @family touch functions
#'
#'
#' @export
get_touch_x <- function() {
  get_touch_x_()
}

#' Get touch y
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
#' @family touch functions
#'
#'
#' @export
get_touch_y <- function() {
  get_touch_y_()
}

#' Get touch position
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
#' @family touch functions
#'
#'
#' @export
get_touch_position <- function(index) {
  if (!is_int(index)) abort(paste0('`index` must be an integer, not ', friendly_typeof(index), '.'), call = NULL)
  get_touch_position_(index)
}

#' Get touch point id
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
#' @family touch functions
#'
#'
#' @export
get_touch_point_id <- function(index) {
  if (!is_int(index)) abort(paste0('`index` must be an integer, not ', friendly_typeof(index), '.'), call = NULL)
  get_touch_point_id_(index)
}

#' Get touch point count
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
#' @family touch functions
#'
#'
#' @export
get_touch_point_count <- function() {
  get_touch_point_count_()
}

#' Set gestures enabled
#'
#' Enable a set of gestures using flags.
#'
#' @param flags A non-negative integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetGesturesEnabled(unsigned int flags);
#' ```
#'
#'
#' @export
set_gestures_enabled <- function(flags) {
  if (!is_unsigned_int(flags)) abort(paste0('`flags` must be a non-negative integer, not ', friendly_typeof(flags), '.'), call = NULL)
  set_gestures_enabled_(flags)
}

#' Is gesture detected
#'
#' Check if a gesture have been detected.
#'
#' @param gesture An integer.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool IsGestureDetected(int gesture);
#' ```
#'
#'
#' @export
is_gesture_detected <- function(gesture) {
  if (!is_int(gesture)) abort(paste0('`gesture` must be an integer, not ', friendly_typeof(gesture), '.'), call = NULL)
  is_gesture_detected_(gesture)
}

#' Get gesture detected
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
#'
#' @export
get_gesture_detected <- function() {
  get_gesture_detected_()
}

#' Get gesture hold duration
#'
#' Get gesture hold time in milliseconds.
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
#'
#' @export
get_gesture_hold_duration <- function() {
  get_gesture_hold_duration_()
}

#' Get gesture drag vector
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
#'
#' @export
get_gesture_drag_vector <- function() {
  get_gesture_drag_vector_()
}

#' Get gesture drag angle
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
#'
#' @export
get_gesture_drag_angle <- function() {
  get_gesture_drag_angle_()
}

#' Get gesture pinch vector
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
#'
#' @export
get_gesture_pinch_vector <- function() {
  get_gesture_pinch_vector_()
}

#' Get gesture pinch angle
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
#'
#' @export
get_gesture_pinch_angle <- function() {
  get_gesture_pinch_angle_()
}

#' Set camera mode
#'
#' Set camera mode (multiple camera modes available).
#'
#' @param camera A camera_3d.
#' @param mode An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetCameraMode(Camera camera, int mode);
#' ```
#'
#' @family camera functions
#' @family mode functions
#'
#'
#' @seealso [camera_3d()] for creating camera_3d objects.
#'
#' @export
set_camera_mode <- function(camera, mode) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  set_camera_mode_(camera, mode)
}

#' Update camera
#'
#' Update camera position for selected mode.
#'
#' @param camera A camera_3d.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UpdateCamera(Camera *camera);
#' ```
#'
#' @family camera functions
#'
#'
#' @seealso [camera_3d()] for creating camera_3d objects.
#'
#' @export
update_camera <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  update_camera_(camera)
}

#' Set camera pan control
#'
#' Set camera pan key to combine with mouse movement (free camera).
#'
#' @param key_pan An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetCameraPanControl(int keyPan);
#' ```
#'
#' @family camera functions
#'
#'
#' @export
set_camera_pan_control <- function(key_pan) {
  if (!is_int(key_pan)) abort(paste0('`key_pan` must be an integer, not ', friendly_typeof(key_pan), '.'), call = NULL)
  set_camera_pan_control_(key_pan)
}

#' Set camera alt control
#'
#' Set camera alt key to combine with mouse movement (free camera).
#'
#' @param key_alt An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetCameraAltControl(int keyAlt);
#' ```
#'
#' @family camera functions
#'
#'
#' @export
set_camera_alt_control <- function(key_alt) {
  if (!is_int(key_alt)) abort(paste0('`key_alt` must be an integer, not ', friendly_typeof(key_alt), '.'), call = NULL)
  set_camera_alt_control_(key_alt)
}

#' Set camera smooth zoom control
#'
#' Set camera smooth zoom key to combine with mouse (free camera).
#'
#' @param key_smooth_zoom An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetCameraSmoothZoomControl(int keySmoothZoom);
#' ```
#'
#' @family camera functions
#'
#'
#' @export
set_camera_smooth_zoom_control <- function(key_smooth_zoom) {
  if (!is_int(key_smooth_zoom)) abort(paste0('`key_smooth_zoom` must be an integer, not ', friendly_typeof(key_smooth_zoom), '.'), call = NULL)
  set_camera_smooth_zoom_control_(key_smooth_zoom)
}

#' Set camera move controls
#'
#' Set camera move controls (1st person and 3rd person cameras).
#'
#' @param key_front An integer.
#' @param key_back An integer.
#' @param key_right An integer.
#' @param key_left An integer.
#' @param key_up An integer.
#' @param key_down An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetCameraMoveControls(int keyFront, int keyBack, int keyRight, int keyLeft, int keyUp, int keyDown);
#' ```
#'
#' @family camera functions
#'
#'
#' @export
set_camera_move_controls <- function(key_front, key_back, key_right, key_left, key_up, key_down) {
  if (!is_int(key_front)) abort(paste0('`key_front` must be an integer, not ', friendly_typeof(key_front), '.'), call = NULL)
  if (!is_int(key_back)) abort(paste0('`key_back` must be an integer, not ', friendly_typeof(key_back), '.'), call = NULL)
  if (!is_int(key_right)) abort(paste0('`key_right` must be an integer, not ', friendly_typeof(key_right), '.'), call = NULL)
  if (!is_int(key_left)) abort(paste0('`key_left` must be an integer, not ', friendly_typeof(key_left), '.'), call = NULL)
  if (!is_int(key_up)) abort(paste0('`key_up` must be an integer, not ', friendly_typeof(key_up), '.'), call = NULL)
  if (!is_int(key_down)) abort(paste0('`key_down` must be an integer, not ', friendly_typeof(key_down), '.'), call = NULL)
  set_camera_move_controls_(key_front, key_back, key_right, key_left, key_up, key_down)
}

#' Set shapes texture
#'
#' Set texture and rectangle to be used on shapes drawing.
#'
#' @param texture A texture.
#' @param source A rectangle.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetShapesTexture(Texture2D texture, Rectangle source);
#' ```
#'
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [rectangle()] for creating rectangle objects.
#'
#' @export
set_shapes_texture <- function(texture, source) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  set_shapes_texture_(texture, source)
}

#' Draw pixel
#'
#' Draw a pixel.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPixel(int posX, int posY, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_pixel <- function(pos_x, pos_y, color) {
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_pixel_(pos_x, pos_y, color)
}

#' Draw pixel v
#'
#' Draw a pixel (Vector version).
#'
#' @param position A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPixelV(Vector2 position, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_pixel_v <- function(position, color) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_pixel_v_(position, color)
}

#' Draw line
#'
#' Draw a line.
#'
#' @param start_pos_x An integer.
#' @param start_pos_y An integer.
#' @param end_pos_x An integer.
#' @param end_pos_y An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);
#' ```
#'
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw line v
#'
#' Draw a line (Vector version).
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);
#' ```
#'
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_line_v <- function(start_pos, end_pos, color) {
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_v_(start_pos, end_pos, color)
}

#' Draw line ex
#'
#' Draw a line defining thickness.
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);
#' ```
#'
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_line_ex <- function(start_pos, end_pos, thick, color) {
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_ex_(start_pos, end_pos, thick, color)
}

#' Draw line bezier
#'
#' Draw a line using cubic-bezier curves in-out.
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);
#' ```
#'
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_line_bezier <- function(start_pos, end_pos, thick, color) {
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_bezier_(start_pos, end_pos, thick, color)
}

#' Draw line bezier quad
#'
#' Draw line using quadratic bezier curves with a control point.
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param control_pos A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);
#' ```
#'
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_line_bezier_quad <- function(start_pos, end_pos, control_pos, thick, color) {
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_vector_2(control_pos)) abort(paste0('`control_pos` must be a numeric vector of length 2, not ', friendly_typeof(control_pos), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_bezier_quad_(start_pos, end_pos, control_pos, thick, color)
}

#' Draw line bezier cubic
#'
#' Draw line using cubic bezier curves with 2 control points.
#'
#' @param start_pos A numeric vector of length 2.
#' @param end_pos A numeric vector of length 2.
#' @param start_control_pos A numeric vector of length 2.
#' @param end_control_pos A numeric vector of length 2.
#' @param thick A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color);
#' ```
#'
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_line_bezier_cubic <- function(start_pos, end_pos, start_control_pos, end_control_pos, thick, color) {
  if (!is_vector_2(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_2(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_vector_2(start_control_pos)) abort(paste0('`start_control_pos` must be a numeric vector of length 2, not ', friendly_typeof(start_control_pos), '.'), call = NULL)
  if (!is_vector_2(end_control_pos)) abort(paste0('`end_control_pos` must be a numeric vector of length 2, not ', friendly_typeof(end_control_pos), '.'), call = NULL)
  if (!is_float(thick)) abort(paste0('`thick` must be a number, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_bezier_cubic_(start_pos, end_pos, start_control_pos, end_control_pos, thick, color)
}

#' Draw circle
#'
#' Draw a color-filled circle.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircle(int centerX, int centerY, float radius, Color color);
#' ```
#'
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_circle <- function(center_x, center_y, radius, color) {
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_(center_x, center_y, radius, color)
}

#' Draw circle sector
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw circle sector lines
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw circle gradient
#'
#' Draw a gradient-filled circle.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius A number.
#' @param color_1 A color.
#' @param color_2 A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);
#' ```
#'
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_circle_gradient <- function(center_x, center_y, radius, color_1, color_2) {
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color_1)) abort(paste0('`color_1` must be a color, not ', friendly_typeof(color_1), '.'), call = NULL)
  if (!is_color(color_2)) abort(paste0('`color_2` must be a color, not ', friendly_typeof(color_2), '.'), call = NULL)
  draw_circle_gradient_(center_x, center_y, radius, color_1, color_2)
}

#' Draw circle v
#'
#' Draw a color-filled circle (Vector version).
#'
#' @param center A numeric vector of length 2.
#' @param radius A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleV(Vector2 center, float radius, Color color);
#' ```
#'
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_circle_v <- function(center, radius, color) {
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_v_(center, radius, color)
}

#' Draw circle lines
#'
#' Draw circle outline.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircleLines(int centerX, int centerY, float radius, Color color);
#' ```
#'
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_circle_lines <- function(center_x, center_y, radius, color) {
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_circle_lines_(center_x, center_y, radius, color)
}

#' Draw ellipse
#'
#' Draw ellipse.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius_h A number.
#' @param radius_v A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw ellipse lines
#'
#' Draw ellipse outline.
#'
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius_h A number.
#' @param radius_v A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw ring
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw ring lines
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw rectangle
#'
#' Draw a color-filled rectangle.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangle(int posX, int posY, int width, int height, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw rectangle v
#'
#' Draw a color-filled rectangle (Vector version).
#'
#' @param position A numeric vector of length 2.
#' @param size A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleV(Vector2 position, Vector2 size, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_v <- function(position, size, color) {
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_2(size)) abort(paste0('`size` must be a numeric vector of length 2, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_v_(position, size, color)
}

#' Draw rectangle rec
#'
#' Draw a color-filled rectangle.
#'
#' @param rec A rectangle.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleRec(Rectangle rec, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_rec <- function(rec, color) {
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_rec_(rec, color)
}

#' Draw rectangle pro
#'
#' Draw a color-filled rectangle with pro parameters.
#'
#' @param rec A rectangle.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_pro <- function(rec, origin, rotation, color) {
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_pro_(rec, origin, rotation, color)
}

#' Draw rectangle gradient v
#'
#' Draw a vertical-gradient-filled rectangle.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param color_1 A color.
#' @param color_2 A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_gradient_v <- function(pos_x, pos_y, width, height, color_1, color_2) {
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(color_1)) abort(paste0('`color_1` must be a color, not ', friendly_typeof(color_1), '.'), call = NULL)
  if (!is_color(color_2)) abort(paste0('`color_2` must be a color, not ', friendly_typeof(color_2), '.'), call = NULL)
  draw_rectangle_gradient_v_(pos_x, pos_y, width, height, color_1, color_2)
}

#' Draw rectangle gradient h
#'
#' Draw a horizontal-gradient-filled rectangle.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param color_1 A color.
#' @param color_2 A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_gradient_h <- function(pos_x, pos_y, width, height, color_1, color_2) {
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(color_1)) abort(paste0('`color_1` must be a color, not ', friendly_typeof(color_1), '.'), call = NULL)
  if (!is_color(color_2)) abort(paste0('`color_2` must be a color, not ', friendly_typeof(color_2), '.'), call = NULL)
  draw_rectangle_gradient_h_(pos_x, pos_y, width, height, color_1, color_2)
}

#' Draw rectangle gradient ex
#'
#' Draw a gradient-filled rectangle with custom vertex colors.
#'
#' @param rec A rectangle.
#' @param col_1 A color.
#' @param col_2 A color.
#' @param col_3 A color.
#' @param col_4 A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_gradient_ex <- function(rec, col_1, col_2, col_3, col_4) {
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_color(col_1)) abort(paste0('`col_1` must be a color, not ', friendly_typeof(col_1), '.'), call = NULL)
  if (!is_color(col_2)) abort(paste0('`col_2` must be a color, not ', friendly_typeof(col_2), '.'), call = NULL)
  if (!is_color(col_3)) abort(paste0('`col_3` must be a color, not ', friendly_typeof(col_3), '.'), call = NULL)
  if (!is_color(col_4)) abort(paste0('`col_4` must be a color, not ', friendly_typeof(col_4), '.'), call = NULL)
  draw_rectangle_gradient_ex_(rec, col_1, col_2, col_3, col_4)
}

#' Draw rectangle lines
#'
#' Draw rectangle outline.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleLines(int posX, int posY, int width, int height, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw rectangle lines ex
#'
#' Draw rectangle outline with extended parameters.
#'
#' @param rec A rectangle.
#' @param line_thick A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_lines_ex <- function(rec, line_thick, color) {
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_float(line_thick)) abort(paste0('`line_thick` must be a number, not ', friendly_typeof(line_thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_lines_ex_(rec, line_thick, color)
}

#' Draw rectangle rounded
#'
#' Draw rectangle with rounded edges.
#'
#' @param rec A rectangle.
#' @param roundness A number.
#' @param segments An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_rounded <- function(rec, roundness, segments, color) {
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_float(roundness)) abort(paste0('`roundness` must be a number, not ', friendly_typeof(roundness), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_rounded_(rec, roundness, segments, color)
}

#' Draw rectangle rounded lines
#'
#' Draw rectangle with rounded edges outline.
#'
#' @param rec A rectangle.
#' @param roundness A number.
#' @param segments An integer.
#' @param line_thick A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);
#' ```
#'
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_rectangle_rounded_lines <- function(rec, roundness, segments, line_thick, color) {
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_float(roundness)) abort(paste0('`roundness` must be a number, not ', friendly_typeof(roundness), '.'), call = NULL)
  if (!is_int(segments)) abort(paste0('`segments` must be an integer, not ', friendly_typeof(segments), '.'), call = NULL)
  if (!is_float(line_thick)) abort(paste0('`line_thick` must be a number, not ', friendly_typeof(line_thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_rectangle_rounded_lines_(rec, roundness, segments, line_thick, color)
}

#' Draw triangle
#'
#' Draw a color-filled triangle (vertex in counter-clockwise order!).
#'
#' @param v_1 A numeric vector of length 2.
#' @param v_2 A numeric vector of length 2.
#' @param v_3 A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_triangle <- function(v_1, v_2, v_3, color) {
  if (!is_vector_2(v_1)) abort(paste0('`v_1` must be a numeric vector of length 2, not ', friendly_typeof(v_1), '.'), call = NULL)
  if (!is_vector_2(v_2)) abort(paste0('`v_2` must be a numeric vector of length 2, not ', friendly_typeof(v_2), '.'), call = NULL)
  if (!is_vector_2(v_3)) abort(paste0('`v_3` must be a numeric vector of length 2, not ', friendly_typeof(v_3), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_triangle_(v_1, v_2, v_3, color)
}

#' Draw triangle lines
#'
#' Draw triangle outline (vertex in counter-clockwise order!).
#'
#' @param v_1 A numeric vector of length 2.
#' @param v_2 A numeric vector of length 2.
#' @param v_3 A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_triangle_lines <- function(v_1, v_2, v_3, color) {
  if (!is_vector_2(v_1)) abort(paste0('`v_1` must be a numeric vector of length 2, not ', friendly_typeof(v_1), '.'), call = NULL)
  if (!is_vector_2(v_2)) abort(paste0('`v_2` must be a numeric vector of length 2, not ', friendly_typeof(v_2), '.'), call = NULL)
  if (!is_vector_2(v_3)) abort(paste0('`v_3` must be a numeric vector of length 2, not ', friendly_typeof(v_3), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_triangle_lines_(v_1, v_2, v_3, color)
}

#' Draw poly
#'
#' Draw a regular polygon (Vector version).
#'
#' @param center A numeric vector of length 2.
#' @param sides An integer.
#' @param radius A number.
#' @param rotation A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw poly lines
#'
#' Draw a polygon outline of n sides.
#'
#' @param center A numeric vector of length 2.
#' @param sides An integer.
#' @param radius A number.
#' @param rotation A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw poly lines ex
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Check collision recs
#'
#' Check collision between two rectangles.
#'
#' @param rec_1 A rectangle.
#' @param rec_2 A rectangle.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);
#' ```
#'
#' @family collision functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#'
#' @export
check_collision_recs <- function(rec_1, rec_2) {
  if (!is_rectangle(rec_1)) abort(paste0('`rec_1` must be a rectangle, not ', friendly_typeof(rec_1), '.'), call = NULL)
  if (!is_rectangle(rec_2)) abort(paste0('`rec_2` must be a rectangle, not ', friendly_typeof(rec_2), '.'), call = NULL)
  check_collision_recs_(rec_1, rec_2)
}

#' Check collision circles
#'
#' Check collision between two circles.
#'
#' @param center_1 A numeric vector of length 2.
#' @param radius_1 A number.
#' @param center_2 A numeric vector of length 2.
#' @param radius_2 A number.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);
#' ```
#'
#' @family collision functions
#'
#'
#' @export
check_collision_circles <- function(center_1, radius_1, center_2, radius_2) {
  if (!is_vector_2(center_1)) abort(paste0('`center_1` must be a numeric vector of length 2, not ', friendly_typeof(center_1), '.'), call = NULL)
  if (!is_float(radius_1)) abort(paste0('`radius_1` must be a number, not ', friendly_typeof(radius_1), '.'), call = NULL)
  if (!is_vector_2(center_2)) abort(paste0('`center_2` must be a numeric vector of length 2, not ', friendly_typeof(center_2), '.'), call = NULL)
  if (!is_float(radius_2)) abort(paste0('`radius_2` must be a number, not ', friendly_typeof(radius_2), '.'), call = NULL)
  check_collision_circles_(center_1, radius_1, center_2, radius_2)
}

#' Check collision circle rec
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
#' @family collision functions
#' @family circle functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#'
#' @export
check_collision_circle_rec <- function(center, radius, rec) {
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  check_collision_circle_rec_(center, radius, rec)
}

#' Check collision point rec
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
#' @family collision functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#'
#' @export
check_collision_point_rec <- function(point, rec) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  check_collision_point_rec_(point, rec)
}

#' Check collision point circle
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
#' @family collision functions
#' @family circle functions
#'
#'
#' @export
check_collision_point_circle <- function(point, center, radius) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  check_collision_point_circle_(point, center, radius)
}

#' Check collision point triangle
#'
#' Check if point is inside a triangle.
#'
#' @param point A numeric vector of length 2.
#' @param p_1 A numeric vector of length 2.
#' @param p_2 A numeric vector of length 2.
#' @param p_3 A numeric vector of length 2.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);
#' ```
#'
#' @family collision functions
#'
#'
#' @export
check_collision_point_triangle <- function(point, p_1, p_2, p_3) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_2(p_1)) abort(paste0('`p_1` must be a numeric vector of length 2, not ', friendly_typeof(p_1), '.'), call = NULL)
  if (!is_vector_2(p_2)) abort(paste0('`p_2` must be a numeric vector of length 2, not ', friendly_typeof(p_2), '.'), call = NULL)
  if (!is_vector_2(p_3)) abort(paste0('`p_3` must be a numeric vector of length 2, not ', friendly_typeof(p_3), '.'), call = NULL)
  check_collision_point_triangle_(point, p_1, p_2, p_3)
}

#' Check collision lines
#'
#' Check the collision between two lines defined by two points each, returns collision point by reference.
#'
#' @param start_pos_1 A numeric vector of length 2.
#' @param end_pos_1 A numeric vector of length 2.
#' @param start_pos_2 A numeric vector of length 2.
#' @param end_pos_2 A numeric vector of length 2.
#' @param collision_point A numeric vector of length 2.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint);
#' ```
#'
#' @family collision functions
#'
#'
#' @export
check_collision_lines <- function(start_pos_1, end_pos_1, start_pos_2, end_pos_2, collision_point) {
  if (!is_vector_2(start_pos_1)) abort(paste0('`start_pos_1` must be a numeric vector of length 2, not ', friendly_typeof(start_pos_1), '.'), call = NULL)
  if (!is_vector_2(end_pos_1)) abort(paste0('`end_pos_1` must be a numeric vector of length 2, not ', friendly_typeof(end_pos_1), '.'), call = NULL)
  if (!is_vector_2(start_pos_2)) abort(paste0('`start_pos_2` must be a numeric vector of length 2, not ', friendly_typeof(start_pos_2), '.'), call = NULL)
  if (!is_vector_2(end_pos_2)) abort(paste0('`end_pos_2` must be a numeric vector of length 2, not ', friendly_typeof(end_pos_2), '.'), call = NULL)
  if (!is_vector_2(collision_point)) abort(paste0('`collision_point` must be a numeric vector of length 2, not ', friendly_typeof(collision_point), '.'), call = NULL)
  check_collision_lines_(start_pos_1, end_pos_1, start_pos_2, end_pos_2, collision_point)
}

#' Check collision point line
#'
#' Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold].
#'
#' @param point A numeric vector of length 2.
#' @param p_1 A numeric vector of length 2.
#' @param p_2 A numeric vector of length 2.
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
#' @family collision functions
#' @family line functions
#'
#'
#' @export
check_collision_point_line <- function(point, p_1, p_2, threshold) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_2(p_1)) abort(paste0('`p_1` must be a numeric vector of length 2, not ', friendly_typeof(p_1), '.'), call = NULL)
  if (!is_vector_2(p_2)) abort(paste0('`p_2` must be a numeric vector of length 2, not ', friendly_typeof(p_2), '.'), call = NULL)
  if (!is_int(threshold)) abort(paste0('`threshold` must be an integer, not ', friendly_typeof(threshold), '.'), call = NULL)
  check_collision_point_line_(point, p_1, p_2, threshold)
}

#' Get collision rec
#'
#' Get collision rectangle for two rectangles collision.
#'
#' @param rec_1 A rectangle.
#' @param rec_2 A rectangle.
#'
#' @return A rectangle
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);
#' ```
#'
#' @family collision functions
#'
#'
#' @seealso [rectangle()] for creating rectangle objects.
#'
#' @export
get_collision_rec <- function(rec_1, rec_2) {
  if (!is_rectangle(rec_1)) abort(paste0('`rec_1` must be a rectangle, not ', friendly_typeof(rec_1), '.'), call = NULL)
  if (!is_rectangle(rec_2)) abort(paste0('`rec_2` must be a rectangle, not ', friendly_typeof(rec_2), '.'), call = NULL)
  get_collision_rec_(rec_1, rec_2)
}

#' Load image
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
#' Image LoadImage(const char *fileName);
#' ```
#'
#' @family image functions
#'
#'
#' @export
load_image <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_image_(file_name)
}

#' Load image raw
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
#' Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);
#' ```
#'
#' @family image functions
#'
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

#' Load image from texture
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
#' @family image functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#'
#' @export
load_image_from_texture <- function(texture) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  load_image_from_texture_(texture)
}

#' Load image from screen
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
#' @family image functions
#' @family screen functions
#'
#'
#' @export
load_image_from_screen <- function() {
  load_image_from_screen_()
}

#' Unload image
#'
#' Unload image from CPU memory (RAM).
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadImage(Image image);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
unload_image <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  unload_image_(image)
}

#' Export image
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
#' bool ExportImage(Image image, const char *fileName);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
export_image <- function(image, file_name) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_image_(image, file_name)
}

#' Export image as code
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
#' bool ExportImageAsCode(Image image, const char *fileName);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
export_image_as_code <- function(image, file_name) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_image_as_code_(image, file_name)
}

#' Gen image color
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
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
gen_image_color <- function(width, height, color) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  gen_image_color_(width, height, color)
}

#' Gen image gradient v
#'
#' Generate image: vertical gradient.
#'
#' @param width An integer.
#' @param height An integer.
#' @param top A color.
#' @param bottom A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientV(int width, int height, Color top, Color bottom);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
gen_image_gradient_v <- function(width, height, top, bottom) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(top)) abort(paste0('`top` must be a color, not ', friendly_typeof(top), '.'), call = NULL)
  if (!is_color(bottom)) abort(paste0('`bottom` must be a color, not ', friendly_typeof(bottom), '.'), call = NULL)
  gen_image_gradient_v_(width, height, top, bottom)
}

#' Gen image gradient h
#'
#' Generate image: horizontal gradient.
#'
#' @param width An integer.
#' @param height An integer.
#' @param left A color.
#' @param right A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientH(int width, int height, Color left, Color right);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
gen_image_gradient_h <- function(width, height, left, right) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(left)) abort(paste0('`left` must be a color, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_color(right)) abort(paste0('`right` must be a color, not ', friendly_typeof(right), '.'), call = NULL)
  gen_image_gradient_h_(width, height, left, right)
}

#' Gen image gradient radial
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
#' @family image functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Gen image checked
#'
#' Generate image: checked.
#'
#' @param width An integer.
#' @param height An integer.
#' @param checks_x An integer.
#' @param checks_y An integer.
#' @param col_1 A color.
#' @param col_2 A color.
#'
#' @return An image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
gen_image_checked <- function(width, height, checks_x, checks_y, col_1, col_2) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(checks_x)) abort(paste0('`checks_x` must be an integer, not ', friendly_typeof(checks_x), '.'), call = NULL)
  if (!is_int(checks_y)) abort(paste0('`checks_y` must be an integer, not ', friendly_typeof(checks_y), '.'), call = NULL)
  if (!is_color(col_1)) abort(paste0('`col_1` must be a color, not ', friendly_typeof(col_1), '.'), call = NULL)
  if (!is_color(col_2)) abort(paste0('`col_2` must be a color, not ', friendly_typeof(col_2), '.'), call = NULL)
  gen_image_checked_(width, height, checks_x, checks_y, col_1, col_2)
}

#' Gen image white noise
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
#' @family image functions
#'
#'
#' @export
gen_image_white_noise <- function(width, height, factor) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(factor)) abort(paste0('`factor` must be a number, not ', friendly_typeof(factor), '.'), call = NULL)
  gen_image_white_noise_(width, height, factor)
}

#' Gen image cellular
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
#' @family image functions
#'
#'
#' @export
gen_image_cellular <- function(width, height, tile_size) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(tile_size)) abort(paste0('`tile_size` must be an integer, not ', friendly_typeof(tile_size), '.'), call = NULL)
  gen_image_cellular_(width, height, tile_size)
}

#' Image copy
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
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_copy <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_copy_(image)
}

#' Image from image
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
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [rectangle()] for creating rectangle objects.
#'
#' @export
image_from_image <- function(image, rec) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  image_from_image_(image, rec)
}

#' Image text
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
#' Image ImageText(const char *text, int fontSize, Color color);
#' ```
#'
#' @family image functions
#' @family text functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
image_text <- function(text, font_size, color) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(font_size)) abort(paste0('`font_size` must be an integer, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_text_(text, font_size, color)
}

#' Image text ex
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
#' Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);
#' ```
#'
#' @family image functions
#' @family text functions
#'
#'
#' @seealso [font()] for creating font objects.
#' @seealso [color()] for creating color objects.
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

#' Image format
#'
#' Convert image data to desired format.
#'
#' @param image An image.
#' @param new_format An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageFormat(Image *image, int newFormat);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_format <- function(image, new_format) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(new_format)) abort(paste0('`new_format` must be an integer, not ', friendly_typeof(new_format), '.'), call = NULL)
  image_format_(image, new_format)
}

#' Image to pot
#'
#' Convert image to POT (power-of-two).
#'
#' @param image An image.
#' @param fill A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageToPOT(Image *image, Color fill);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_to_pot <- function(image, fill) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_color(fill)) abort(paste0('`fill` must be a color, not ', friendly_typeof(fill), '.'), call = NULL)
  image_to_pot_(image, fill)
}

#' Image crop
#'
#' Crop an image to a defined rectangle.
#'
#' @param image An image.
#' @param crop A rectangle.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageCrop(Image *image, Rectangle crop);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [rectangle()] for creating rectangle objects.
#'
#' @export
image_crop <- function(image, crop) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_rectangle(crop)) abort(paste0('`crop` must be a rectangle, not ', friendly_typeof(crop), '.'), call = NULL)
  image_crop_(image, crop)
}

#' Image alpha crop
#'
#' Crop image depending on alpha value.
#'
#' @param image An image.
#' @param threshold A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageAlphaCrop(Image *image, float threshold);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_alpha_crop <- function(image, threshold) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_float(threshold)) abort(paste0('`threshold` must be a number, not ', friendly_typeof(threshold), '.'), call = NULL)
  image_alpha_crop_(image, threshold)
}

#' Image alpha clear
#'
#' Clear alpha channel to desired color.
#'
#' @param image An image.
#' @param color A color.
#' @param threshold A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageAlphaClear(Image *image, Color color, float threshold);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_alpha_clear <- function(image, color, threshold) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(threshold)) abort(paste0('`threshold` must be a number, not ', friendly_typeof(threshold), '.'), call = NULL)
  image_alpha_clear_(image, color, threshold)
}

#' Image alpha mask
#'
#' Apply alpha mask to image.
#'
#' @param image An image.
#' @param alpha_mask An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageAlphaMask(Image *image, Image alphaMask);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_alpha_mask <- function(image, alpha_mask) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_image(alpha_mask)) abort(paste0('`alpha_mask` must be an image, not ', friendly_typeof(alpha_mask), '.'), call = NULL)
  image_alpha_mask_(image, alpha_mask)
}

#' Image alpha premultiply
#'
#' Premultiply alpha channel.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageAlphaPremultiply(Image *image);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_alpha_premultiply <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_alpha_premultiply_(image)
}

#' Image resize
#'
#' Resize image (Bicubic scaling algorithm).
#'
#' @param image An image.
#' @param new_width An integer.
#' @param new_height An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageResize(Image *image, int newWidth, int newHeight);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_resize <- function(image, new_width, new_height) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(new_width)) abort(paste0('`new_width` must be an integer, not ', friendly_typeof(new_width), '.'), call = NULL)
  if (!is_int(new_height)) abort(paste0('`new_height` must be an integer, not ', friendly_typeof(new_height), '.'), call = NULL)
  image_resize_(image, new_width, new_height)
}

#' Image resize nn
#'
#' Resize image (Nearest-Neighbor scaling algorithm).
#'
#' @param image An image.
#' @param new_width An integer.
#' @param new_height An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageResizeNN(Image *image, int newWidth,int newHeight);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_resize_nn <- function(image, new_width, new_height) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(new_width)) abort(paste0('`new_width` must be an integer, not ', friendly_typeof(new_width), '.'), call = NULL)
  if (!is_int(new_height)) abort(paste0('`new_height` must be an integer, not ', friendly_typeof(new_height), '.'), call = NULL)
  image_resize_nn_(image, new_width, new_height)
}

#' Image resize canvas
#'
#' Resize canvas and fill with color.
#'
#' @param image An image.
#' @param new_width An integer.
#' @param new_height An integer.
#' @param offset_x An integer.
#' @param offset_y An integer.
#' @param fill A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_resize_canvas <- function(image, new_width, new_height, offset_x, offset_y, fill) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(new_width)) abort(paste0('`new_width` must be an integer, not ', friendly_typeof(new_width), '.'), call = NULL)
  if (!is_int(new_height)) abort(paste0('`new_height` must be an integer, not ', friendly_typeof(new_height), '.'), call = NULL)
  if (!is_int(offset_x)) abort(paste0('`offset_x` must be an integer, not ', friendly_typeof(offset_x), '.'), call = NULL)
  if (!is_int(offset_y)) abort(paste0('`offset_y` must be an integer, not ', friendly_typeof(offset_y), '.'), call = NULL)
  if (!is_color(fill)) abort(paste0('`fill` must be a color, not ', friendly_typeof(fill), '.'), call = NULL)
  image_resize_canvas_(image, new_width, new_height, offset_x, offset_y, fill)
}

#' Image mipmaps
#'
#' Compute all mipmap levels for a provided image.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageMipmaps(Image *image);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_mipmaps <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_mipmaps_(image)
}

#' Image dither
#'
#' Dither image data to 16bpp or lower (Floyd-Steinberg dithering).
#'
#' @param image An image.
#' @param r_bpp An integer.
#' @param g_bpp An integer.
#' @param b_bpp An integer.
#' @param a_bpp An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_dither <- function(image, r_bpp, g_bpp, b_bpp, a_bpp) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(r_bpp)) abort(paste0('`r_bpp` must be an integer, not ', friendly_typeof(r_bpp), '.'), call = NULL)
  if (!is_int(g_bpp)) abort(paste0('`g_bpp` must be an integer, not ', friendly_typeof(g_bpp), '.'), call = NULL)
  if (!is_int(b_bpp)) abort(paste0('`b_bpp` must be an integer, not ', friendly_typeof(b_bpp), '.'), call = NULL)
  if (!is_int(a_bpp)) abort(paste0('`a_bpp` must be an integer, not ', friendly_typeof(a_bpp), '.'), call = NULL)
  image_dither_(image, r_bpp, g_bpp, b_bpp, a_bpp)
}

#' Image flip vertical
#'
#' Flip image vertically.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageFlipVertical(Image *image);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_flip_vertical <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_flip_vertical_(image)
}

#' Image flip horizontal
#'
#' Flip image horizontally.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageFlipHorizontal(Image *image);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_flip_horizontal <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_flip_horizontal_(image)
}

#' Image rotate cw
#'
#' Rotate image clockwise 90deg.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageRotateCW(Image *image);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_rotate_cw <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_rotate_cw_(image)
}

#' Image rotate ccw
#'
#' Rotate image counter-clockwise 90deg.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageRotateCCW(Image *image);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_rotate_ccw <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_rotate_ccw_(image)
}

#' Image color tint
#'
#' Modify image color: tint.
#'
#' @param image An image.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageColorTint(Image *image, Color color);
#' ```
#'
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_color_tint <- function(image, color) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_color_tint_(image, color)
}

#' Image color invert
#'
#' Modify image color: invert.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageColorInvert(Image *image);
#' ```
#'
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_color_invert <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_color_invert_(image)
}

#' Image color grayscale
#'
#' Modify image color: grayscale.
#'
#' @param image An image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageColorGrayscale(Image *image);
#' ```
#'
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_color_grayscale <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  image_color_grayscale_(image)
}

#' Image color contrast
#'
#' Modify image color: contrast (-100 to 100).
#'
#' @param image An image.
#' @param contrast A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageColorContrast(Image *image, float contrast);
#' ```
#'
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_color_contrast <- function(image, contrast) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_float(contrast)) abort(paste0('`contrast` must be a number, not ', friendly_typeof(contrast), '.'), call = NULL)
  image_color_contrast_(image, contrast)
}

#' Image color brightness
#'
#' Modify image color: brightness (-255 to 255).
#'
#' @param image An image.
#' @param brightness An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageColorBrightness(Image *image, int brightness);
#' ```
#'
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
image_color_brightness <- function(image, brightness) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(brightness)) abort(paste0('`brightness` must be an integer, not ', friendly_typeof(brightness), '.'), call = NULL)
  image_color_brightness_(image, brightness)
}

#' Image color replace
#'
#' Modify image color: replace color.
#'
#' @param image An image.
#' @param color A color.
#' @param replace A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageColorReplace(Image *image, Color color, Color replace);
#' ```
#'
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_color_replace <- function(image, color, replace) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_color(replace)) abort(paste0('`replace` must be a color, not ', friendly_typeof(replace), '.'), call = NULL)
  image_color_replace_(image, color, replace)
}

#' Unload image colors
#'
#' Unload color data loaded with LoadImageColors().
#'
#' @param colors A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadImageColors(Color *colors);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
unload_image_colors <- function(colors) {
  if (!is_color(colors)) abort(paste0('`colors` must be a color, not ', friendly_typeof(colors), '.'), call = NULL)
  unload_image_colors_(colors)
}

#' Unload image palette
#'
#' Unload colors palette loaded with LoadImagePalette().
#'
#' @param colors A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadImagePalette(Color *colors);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
unload_image_palette <- function(colors) {
  if (!is_color(colors)) abort(paste0('`colors` must be a color, not ', friendly_typeof(colors), '.'), call = NULL)
  unload_image_palette_(colors)
}

#' Get image alpha border
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
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
get_image_alpha_border <- function(image, threshold) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_float(threshold)) abort(paste0('`threshold` must be a number, not ', friendly_typeof(threshold), '.'), call = NULL)
  get_image_alpha_border_(image, threshold)
}

#' Get image color
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
#' @family image functions
#' @family color functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
get_image_color <- function(image, x, y) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  get_image_color_(image, x, y)
}

#' Image clear background
#'
#' Clear image background with given color.
#'
#' @param dst An image.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageClearBackground(Image *dst, Color color);
#' ```
#'
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_clear_background <- function(dst, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_clear_background_(dst, color)
}

#' Image draw pixel
#'
#' Draw pixel within an image.
#'
#' @param dst An image.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawPixel(Image *dst, int posX, int posY, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_pixel <- function(dst, pos_x, pos_y, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_pixel_(dst, pos_x, pos_y, color)
}

#' Image draw pixel v
#'
#' Draw pixel within an image (Vector version).
#'
#' @param dst An image.
#' @param position A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawPixelV(Image *dst, Vector2 position, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_pixel_v <- function(dst, position, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_pixel_v_(dst, position, color)
}

#' Image draw line
#'
#' Draw line within an image.
#'
#' @param dst An image.
#' @param start_pos_x An integer.
#' @param start_pos_y An integer.
#' @param end_pos_x An integer.
#' @param end_pos_y An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_line <- function(dst, start_pos_x, start_pos_y, end_pos_x, end_pos_y, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_int(start_pos_x)) abort(paste0('`start_pos_x` must be an integer, not ', friendly_typeof(start_pos_x), '.'), call = NULL)
  if (!is_int(start_pos_y)) abort(paste0('`start_pos_y` must be an integer, not ', friendly_typeof(start_pos_y), '.'), call = NULL)
  if (!is_int(end_pos_x)) abort(paste0('`end_pos_x` must be an integer, not ', friendly_typeof(end_pos_x), '.'), call = NULL)
  if (!is_int(end_pos_y)) abort(paste0('`end_pos_y` must be an integer, not ', friendly_typeof(end_pos_y), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_line_(dst, start_pos_x, start_pos_y, end_pos_x, end_pos_y, color)
}

#' Image draw line v
#'
#' Draw line within an image (Vector version).
#'
#' @param dst An image.
#' @param start A numeric vector of length 2.
#' @param end A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_line_v <- function(dst, start, end, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_vector_2(start)) abort(paste0('`start` must be a numeric vector of length 2, not ', friendly_typeof(start), '.'), call = NULL)
  if (!is_vector_2(end)) abort(paste0('`end` must be a numeric vector of length 2, not ', friendly_typeof(end), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_line_v_(dst, start, end, color)
}

#' Image draw circle
#'
#' Draw circle within an image.
#'
#' @param dst An image.
#' @param center_x An integer.
#' @param center_y An integer.
#' @param radius An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_circle <- function(dst, center_x, center_y, radius, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_int(center_x)) abort(paste0('`center_x` must be an integer, not ', friendly_typeof(center_x), '.'), call = NULL)
  if (!is_int(center_y)) abort(paste0('`center_y` must be an integer, not ', friendly_typeof(center_y), '.'), call = NULL)
  if (!is_int(radius)) abort(paste0('`radius` must be an integer, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_circle_(dst, center_x, center_y, radius, color)
}

#' Image draw circle v
#'
#' Draw circle within an image (Vector version).
#'
#' @param dst An image.
#' @param center A numeric vector of length 2.
#' @param radius An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_circle_v <- function(dst, center, radius, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_int(radius)) abort(paste0('`radius` must be an integer, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_circle_v_(dst, center, radius, color)
}

#' Image draw rectangle
#'
#' Draw rectangle within an image.
#'
#' @param dst An image.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param width An integer.
#' @param height An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_rectangle <- function(dst, pos_x, pos_y, width, height, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_rectangle_(dst, pos_x, pos_y, width, height, color)
}

#' Image draw rectangle v
#'
#' Draw rectangle within an image (Vector version).
#'
#' @param dst An image.
#' @param position A numeric vector of length 2.
#' @param size A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_rectangle_v <- function(dst, position, size, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_2(size)) abort(paste0('`size` must be a numeric vector of length 2, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_rectangle_v_(dst, position, size, color)
}

#' Image draw rectangle rec
#'
#' Draw rectangle within an image.
#'
#' @param dst An image.
#' @param rec A rectangle.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_rectangle_rec <- function(dst, rec, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_rectangle_rec_(dst, rec, color)
}

#' Image draw rectangle lines
#'
#' Draw rectangle lines within an image.
#'
#' @param dst An image.
#' @param rec A rectangle.
#' @param thick An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family rectangle functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_rectangle_lines <- function(dst, rec, thick, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_rectangle(rec)) abort(paste0('`rec` must be a rectangle, not ', friendly_typeof(rec), '.'), call = NULL)
  if (!is_int(thick)) abort(paste0('`thick` must be an integer, not ', friendly_typeof(thick), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_rectangle_lines_(dst, rec, thick, color)
}

#' Image draw
#'
#' Draw a source image within a destination image (tint applied to source).
#'
#' @param dst An image.
#' @param src An image.
#' @param src_rec A rectangle.
#' @param dst_rec A rectangle.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);
#' ```
#'
#' @family image functions
#' @family draw functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw <- function(dst, src, src_rec, dst_rec, tint) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_image(src)) abort(paste0('`src` must be an image, not ', friendly_typeof(src), '.'), call = NULL)
  if (!is_rectangle(src_rec)) abort(paste0('`src_rec` must be a rectangle, not ', friendly_typeof(src_rec), '.'), call = NULL)
  if (!is_rectangle(dst_rec)) abort(paste0('`dst_rec` must be a rectangle, not ', friendly_typeof(dst_rec), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  image_draw_(dst, src, src_rec, dst_rec, tint)
}

#' Image draw text
#'
#' Draw text (using default font) within an image (destination).
#'
#' @param dst An image.
#' @param text A string.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param font_size An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family text functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_text <- function(dst, text, pos_x, pos_y, font_size, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_int(font_size)) abort(paste0('`font_size` must be an integer, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  image_draw_text_(dst, text, pos_x, pos_y, font_size, color)
}

#' Image draw text ex
#'
#' Draw text (custom sprite font) within an image (destination).
#'
#' @param dst An image.
#' @param font A font.
#' @param text A string.
#' @param position A numeric vector of length 2.
#' @param font_size A number.
#' @param spacing A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);
#' ```
#'
#' @family image functions
#' @family draw functions
#' @family text functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [font()] for creating font objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
image_draw_text_ex <- function(dst, font, text, position, font_size, spacing, tint) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  image_draw_text_ex_(dst, font, text, position, font_size, spacing, tint)
}

#' Load texture
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
#' Texture2D LoadTexture(const char *fileName);
#' ```
#'
#' @family texture functions
#'
#'
#' @export
load_texture <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_texture_(file_name)
}

#' Load texture from image
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
#' @family texture functions
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#'
#' @export
load_texture_from_image <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  load_texture_from_image_(image)
}

#' Load render texture
#'
#' Load texture for rendering (framebuffer).
#'
#' @param width An integer.
#' @param height An integer.
#'
#' @return A render_texture
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RenderTexture2D LoadRenderTexture(int width, int height);
#' ```
#'
#' @family texture functions
#'
#'
#' @export
load_render_texture <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  load_render_texture_(width, height)
}

#' Unload texture
#'
#' Unload texture from GPU memory (VRAM).
#'
#' @param texture A texture.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadTexture(Texture2D texture);
#' ```
#'
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#'
#' @export
unload_texture <- function(texture) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  unload_texture_(texture)
}

#' Unload render texture
#'
#' Unload render texture from GPU memory (VRAM).
#'
#' @param target A render_texture.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadRenderTexture(RenderTexture2D target);
#' ```
#'
#' @family texture functions
#'
#'
#' @export
unload_render_texture <- function(target) {
  if (!is_render_texture(target)) abort(paste0('`target` must be a render_texture, not ', friendly_typeof(target), '.'), call = NULL)
  unload_render_texture_(target)
}

#' Gen texture mipmaps
#'
#' Generate GPU mipmaps for a texture.
#'
#' @param texture A texture.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void GenTextureMipmaps(Texture2D *texture);
#' ```
#'
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#'
#' @export
gen_texture_mipmaps <- function(texture) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  gen_texture_mipmaps_(texture)
}

#' Set texture filter
#'
#' Set texture scaling filter mode.
#'
#' @param texture A texture.
#' @param filter An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTextureFilter(Texture2D texture, int filter);
#' ```
#'
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#'
#' @export
set_texture_filter <- function(texture, filter) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_int(filter)) abort(paste0('`filter` must be an integer, not ', friendly_typeof(filter), '.'), call = NULL)
  set_texture_filter_(texture, filter)
}

#' Set texture wrap
#'
#' Set texture wrapping mode.
#'
#' @param texture A texture.
#' @param wrap An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetTextureWrap(Texture2D texture, int wrap);
#' ```
#'
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#'
#' @export
set_texture_wrap <- function(texture, wrap) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_int(wrap)) abort(paste0('`wrap` must be an integer, not ', friendly_typeof(wrap), '.'), call = NULL)
  set_texture_wrap_(texture, wrap)
}

#' Draw texture
#'
#' Draw a Texture2D.
#'
#' @param texture A texture.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTexture(Texture2D texture, int posX, int posY, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_texture <- function(texture, pos_x, pos_y, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_(texture, pos_x, pos_y, tint)
}

#' Draw texture v
#'
#' Draw a Texture2D with position defined as Vector2.
#'
#' @param texture A texture.
#' @param position A numeric vector of length 2.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureV(Texture2D texture, Vector2 position, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_texture_v <- function(texture, position, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_v_(texture, position, tint)
}

#' Draw texture ex
#'
#' Draw a Texture2D with extended parameters.
#'
#' @param texture A texture.
#' @param position A numeric vector of length 2.
#' @param rotation A number.
#' @param scale A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [color()] for creating color objects.
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

#' Draw texture rec
#'
#' Draw a part of a texture defined by a rectangle.
#'
#' @param texture A texture.
#' @param source A rectangle.
#' @param position A numeric vector of length 2.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_texture_rec <- function(texture, source, position, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_vector_2(position)) abort(paste0('`position` must be a numeric vector of length 2, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_rec_(texture, source, position, tint)
}

#' Draw texture quad
#'
#' Draw texture quad with tiling and offset parameters.
#'
#' @param texture A texture.
#' @param tiling A numeric vector of length 2.
#' @param offset A numeric vector of length 2.
#' @param quad A rectangle.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureQuad(Texture2D texture, Vector2 tiling, Vector2 offset, Rectangle quad, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_texture_quad <- function(texture, tiling, offset, quad, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_2(tiling)) abort(paste0('`tiling` must be a numeric vector of length 2, not ', friendly_typeof(tiling), '.'), call = NULL)
  if (!is_vector_2(offset)) abort(paste0('`offset` must be a numeric vector of length 2, not ', friendly_typeof(offset), '.'), call = NULL)
  if (!is_rectangle(quad)) abort(paste0('`quad` must be a rectangle, not ', friendly_typeof(quad), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_quad_(texture, tiling, offset, quad, tint)
}

#' Draw texture tiled
#'
#' Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest..
#'
#' @param texture A texture.
#' @param source A rectangle.
#' @param dest A rectangle.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param scale A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureTiled(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_texture_tiled <- function(texture, source, dest, origin, rotation, scale, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_rectangle(dest)) abort(paste0('`dest` must be a rectangle, not ', friendly_typeof(dest), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_tiled_(texture, source, dest, origin, rotation, scale, tint)
}

#' Draw texture pro
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
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

#' Draw texture npatch
#'
#' Draws a texture (or part of it) that stretches or shrinks nicely.
#'
#' @param texture A texture.
#' @param n_patch_info A npatch_info.
#' @param dest A rectangle.
#' @param origin A numeric vector of length 2.
#' @param rotation A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_texture_npatch <- function(texture, n_patch_info, dest, origin, rotation, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_npatch_info(n_patch_info)) abort(paste0('`n_patch_info` must be a npatch_info, not ', friendly_typeof(n_patch_info), '.'), call = NULL)
  if (!is_rectangle(dest)) abort(paste0('`dest` must be a rectangle, not ', friendly_typeof(dest), '.'), call = NULL)
  if (!is_vector_2(origin)) abort(paste0('`origin` must be a numeric vector of length 2, not ', friendly_typeof(origin), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_npatch_(texture, n_patch_info, dest, origin, rotation, tint)
}

#' Draw texture poly
#'
#' Draw a textured polygon.
#'
#' @param texture A texture.
#' @param center A numeric vector of length 2.
#' @param points A numeric vector of length 2.
#' @param texcoords A numeric vector of length 2.
#' @param point_count An integer.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTexturePoly(Texture2D texture, Vector2 center, Vector2 *points, Vector2 *texcoords, int pointCount, Color tint);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_texture_poly <- function(texture, center, points, texcoords, point_count, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_2(center)) abort(paste0('`center` must be a numeric vector of length 2, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_vector_2(points)) abort(paste0('`points` must be a numeric vector of length 2, not ', friendly_typeof(points), '.'), call = NULL)
  if (!is_vector_2(texcoords)) abort(paste0('`texcoords` must be a numeric vector of length 2, not ', friendly_typeof(texcoords), '.'), call = NULL)
  if (!is_int(point_count)) abort(paste0('`point_count` must be an integer, not ', friendly_typeof(point_count), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_poly_(texture, center, points, texcoords, point_count, tint)
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
#' @seealso [color()] for creating color objects.
#'
#' @export
fade <- function(color, alpha) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(alpha)) abort(paste0('`alpha` must be a number, not ', friendly_typeof(alpha), '.'), call = NULL)
  fade_(color, alpha)
}

#' Color to int
#'
#' Get hexadecimal value for a Color.
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
#' @family color functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
color_to_int <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_to_int_(color)
}

#' Color normalize
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
#' @family color functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
color_normalize <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_normalize_(color)
}

#' Color from normalized
#'
#' Get Color from normalized values [0..1].
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
#' @family color functions
#'
#'
#' @export
color_from_normalized <- function(normalized) {
  if (!is_vector_4(normalized)) abort(paste0('`normalized` must be a numeric vector of length 4, not ', friendly_typeof(normalized), '.'), call = NULL)
  color_from_normalized_(normalized)
}

#' Color to hsv
#'
#' Get HSV values for a Color, hue [0..360], saturation/value [0..1].
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
#' @family color functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
color_to_hsv <- function(color) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  color_to_hsv_(color)
}

#' Color from hsv
#'
#' Get a Color from HSV values, hue [0..360], saturation/value [0..1].
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
#' @family color functions
#'
#'
#' @export
color_from_hsv <- function(hue, saturation, value) {
  if (!is_float(hue)) abort(paste0('`hue` must be a number, not ', friendly_typeof(hue), '.'), call = NULL)
  if (!is_float(saturation)) abort(paste0('`saturation` must be a number, not ', friendly_typeof(saturation), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  color_from_hsv_(hue, saturation, value)
}

#' Color alpha
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
#' @family color functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
color_alpha <- function(color, alpha) {
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(alpha)) abort(paste0('`alpha` must be a number, not ', friendly_typeof(alpha), '.'), call = NULL)
  color_alpha_(color, alpha)
}

#' Color alpha blend
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
#' @family color functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
color_alpha_blend <- function(dst, src, tint) {
  if (!is_color(dst)) abort(paste0('`dst` must be a color, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_color(src)) abort(paste0('`src` must be a color, not ', friendly_typeof(src), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  color_alpha_blend_(dst, src, tint)
}

#' Get color
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
#'
#'
#' @export
get_color <- function(hex_value) {
  if (!is_unsigned_int(hex_value)) abort(paste0('`hex_value` must be a non-negative integer, not ', friendly_typeof(hex_value), '.'), call = NULL)
  get_color_(hex_value)
}

#' Get pixel data size
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
#'
#' @export
get_pixel_data_size <- function(width, height, format) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(format)) abort(paste0('`format` must be an integer, not ', friendly_typeof(format), '.'), call = NULL)
  get_pixel_data_size_(width, height, format)
}

#' Get font default
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
#' @family font functions
#'
#'
#' @export
get_font_default <- function() {
  get_font_default_()
}

#' Load font
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
#' Font LoadFont(const char *fileName);
#' ```
#'
#' @family font functions
#'
#'
#' @export
load_font <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_font_(file_name)
}

#' Load font from image
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
#' @family font functions
#' @family image functions
#'
#'
#' @seealso [image()] for creating image objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
load_font_from_image <- function(image, key, first_char) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_color(key)) abort(paste0('`key` must be a color, not ', friendly_typeof(key), '.'), call = NULL)
  if (!is_int(first_char)) abort(paste0('`first_char` must be an integer, not ', friendly_typeof(first_char), '.'), call = NULL)
  load_font_from_image_(image, key, first_char)
}

#' Unload font data
#'
#' Unload font chars info data (RAM).
#'
#' @param chars A glyph_info.
#' @param glyph_count An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadFontData(GlyphInfo *chars, int glyphCount);
#' ```
#'
#' @family font functions
#'
#'
#' @export
unload_font_data <- function(chars, glyph_count) {
  if (!is_glyph_info(chars)) abort(paste0('`chars` must be a glyph_info, not ', friendly_typeof(chars), '.'), call = NULL)
  if (!is_int(glyph_count)) abort(paste0('`glyph_count` must be an integer, not ', friendly_typeof(glyph_count), '.'), call = NULL)
  unload_font_data_(chars, glyph_count)
}

#' Unload font
#'
#' Unload Font from GPU memory (VRAM).
#'
#' @param font A font.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadFont(Font font);
#' ```
#'
#' @family font functions
#'
#'
#' @seealso [font()] for creating font objects.
#'
#' @export
unload_font <- function(font) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  unload_font_(font)
}

#' Draw fps
#'
#' Draw current FPS.
#'
#' @param pos_x An integer.
#' @param pos_y An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawFPS(int posX, int posY);
#' ```
#'
#' @family draw functions
#' @family fps functions
#'
#'
#' @export
draw_fps <- function(pos_x, pos_y) {
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  draw_fps_(pos_x, pos_y)
}

#' Draw text
#'
#' Draw text (using default font).
#'
#' @param text A string.
#' @param pos_x An integer.
#' @param pos_y An integer.
#' @param font_size An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawText(const char *text, int posX, int posY, int fontSize, Color color);
#' ```
#'
#' @family draw functions
#' @family text functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw text ex
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);
#' ```
#'
#' @family draw functions
#' @family text functions
#'
#'
#' @seealso [font()] for creating font objects.
#' @seealso [color()] for creating color objects.
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

#' Draw text pro
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);
#' ```
#'
#' @family draw functions
#' @family text functions
#'
#'
#' @seealso [font()] for creating font objects.
#' @seealso [color()] for creating color objects.
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

#' Draw text codepoint
#'
#' Draw one character (codepoint).
#'
#' @param font A font.
#' @param codepoint An integer.
#' @param position A numeric vector of length 2.
#' @param font_size A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);
#' ```
#'
#' @family draw functions
#' @family text functions
#'
#'
#' @seealso [font()] for creating font objects.
#' @seealso [color()] for creating color objects.
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

#' Measure text
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
#' int MeasureText(const char *text, int fontSize);
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

#' Measure text ex
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
#' Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing);
#' ```
#'
#' @family text functions
#'
#'
#' @seealso [font()] for creating font objects.
#'
#' @export
measure_text_ex <- function(font, text, font_size, spacing) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  measure_text_ex_(font, text, font_size, spacing)
}

#' Get glyph index
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
#'
#' @seealso [font()] for creating font objects.
#'
#' @export
get_glyph_index <- function(font, codepoint) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_int(codepoint)) abort(paste0('`codepoint` must be an integer, not ', friendly_typeof(codepoint), '.'), call = NULL)
  get_glyph_index_(font, codepoint)
}

#' Get glyph info
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
#'
#' @seealso [font()] for creating font objects.
#'
#' @export
get_glyph_info <- function(font, codepoint) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_int(codepoint)) abort(paste0('`codepoint` must be an integer, not ', friendly_typeof(codepoint), '.'), call = NULL)
  get_glyph_info_(font, codepoint)
}

#' Get glyph atlas rec
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
#'
#' @seealso [font()] for creating font objects.
#'
#' @export
get_glyph_atlas_rec <- function(font, codepoint) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_int(codepoint)) abort(paste0('`codepoint` must be an integer, not ', friendly_typeof(codepoint), '.'), call = NULL)
  get_glyph_atlas_rec_(font, codepoint)
}

#' Text replace
#'
#' Replace text string (WARNING: memory must be freed!).
#'
#' @param text A string.
#' @param replace A string.
#' @param by A string.
#'
#' @return A string
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' char *TextReplace(char *text, const char *replace, const char *by);
#' ```
#'
#' @family text functions
#'
#'
#' @export
text_replace <- function(text, replace, by) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(replace)) abort(paste0('`replace` must be a string, not ', friendly_typeof(replace), '.'), call = NULL)
  if (!is_const_char_pointer(by)) abort(paste0('`by` must be a string, not ', friendly_typeof(by), '.'), call = NULL)
  text_replace_(text, replace, by)
}

#' Text insert
#'
#' Insert text in a position (WARNING: memory must be freed!).
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
#' char *TextInsert(const char *text, const char *insert, int position);
#' ```
#'
#' @family text functions
#'
#'
#' @export
text_insert <- function(text, insert, position) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(insert)) abort(paste0('`insert` must be a string, not ', friendly_typeof(insert), '.'), call = NULL)
  if (!is_int(position)) abort(paste0('`position` must be an integer, not ', friendly_typeof(position), '.'), call = NULL)
  text_insert_(text, insert, position)
}

#' Text find index
#'
#' Find first text occurrence within a string.
#'
#' @param text A string.
#' @param find A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int TextFindIndex(const char *text, const char *find);
#' ```
#'
#' @family text functions
#'
#'
#' @export
text_find_index <- function(text, find) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_const_char_pointer(find)) abort(paste0('`find` must be a string, not ', friendly_typeof(find), '.'), call = NULL)
  text_find_index_(text, find)
}

#' Text to upper
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
#' const char *TextToUpper(const char *text);
#' ```
#'
#' @family text functions
#'
#'
#' @export
text_to_upper <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_upper_(text)
}

#' Text to lower
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
#' const char *TextToLower(const char *text);
#' ```
#'
#' @family text functions
#'
#'
#' @export
text_to_lower <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_lower_(text)
}

#' Text to pascal
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
#' const char *TextToPascal(const char *text);
#' ```
#'
#' @family text functions
#'
#'
#' @export
text_to_pascal <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_pascal_(text)
}

#' Text to integer
#'
#' Get integer value from text (negative values not supported).
#'
#' @param text A string.
#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int TextToInteger(const char *text);
#' ```
#'
#' @family text functions
#'
#'
#' @export
text_to_integer <- function(text) {
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  text_to_integer_(text)
}

#' Draw line 3d
#'
#' Draw a line in 3D world space.
#'
#' @param start_pos A numeric vector of length 3.
#' @param end_pos A numeric vector of length 3.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);
#' ```
#'
#' @family draw functions
#' @family line functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_line_3d <- function(start_pos, end_pos, color) {
  if (!is_vector_3(start_pos)) abort(paste0('`start_pos` must be a numeric vector of length 3, not ', friendly_typeof(start_pos), '.'), call = NULL)
  if (!is_vector_3(end_pos)) abort(paste0('`end_pos` must be a numeric vector of length 3, not ', friendly_typeof(end_pos), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_line_3d_(start_pos, end_pos, color)
}

#' Draw point 3d
#'
#' Draw a point in 3D space, actually a small line.
#'
#' @param position A numeric vector of length 3.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPoint3D(Vector3 position, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_point_3d <- function(position, color) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_point_3d_(position, color)
}

#' Draw circle 3d
#'
#' Draw a circle in 3D world space.
#'
#' @param center A numeric vector of length 3.
#' @param radius A number.
#' @param rotation_axis A numeric vector of length 3.
#' @param rotation_angle A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);
#' ```
#'
#' @family draw functions
#' @family circle functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw triangle 3d
#'
#' Draw a color-filled triangle (vertex in counter-clockwise order!).
#'
#' @param v_1 A numeric vector of length 3.
#' @param v_2 A numeric vector of length 3.
#' @param v_3 A numeric vector of length 3.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_triangle_3d <- function(v_1, v_2, v_3, color) {
  if (!is_vector_3(v_1)) abort(paste0('`v_1` must be a numeric vector of length 3, not ', friendly_typeof(v_1), '.'), call = NULL)
  if (!is_vector_3(v_2)) abort(paste0('`v_2` must be a numeric vector of length 3, not ', friendly_typeof(v_2), '.'), call = NULL)
  if (!is_vector_3(v_3)) abort(paste0('`v_3` must be a numeric vector of length 3, not ', friendly_typeof(v_3), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_triangle_3d_(v_1, v_2, v_3, color)
}

#' Draw triangle strip 3d
#'
#' Draw a triangle strip defined by points.
#'
#' @param points A numeric vector of length 3.
#' @param point_count An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawTriangleStrip3D(Vector3 *points, int pointCount, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_triangle_strip_3d <- function(points, point_count, color) {
  if (!is_vector_3(points)) abort(paste0('`points` must be a numeric vector of length 3, not ', friendly_typeof(points), '.'), call = NULL)
  if (!is_int(point_count)) abort(paste0('`point_count` must be an integer, not ', friendly_typeof(point_count), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_triangle_strip_3d_(points, point_count, color)
}

#' Draw cube
#'
#' Draw cube.
#'
#' @param position A numeric vector of length 3.
#' @param width A number.
#' @param height A number.
#' @param length A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCube(Vector3 position, float width, float height, float length, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw cube v
#'
#' Draw cube (Vector version).
#'
#' @param position A numeric vector of length 3.
#' @param size A numeric vector of length 3.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeV(Vector3 position, Vector3 size, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_cube_v <- function(position, size, color) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(size)) abort(paste0('`size` must be a numeric vector of length 3, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_v_(position, size, color)
}

#' Draw cube wires
#'
#' Draw cube wires.
#'
#' @param position A numeric vector of length 3.
#' @param width A number.
#' @param height A number.
#' @param length A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw cube wires v
#'
#' Draw cube wires (Vector version).
#'
#' @param position A numeric vector of length 3.
#' @param size A numeric vector of length 3.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_cube_wires_v <- function(position, size, color) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(size)) abort(paste0('`size` must be a numeric vector of length 3, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_wires_v_(position, size, color)
}

#' Draw cube texture
#'
#' Draw cube textured.
#'
#' @param texture A texture.
#' @param position A numeric vector of length 3.
#' @param width A number.
#' @param height A number.
#' @param length A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeTexture(Texture2D texture, Vector3 position, float width, float height, float length, Color color);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_cube_texture <- function(texture, position, width, height, length, color) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(length)) abort(paste0('`length` must be a number, not ', friendly_typeof(length), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_texture_(texture, position, width, height, length, color)
}

#' Draw cube texture rec
#'
#' Draw cube with a region of a texture.
#'
#' @param texture A texture.
#' @param source A rectangle.
#' @param position A numeric vector of length 3.
#' @param width A number.
#' @param height A number.
#' @param length A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCubeTextureRec(Texture2D texture, Rectangle source, Vector3 position, float width, float height, float length, Color color);
#' ```
#'
#' @family draw functions
#' @family texture functions
#'
#'
#' @seealso [texture()] for creating texture objects.
#' @seealso [rectangle()] for creating rectangle objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_cube_texture_rec <- function(texture, source, position, width, height, length, color) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(length)) abort(paste0('`length` must be a number, not ', friendly_typeof(length), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_texture_rec_(texture, source, position, width, height, length, color)
}

#' Draw sphere
#'
#' Draw sphere.
#'
#' @param center_pos A numeric vector of length 3.
#' @param radius A number.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSphere(Vector3 centerPos, float radius, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_sphere <- function(center_pos, radius, color) {
  if (!is_vector_3(center_pos)) abort(paste0('`center_pos` must be a numeric vector of length 3, not ', friendly_typeof(center_pos), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_sphere_(center_pos, radius, color)
}

#' Draw sphere ex
#'
#' Draw sphere with extended parameters.
#'
#' @param center_pos A numeric vector of length 3.
#' @param radius A number.
#' @param rings An integer.
#' @param slices An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw sphere wires
#'
#' Draw sphere wires.
#'
#' @param center_pos A numeric vector of length 3.
#' @param radius A number.
#' @param rings An integer.
#' @param slices An integer.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw cylinder
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw cylinder ex
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw cylinder wires
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw cylinder wires ex
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
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

#' Draw plane
#'
#' Draw a plane XZ.
#'
#' @param center_pos A numeric vector of length 3.
#' @param size A numeric vector of length 2.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawPlane(Vector3 centerPos, Vector2 size, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_plane <- function(center_pos, size, color) {
  if (!is_vector_3(center_pos)) abort(paste0('`center_pos` must be a numeric vector of length 3, not ', friendly_typeof(center_pos), '.'), call = NULL)
  if (!is_vector_2(size)) abort(paste0('`size` must be a numeric vector of length 2, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_plane_(center_pos, size, color)
}

#' Draw ray
#'
#' Draw a ray line.
#'
#' @param ray A ray.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawRay(Ray ray, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_ray <- function(ray, color) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_ray_(ray, color)
}

#' Draw grid
#'
#' Draw a grid (centered at (0, 0, 0)).
#'
#' @param slices An integer.
#' @param spacing A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawGrid(int slices, float spacing);
#' ```
#'
#' @family draw functions
#'
#'
#' @export
draw_grid <- function(slices, spacing) {
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  draw_grid_(slices, spacing)
}

#' Load model
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
#' Model LoadModel(const char *fileName);
#' ```
#'
#' @family model functions
#'
#'
#' @export
load_model <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_model_(file_name)
}

#' Unload model
#'
#' Unload model (including meshes) from memory (RAM and/or VRAM).
#'
#' @param model A model.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadModel(Model model);
#' ```
#'
#' @family model functions
#'
#'
#' @seealso [model()] for creating model objects.
#'
#' @export
unload_model <- function(model) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  unload_model_(model)
}

#' Get model bounding box
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
#' @family model functions
#'
#'
#' @seealso [model()] for creating model objects.
#'
#' @export
get_model_bounding_box <- function(model) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  get_model_bounding_box_(model)
}

#' Draw model
#'
#' Draw a model (with texture if set).
#'
#' @param model A model.
#' @param position A numeric vector of length 3.
#' @param scale A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawModel(Model model, Vector3 position, float scale, Color tint);
#' ```
#'
#' @family draw functions
#' @family model functions
#'
#'
#' @seealso [model()] for creating model objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_model <- function(model, position, scale, tint) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_model_(model, position, scale, tint)
}

#' Draw model ex
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
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
#' ```
#'
#' @family draw functions
#' @family model functions
#'
#'
#' @seealso [model()] for creating model objects.
#' @seealso [color()] for creating color objects.
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

#' Draw model wires
#'
#' Draw a model wires (with texture if set).
#'
#' @param model A model.
#' @param position A numeric vector of length 3.
#' @param scale A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawModelWires(Model model, Vector3 position, float scale, Color tint);
#' ```
#'
#' @family draw functions
#' @family model functions
#'
#'
#' @seealso [model()] for creating model objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_model_wires <- function(model, position, scale, tint) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_model_wires_(model, position, scale, tint)
}

#' Draw bounding box
#'
#' Draw bounding box (wires).
#'
#' @param box A bounding_box.
#' @param color A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawBoundingBox(BoundingBox box, Color color);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_bounding_box <- function(box, color) {
  if (!is_bounding_box(box)) abort(paste0('`box` must be a bounding_box, not ', friendly_typeof(box), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_bounding_box_(box, color)
}

#' Draw billboard
#'
#' Draw a billboard texture.
#'
#' @param camera A camera_3d.
#' @param texture A texture.
#' @param position A numeric vector of length 3.
#' @param size A number.
#' @param tint A color.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);
#' ```
#'
#' @family draw functions
#'
#'
#' @seealso [camera_3d()] for creating camera_3d objects.
#' @seealso [texture()] for creating texture objects.
#' @seealso [color()] for creating color objects.
#'
#' @export
draw_billboard <- function(camera, texture, position, size, tint) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(size)) abort(paste0('`size` must be a number, not ', friendly_typeof(size), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_billboard_(camera, texture, position, size, tint)
}

#' Check collision spheres
#'
#' Check collision between two spheres.
#'
#' @param center_1 A numeric vector of length 3.
#' @param radius_1 A number.
#' @param center_2 A numeric vector of length 3.
#' @param radius_2 A number.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);
#' ```
#'
#' @family collision functions
#'
#'
#' @export
check_collision_spheres <- function(center_1, radius_1, center_2, radius_2) {
  if (!is_vector_3(center_1)) abort(paste0('`center_1` must be a numeric vector of length 3, not ', friendly_typeof(center_1), '.'), call = NULL)
  if (!is_float(radius_1)) abort(paste0('`radius_1` must be a number, not ', friendly_typeof(radius_1), '.'), call = NULL)
  if (!is_vector_3(center_2)) abort(paste0('`center_2` must be a numeric vector of length 3, not ', friendly_typeof(center_2), '.'), call = NULL)
  if (!is_float(radius_2)) abort(paste0('`radius_2` must be a number, not ', friendly_typeof(radius_2), '.'), call = NULL)
  check_collision_spheres_(center_1, radius_1, center_2, radius_2)
}

#' Check collision boxes
#'
#' Check collision between two bounding boxes.
#'
#' @param box_1 A bounding_box.
#' @param box_2 A bounding_box.
#'
#' @return A logical
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);
#' ```
#'
#' @family collision functions
#'
#'
#' @export
check_collision_boxes <- function(box_1, box_2) {
  if (!is_bounding_box(box_1)) abort(paste0('`box_1` must be a bounding_box, not ', friendly_typeof(box_1), '.'), call = NULL)
  if (!is_bounding_box(box_2)) abort(paste0('`box_2` must be a bounding_box, not ', friendly_typeof(box_2), '.'), call = NULL)
  check_collision_boxes_(box_1, box_2)
}

#' Check collision box sphere
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
#' @family collision functions
#'
#'
#' @export
check_collision_box_sphere <- function(box, center, radius) {
  if (!is_bounding_box(box)) abort(paste0('`box` must be a bounding_box, not ', friendly_typeof(box), '.'), call = NULL)
  if (!is_vector_3(center)) abort(paste0('`center` must be a numeric vector of length 3, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  check_collision_box_sphere_(box, center, radius)
}

#' Get ray collision sphere
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
#' @family collision functions
#'
#'
#' @export
get_ray_collision_sphere <- function(ray, center, radius) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_vector_3(center)) abort(paste0('`center` must be a numeric vector of length 3, not ', friendly_typeof(center), '.'), call = NULL)
  if (!is_float(radius)) abort(paste0('`radius` must be a number, not ', friendly_typeof(radius), '.'), call = NULL)
  get_ray_collision_sphere_(ray, center, radius)
}

#' Get ray collision box
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
#' @family collision functions
#'
#'
#' @export
get_ray_collision_box <- function(ray, box) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_bounding_box(box)) abort(paste0('`box` must be a bounding_box, not ', friendly_typeof(box), '.'), call = NULL)
  get_ray_collision_box_(ray, box)
}

#' Get ray collision model
#'
#' Get collision info between ray and model.
#'
#' @param ray A ray.
#' @param model A model.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionModel(Ray ray, Model model);
#' ```
#'
#' @family collision functions
#' @family model functions
#'
#'
#' @seealso [model()] for creating model objects.
#'
#' @export
get_ray_collision_model <- function(ray, model) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  get_ray_collision_model_(ray, model)
}

#' Get ray collision mesh
#'
#' Get collision info between ray and mesh.
#'
#' @param ray A ray.
#' @param mesh A mesh.
#' @param transform A numeric matrix of 4 by 4.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);
#' ```
#'
#' @family collision functions
#' @family mesh functions
#'
#'
#' @seealso [mesh()] for creating mesh objects.
#'
#' @export
get_ray_collision_mesh <- function(ray, mesh, transform) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_raylib_matrix(transform)) abort(paste0('`transform` must be a numeric matrix of 4 by 4, not ', friendly_typeof(transform), '.'), call = NULL)
  get_ray_collision_mesh_(ray, mesh, transform)
}

#' Get ray collision triangle
#'
#' Get collision info between ray and triangle.
#'
#' @param ray A ray.
#' @param p_1 A numeric vector of length 3.
#' @param p_2 A numeric vector of length 3.
#' @param p_3 A numeric vector of length 3.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);
#' ```
#'
#' @family collision functions
#'
#'
#' @export
get_ray_collision_triangle <- function(ray, p_1, p_2, p_3) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_vector_3(p_1)) abort(paste0('`p_1` must be a numeric vector of length 3, not ', friendly_typeof(p_1), '.'), call = NULL)
  if (!is_vector_3(p_2)) abort(paste0('`p_2` must be a numeric vector of length 3, not ', friendly_typeof(p_2), '.'), call = NULL)
  if (!is_vector_3(p_3)) abort(paste0('`p_3` must be a numeric vector of length 3, not ', friendly_typeof(p_3), '.'), call = NULL)
  get_ray_collision_triangle_(ray, p_1, p_2, p_3)
}

#' Get ray collision quad
#'
#' Get collision info between ray and quad.
#'
#' @param ray A ray.
#' @param p_1 A numeric vector of length 3.
#' @param p_2 A numeric vector of length 3.
#' @param p_3 A numeric vector of length 3.
#' @param p_4 A numeric vector of length 3.
#'
#' @return A ray_collision
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);
#' ```
#'
#' @family collision functions
#'
#'
#' @export
get_ray_collision_quad <- function(ray, p_1, p_2, p_3, p_4) {
  if (!is_ray(ray)) abort(paste0('`ray` must be a ray, not ', friendly_typeof(ray), '.'), call = NULL)
  if (!is_vector_3(p_1)) abort(paste0('`p_1` must be a numeric vector of length 3, not ', friendly_typeof(p_1), '.'), call = NULL)
  if (!is_vector_3(p_2)) abort(paste0('`p_2` must be a numeric vector of length 3, not ', friendly_typeof(p_2), '.'), call = NULL)
  if (!is_vector_3(p_3)) abort(paste0('`p_3` must be a numeric vector of length 3, not ', friendly_typeof(p_3), '.'), call = NULL)
  if (!is_vector_3(p_4)) abort(paste0('`p_4` must be a numeric vector of length 3, not ', friendly_typeof(p_4), '.'), call = NULL)
  get_ray_collision_quad_(ray, p_1, p_2, p_3, p_4)
}

#' Init audio device
#'
#' Initialize audio device and context.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void InitAudioDevice(void);
#' ```
#'
#' @family init functions
#' @family audio functions
#'
#'
#' @export
init_audio_device <- function() {
  init_audio_device_()
}

#' Close audio device
#'
#' Close the audio device and context.
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void CloseAudioDevice(void);
#' ```
#'
#' @family audio functions
#'
#'
#' @export
close_audio_device <- function() {
  close_audio_device_()
}

#' Is audio device ready
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
#' @family audio functions
#'
#'
#' @export
is_audio_device_ready <- function() {
  is_audio_device_ready_()
}

#' Set master volume
#'
#' Set master volume (listener).
#'
#' @param volume A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMasterVolume(float volume);
#' ```
#'
#' @family volume functions
#'
#'
#' @export
set_master_volume <- function(volume) {
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_master_volume_(volume)
}

#' Load wave
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
#' Wave LoadWave(const char *fileName);
#' ```
#'
#' @family wave functions
#'
#'
#' @export
load_wave <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_wave_(file_name)
}

#' Load sound
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
#' Sound LoadSound(const char *fileName);
#' ```
#'
#' @family sound functions
#'
#'
#' @export
load_sound <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_sound_(file_name)
}

#' Load sound from wave
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
#' @family sound functions
#' @family wave functions
#'
#'
#' @seealso [wave()] for creating wave objects.
#'
#' @export
load_sound_from_wave <- function(wave) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  load_sound_from_wave_(wave)
}

#' Unload wave
#'
#' Unload wave data.
#'
#' @param wave A wave.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadWave(Wave wave);
#' ```
#'
#' @family wave functions
#'
#'
#' @seealso [wave()] for creating wave objects.
#'
#' @export
unload_wave <- function(wave) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  unload_wave_(wave)
}

#' Unload sound
#'
#' Unload sound.
#'
#' @param sound A sound.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadSound(Sound sound);
#' ```
#'
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
unload_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  unload_sound_(sound)
}

#' Export wave
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
#' bool ExportWave(Wave wave, const char *fileName);
#' ```
#'
#' @family wave functions
#'
#'
#' @seealso [wave()] for creating wave objects.
#'
#' @export
export_wave <- function(wave, file_name) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_wave_(wave, file_name)
}

#' Export wave as code
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
#' bool ExportWaveAsCode(Wave wave, const char *fileName);
#' ```
#'
#' @family wave functions
#'
#'
#' @seealso [wave()] for creating wave objects.
#'
#' @export
export_wave_as_code <- function(wave, file_name) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  export_wave_as_code_(wave, file_name)
}

#' Play sound
#'
#' Play a sound.
#'
#' @param sound A sound.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PlaySound(Sound sound);
#' ```
#'
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
play_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  play_sound_(sound)
}

#' Stop sound
#'
#' Stop playing a sound.
#'
#' @param sound A sound.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopSound(Sound sound);
#' ```
#'
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
stop_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  stop_sound_(sound)
}

#' Pause sound
#'
#' Pause a sound.
#'
#' @param sound A sound.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PauseSound(Sound sound);
#' ```
#'
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
pause_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  pause_sound_(sound)
}

#' Resume sound
#'
#' Resume a paused sound.
#'
#' @param sound A sound.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ResumeSound(Sound sound);
#' ```
#'
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
resume_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  resume_sound_(sound)
}

#' Play sound multi
#'
#' Play a sound (using multichannel buffer pool).
#'
#' @param sound A sound.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PlaySoundMulti(Sound sound);
#' ```
#'
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
play_sound_multi <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  play_sound_multi_(sound)
}

#' Stop sound multi
#'
#' Stop any sound playing (using multichannel buffer pool).
#'

#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopSoundMulti(void);
#' ```
#'
#' @family sound functions
#'
#'
#' @export
stop_sound_multi <- function() {
  stop_sound_multi_()
}

#' Get sounds playing
#'
#' Get number of sounds playing in the multichannel.
#'

#'
#' @return An integer
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' int GetSoundsPlaying(void);
#' ```
#'
#'
#' @export
get_sounds_playing <- function() {
  get_sounds_playing_()
}

#' Is sound playing
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
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
is_sound_playing <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  is_sound_playing_(sound)
}

#' Set sound volume
#'
#' Set volume for a sound (1.0 is max level).
#'
#' @param sound A sound.
#' @param volume A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetSoundVolume(Sound sound, float volume);
#' ```
#'
#' @family sound functions
#' @family volume functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
set_sound_volume <- function(sound, volume) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_sound_volume_(sound, volume)
}

#' Set sound pitch
#'
#' Set pitch for a sound (1.0 is base level).
#'
#' @param sound A sound.
#' @param pitch A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetSoundPitch(Sound sound, float pitch);
#' ```
#'
#' @family sound functions
#'
#'
#' @seealso [sound()] for creating sound objects.
#'
#' @export
set_sound_pitch <- function(sound, pitch) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_sound_pitch_(sound, pitch)
}

#' Load music stream
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
#' Music LoadMusicStream(const char *fileName);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @export
load_music_stream <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_music_stream_(file_name)
}

#' Unload music stream
#'
#' Unload music stream.
#'
#' @param music A music.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadMusicStream(Music music);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
unload_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  unload_music_stream_(music)
}

#' Play music stream
#'
#' Start music playing.
#'
#' @param music A music.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PlayMusicStream(Music music);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
play_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  play_music_stream_(music)
}

#' Is music stream playing
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
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
is_music_stream_playing <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  is_music_stream_playing_(music)
}

#' Update music stream
#'
#' Updates buffers for music streaming.
#'
#' @param music A music.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UpdateMusicStream(Music music);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
update_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  update_music_stream_(music)
}

#' Stop music stream
#'
#' Stop music playing.
#'
#' @param music A music.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopMusicStream(Music music);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
stop_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  stop_music_stream_(music)
}

#' Pause music stream
#'
#' Pause music playing.
#'
#' @param music A music.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PauseMusicStream(Music music);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
pause_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  pause_music_stream_(music)
}

#' Resume music stream
#'
#' Resume playing paused music.
#'
#' @param music A music.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ResumeMusicStream(Music music);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
resume_music_stream <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  resume_music_stream_(music)
}

#' Seek music stream
#'
#' Seek music to a position (in seconds).
#'
#' @param music A music.
#' @param position A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SeekMusicStream(Music music, float position);
#' ```
#'
#' @family music functions
#' @family stream functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
seek_music_stream <- function(music, position) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(position)) abort(paste0('`position` must be a number, not ', friendly_typeof(position), '.'), call = NULL)
  seek_music_stream_(music, position)
}

#' Set music volume
#'
#' Set volume for music (1.0 is max level).
#'
#' @param music A music.
#' @param volume A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMusicVolume(Music music, float volume);
#' ```
#'
#' @family music functions
#' @family volume functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
set_music_volume <- function(music, volume) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_music_volume_(music, volume)
}

#' Set music pitch
#'
#' Set pitch for a music (1.0 is base level).
#'
#' @param music A music.
#' @param pitch A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetMusicPitch(Music music, float pitch);
#' ```
#'
#' @family music functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
set_music_pitch <- function(music, pitch) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_music_pitch_(music, pitch)
}

#' Get music time length
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
#' @family music functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
get_music_time_length <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  get_music_time_length_(music)
}

#' Get music time played
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
#' @family music functions
#'
#'
#' @seealso [music()] for creating music objects.
#'
#' @export
get_music_time_played <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  get_music_time_played_(music)
}

#' Load audio stream
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
#' @family audio functions
#' @family stream functions
#'
#'
#' @export
load_audio_stream <- function(sample_rate, sample_size, channels) {
  if (!is_unsigned_int(sample_rate)) abort(paste0('`sample_rate` must be a non-negative integer, not ', friendly_typeof(sample_rate), '.'), call = NULL)
  if (!is_unsigned_int(sample_size)) abort(paste0('`sample_size` must be a non-negative integer, not ', friendly_typeof(sample_size), '.'), call = NULL)
  if (!is_unsigned_int(channels)) abort(paste0('`channels` must be a non-negative integer, not ', friendly_typeof(channels), '.'), call = NULL)
  load_audio_stream_(sample_rate, sample_size, channels)
}

#' Unload audio stream
#'
#' Unload audio stream and free memory.
#'
#' @param stream An audio_stream.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadAudioStream(AudioStream stream);
#' ```
#'
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
unload_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  unload_audio_stream_(stream)
}

#' Is audio stream processed
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
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
is_audio_stream_processed <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  is_audio_stream_processed_(stream)
}

#' Play audio stream
#'
#' Play audio stream.
#'
#' @param stream An audio_stream.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PlayAudioStream(AudioStream stream);
#' ```
#'
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
play_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  play_audio_stream_(stream)
}

#' Pause audio stream
#'
#' Pause audio stream.
#'
#' @param stream An audio_stream.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void PauseAudioStream(AudioStream stream);
#' ```
#'
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
pause_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  pause_audio_stream_(stream)
}

#' Resume audio stream
#'
#' Resume audio stream.
#'
#' @param stream An audio_stream.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void ResumeAudioStream(AudioStream stream);
#' ```
#'
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
resume_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  resume_audio_stream_(stream)
}

#' Is audio stream playing
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
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
is_audio_stream_playing <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  is_audio_stream_playing_(stream)
}

#' Stop audio stream
#'
#' Stop audio stream.
#'
#' @param stream An audio_stream.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void StopAudioStream(AudioStream stream);
#' ```
#'
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
stop_audio_stream <- function(stream) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  stop_audio_stream_(stream)
}

#' Set audio stream volume
#'
#' Set volume for audio stream (1.0 is max level).
#'
#' @param stream An audio_stream.
#' @param volume A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAudioStreamVolume(AudioStream stream, float volume);
#' ```
#'
#' @family audio functions
#' @family stream functions
#' @family volume functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
set_audio_stream_volume <- function(stream, volume) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  if (!is_float(volume)) abort(paste0('`volume` must be a number, not ', friendly_typeof(volume), '.'), call = NULL)
  set_audio_stream_volume_(stream, volume)
}

#' Set audio stream pitch
#'
#' Set pitch for audio stream (1.0 is base level).
#'
#' @param stream An audio_stream.
#' @param pitch A number.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAudioStreamPitch(AudioStream stream, float pitch);
#' ```
#'
#' @family audio functions
#' @family stream functions
#'
#'
#' @seealso [audio_stream()] for creating audio_stream objects.
#'
#' @export
set_audio_stream_pitch <- function(stream, pitch) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  set_audio_stream_pitch_(stream, pitch)
}

#' Set audio stream buffer size default
#'
#' Default size for new audio streams.
#'
#' @param size An integer.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetAudioStreamBufferSizeDefault(int size);
#' ```
#'
#' @family audio functions
#' @family stream functions
#'
#'
#' @export
set_audio_stream_buffer_size_default <- function(size) {
  if (!is_int(size)) abort(paste0('`size` must be an integer, not ', friendly_typeof(size), '.'), call = NULL)
  set_audio_stream_buffer_size_default_(size)
}

#' Vector 2 angle
#'
#' .
#'
#' @param v_1 A numeric vector of length 2.
#' @param v_2 A numeric vector of length 2.
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float Vector2Angle(Vector2 v1, Vector2 v2);
#' ```
#'
#'
#' @export
vector_2_angle <- function(v_1, v_2) {
  if (!is_vector_2(v_1)) abort(paste0('`v_1` must be a numeric vector of length 2, not ', friendly_typeof(v_1), '.'), call = NULL)
  if (!is_vector_2(v_2)) abort(paste0('`v_2` must be a numeric vector of length 2, not ', friendly_typeof(v_2), '.'), call = NULL)
  vector_2_angle_(v_1, v_2)
}

#' Vector 2 move towards
#'
#' .
#'
#' @param v A numeric vector of length 2.
#' @param target A numeric vector of length 2.
#' @param max_distance A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 Vector2MoveTowards(Vector2 v, Vector2 target, float maxDistance);
#' ```
#'
#'
#' @export
vector_2_move_towards <- function(v, target, max_distance) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_2(target)) abort(paste0('`target` must be a numeric vector of length 2, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_float(max_distance)) abort(paste0('`max_distance` must be a number, not ', friendly_typeof(max_distance), '.'), call = NULL)
  vector_2_move_towards_(v, target, max_distance)
}

#' Vector 2 distance
#'
#' .
#'
#' @param v_1 A numeric vector of length 2.
#' @param v_2 A numeric vector of length 2.
#'
#' @return A number
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' float Vector2Distance(Vector2 v1, Vector2 v2);
#' ```
#'
#'
#' @export
vector_2_distance <- function(v_1, v_2) {
  if (!is_vector_2(v_1)) abort(paste0('`v_1` must be a numeric vector of length 2, not ', friendly_typeof(v_1), '.'), call = NULL)
  if (!is_vector_2(v_2)) abort(paste0('`v_2` must be a numeric vector of length 2, not ', friendly_typeof(v_2), '.'), call = NULL)
  vector_2_distance_(v_1, v_2)
}

#' Vector 2 rotate
#'
#' .
#'
#' @param v A numeric vector of length 2.
#' @param angle A number.
#'
#' @return A numeric vector of length 2
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Vector2 Vector2Rotate(Vector2 v, float angle);
#' ```
#'
#'
#' @export
vector_2_rotate <- function(v, angle) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  vector_2_rotate_(v, angle)
}

