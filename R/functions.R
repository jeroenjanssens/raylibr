# Do not edit by hand

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
#' @export
restore_window <- function() {
  restore_window_()
}

#' Set window icon
#'
#' Set icon for window (only PLATFORM_DESKTOP).
#'
#' @param image an image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void SetWindowIcon(Image image);
#' ```
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
#' @export
end_mode_3d <- function() {
  end_mode_3d_()
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
#' @export
take_screenshot <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  take_screenshot_(file_name)
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
#' @export
get_char_pressed <- function() {
  get_char_pressed_()
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
#' @export
set_mouse_cursor <- function(cursor) {
  if (!is_int(cursor)) abort(paste0('`cursor` must be an integer, not ', friendly_typeof(cursor), '.'), call = NULL)
  set_mouse_cursor_(cursor)
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
#' @export
check_collision_point_triangle <- function(point, p_1, p_2, p_3) {
  if (!is_vector_2(point)) abort(paste0('`point` must be a numeric vector of length 2, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_2(p_1)) abort(paste0('`p_1` must be a numeric vector of length 2, not ', friendly_typeof(p_1), '.'), call = NULL)
  if (!is_vector_2(p_2)) abort(paste0('`p_2` must be a numeric vector of length 2, not ', friendly_typeof(p_2), '.'), call = NULL)
  if (!is_vector_2(p_3)) abort(paste0('`p_3` must be a numeric vector of length 2, not ', friendly_typeof(p_3), '.'), call = NULL)
  check_collision_point_triangle_(point, p_1, p_2, p_3)
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImage(const char *fileName);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImageFromTexture(Texture2D texture);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image LoadImageFromScreen(void);
#' ```
#'
#' @export
load_image_from_screen <- function() {
  load_image_from_screen_()
}

#' Unload image
#'
#' Unload image from CPU memory (RAM).
#'
#' @param image an image.
#'
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' void UnloadImage(Image image);
#' ```
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
#' @param image an image.
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
#' @param image an image.
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageColor(int width, int height, Color color);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientV(int width, int height, Color top, Color bottom);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientH(int width, int height, Color left, Color right);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageWhiteNoise(int width, int height, float factor);
#' ```
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
#' @return an image
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Image GenImageCellular(int width, int height, int tileSize);
#' ```
#'
#' @export
gen_image_cellular <- function(width, height, tile_size) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(tile_size)) abort(paste0('`tile_size` must be an integer, not ', friendly_typeof(tile_size), '.'), call = NULL)
  gen_image_cellular_(width, height, tile_size)
}

#' Get image alpha border
#'
#' Get image alpha border rectangle.
#'
#' @param image an image.
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
#' @export
get_image_alpha_border <- function(image, threshold) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  if (!is_float(threshold)) abort(paste0('`threshold` must be a number, not ', friendly_typeof(threshold), '.'), call = NULL)
  get_image_alpha_border_(image, threshold)
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
#' @export
load_texture <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_texture_(file_name)
}

#' Load texture from image
#'
#' Load texture from image data.
#'
#' @param image an image.
#'
#' @return A texture
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Texture2D LoadTextureFromImage(Image image);
#' ```
#'
#' @export
load_texture_from_image <- function(image) {
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  load_texture_from_image_(image)
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
#' @export
draw_texture <- function(texture, pos_x, pos_y, tint) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_int(pos_x)) abort(paste0('`pos_x` must be an integer, not ', friendly_typeof(pos_x), '.'), call = NULL)
  if (!is_int(pos_y)) abort(paste0('`pos_y` must be an integer, not ', friendly_typeof(pos_y), '.'), call = NULL)
  if (!is_color(tint)) abort(paste0('`tint` must be a color, not ', friendly_typeof(tint), '.'), call = NULL)
  draw_texture_(texture, pos_x, pos_y, tint)
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
#' @export
get_color <- function(hex_value) {
  if (!is_unsigned_int(hex_value)) abort(paste0('`hex_value` must be a non-negative integer, not ', friendly_typeof(hex_value), '.'), call = NULL)
  get_color_(hex_value)
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
#' @export
load_font <- function(file_name) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  load_font_(file_name)
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
#' @export
measure_text_ex <- function(font, text, font_size, spacing) {
  if (!is_font(font)) abort(paste0('`font` must be a font, not ', friendly_typeof(font), '.'), call = NULL)
  if (!is_const_char_pointer(text)) abort(paste0('`text` must be a string, not ', friendly_typeof(text), '.'), call = NULL)
  if (!is_float(font_size)) abort(paste0('`font_size` must be a number, not ', friendly_typeof(font_size), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  measure_text_ex_(font, text, font_size, spacing)
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
#' @export
draw_cube <- function(position, width, height, length, color) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_float(length)) abort(paste0('`length` must be a number, not ', friendly_typeof(length), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  draw_cube_(position, width, height, length, color)
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
#' @export
draw_grid <- function(slices, spacing) {
  if (!is_int(slices)) abort(paste0('`slices` must be an integer, not ', friendly_typeof(slices), '.'), call = NULL)
  if (!is_float(spacing)) abort(paste0('`spacing` must be a number, not ', friendly_typeof(spacing), '.'), call = NULL)
  draw_grid_(slices, spacing)
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
#' @export
unload_sound <- function(sound) {
  if (!is_sound(sound)) abort(paste0('`sound` must be a sound, not ', friendly_typeof(sound), '.'), call = NULL)
  unload_sound_(sound)
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
#' @export
get_music_time_played <- function(music) {
  if (!is_music(music)) abort(paste0('`music` must be a music, not ', friendly_typeof(music), '.'), call = NULL)
  get_music_time_played_(music)
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
#' @export
vector_2_rotate <- function(v, angle) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  vector_2_rotate_(v, angle)
}

