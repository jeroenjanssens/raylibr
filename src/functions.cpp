// Do not edit by hand

#include "raylibr.h"

// [[Rcpp::export]]
void init_window_(int width, int height, const char * title) {
  return InitWindow(width, height, title);
}

// [[Rcpp::export]]
bool window_should_close_() {
  return WindowShouldClose();
}

// [[Rcpp::export]]
void close_window_() {
  return CloseWindow();
}

// [[Rcpp::export]]
bool is_window_ready_() {
  return IsWindowReady();
}

// [[Rcpp::export]]
bool is_window_fullscreen_() {
  return IsWindowFullscreen();
}

// [[Rcpp::export]]
bool is_window_hidden_() {
  return IsWindowHidden();
}

// [[Rcpp::export]]
bool is_window_minimized_() {
  return IsWindowMinimized();
}

// [[Rcpp::export]]
bool is_window_maximized_() {
  return IsWindowMaximized();
}

// [[Rcpp::export]]
bool is_window_focused_() {
  return IsWindowFocused();
}

// [[Rcpp::export]]
bool is_window_resized_() {
  return IsWindowResized();
}

// [[Rcpp::export]]
bool is_window_state_(unsigned int flag) {
  return IsWindowState(flag);
}

// [[Rcpp::export]]
void set_window_state_(unsigned int flags) {
  return SetWindowState(flags);
}

// [[Rcpp::export]]
void clear_window_state_(unsigned int flags) {
  return ClearWindowState(flags);
}

// [[Rcpp::export]]
void toggle_fullscreen_() {
  return ToggleFullscreen();
}

// [[Rcpp::export]]
void maximize_window_() {
  return MaximizeWindow();
}

// [[Rcpp::export]]
void minimize_window_() {
  return MinimizeWindow();
}

// [[Rcpp::export]]
void restore_window_() {
  return RestoreWindow();
}

// [[Rcpp::export]]
void set_window_icon_(Image image) {
  return SetWindowIcon(image);
}

// [[Rcpp::export]]
void set_window_title_(const char * title) {
  return SetWindowTitle(title);
}

// [[Rcpp::export]]
void set_window_position_(int x, int y) {
  return SetWindowPosition(x, y);
}

// [[Rcpp::export]]
void set_window_monitor_(int monitor) {
  return SetWindowMonitor(monitor);
}

// [[Rcpp::export]]
void set_window_min_size_(int width, int height) {
  return SetWindowMinSize(width, height);
}

// [[Rcpp::export]]
void set_window_size_(int width, int height) {
  return SetWindowSize(width, height);
}

// [[Rcpp::export]]
int get_screen_width_() {
  return GetScreenWidth();
}

// [[Rcpp::export]]
int get_screen_height_() {
  return GetScreenHeight();
}

// [[Rcpp::export]]
int get_monitor_count_() {
  return GetMonitorCount();
}

// [[Rcpp::export]]
int get_current_monitor_() {
  return GetCurrentMonitor();
}

// [[Rcpp::export]]
Vector2 get_monitor_position_(int monitor) {
  return GetMonitorPosition(monitor);
}

// [[Rcpp::export]]
int get_monitor_width_(int monitor) {
  return GetMonitorWidth(monitor);
}

// [[Rcpp::export]]
int get_monitor_height_(int monitor) {
  return GetMonitorHeight(monitor);
}

// [[Rcpp::export]]
int get_monitor_physical_width_(int monitor) {
  return GetMonitorPhysicalWidth(monitor);
}

// [[Rcpp::export]]
int get_monitor_physical_height_(int monitor) {
  return GetMonitorPhysicalHeight(monitor);
}

// [[Rcpp::export]]
int get_monitor_refresh_rate_(int monitor) {
  return GetMonitorRefreshRate(monitor);
}

// [[Rcpp::export]]
Vector2 get_window_position_() {
  return GetWindowPosition();
}

// [[Rcpp::export]]
Vector2 get_window_scale_dpi_() {
  return GetWindowScaleDPI();
}

// [[Rcpp::export]]
const char * get_monitor_name_(int monitor) {
  return GetMonitorName(monitor);
}

// [[Rcpp::export]]
void show_cursor_() {
  return ShowCursor();
}

// [[Rcpp::export]]
void hide_cursor_() {
  return HideCursor();
}

// [[Rcpp::export]]
bool is_cursor_hidden_() {
  return IsCursorHidden();
}

// [[Rcpp::export]]
void enable_cursor_() {
  return EnableCursor();
}

// [[Rcpp::export]]
void disable_cursor_() {
  return DisableCursor();
}

// [[Rcpp::export]]
bool is_cursor_on_screen_() {
  return IsCursorOnScreen();
}

// [[Rcpp::export]]
void clear_background_(Color color) {
  return ClearBackground(color);
}

// [[Rcpp::export]]
void begin_drawing_() {
  return BeginDrawing();
}

// [[Rcpp::export]]
void end_drawing_() {
  return EndDrawing();
}

// [[Rcpp::export]]
void begin_mode_2d_(Camera2D camera) {
  return BeginMode2D(camera);
}

// [[Rcpp::export]]
void end_mode_2d_() {
  return EndMode2D();
}

// [[Rcpp::export]]
void begin_mode_3d_(Camera3D camera) {
  return BeginMode3D(camera);
}

// [[Rcpp::export]]
void end_mode_3d_() {
  return EndMode3D();
}

// [[Rcpp::export]]
void begin_texture_mode_(RenderTexture target) {
  return BeginTextureMode(target);
}

// [[Rcpp::export]]
void end_texture_mode_() {
  return EndTextureMode();
}

// [[Rcpp::export]]
void begin_shader_mode_(Shader shader) {
  return BeginShaderMode(shader);
}

// [[Rcpp::export]]
void end_shader_mode_() {
  return EndShaderMode();
}

// [[Rcpp::export]]
void begin_blend_mode_(int mode) {
  return BeginBlendMode(mode);
}

// [[Rcpp::export]]
void end_blend_mode_() {
  return EndBlendMode();
}

// [[Rcpp::export]]
void begin_scissor_mode_(int x, int y, int width, int height) {
  return BeginScissorMode(x, y, width, height);
}

// [[Rcpp::export]]
void end_scissor_mode_() {
  return EndScissorMode();
}

// [[Rcpp::export]]
void end_vr_stereo_mode_() {
  return EndVrStereoMode();
}

// [[Rcpp::export]]
Shader load_shader_(const char * vs_file_name, const char * fs_file_name) {
  return LoadShader(vs_file_name, fs_file_name);
}

// [[Rcpp::export]]
Shader load_shader_from_memory_(const char * vs_code, const char * fs_code) {
  return LoadShaderFromMemory(vs_code, fs_code);
}

// [[Rcpp::export]]
int get_shader_location_(Shader shader, const char * uniform_name) {
  return GetShaderLocation(shader, uniform_name);
}

// [[Rcpp::export]]
int get_shader_location_attrib_(Shader shader, const char * attrib_name) {
  return GetShaderLocationAttrib(shader, attrib_name);
}

// [[Rcpp::export]]
void set_shader_value_matrix_(Shader shader, int loc_index, RaylibMatrix mat) {
  return SetShaderValueMatrix(shader, loc_index, mat);
}

// [[Rcpp::export]]
void set_shader_value_texture_(Shader shader, int loc_index, Texture texture) {
  return SetShaderValueTexture(shader, loc_index, texture);
}

// [[Rcpp::export]]
void unload_shader_(Shader shader) {
  return UnloadShader(shader);
}

// [[Rcpp::export]]
RaylibMatrix get_camera_matrix_(Camera3D camera) {
  return GetCameraMatrix(camera);
}

// [[Rcpp::export]]
RaylibMatrix get_camera_matrix_2d_(Camera2D camera) {
  return GetCameraMatrix2D(camera);
}

// [[Rcpp::export]]
Vector2 get_world_to_screen_(Vector3 position, Camera3D camera) {
  return GetWorldToScreen(position, camera);
}

// [[Rcpp::export]]
Vector2 get_world_to_screen_ex_(Vector3 position, Camera3D camera, int width, int height) {
  return GetWorldToScreenEx(position, camera, width, height);
}

// [[Rcpp::export]]
Vector2 get_world_to_screen_2d_(Vector2 position, Camera2D camera) {
  return GetWorldToScreen2D(position, camera);
}

// [[Rcpp::export]]
Vector2 get_screen_to_world_2d_(Vector2 position, Camera2D camera) {
  return GetScreenToWorld2D(position, camera);
}

// [[Rcpp::export]]
void set_target_fps_(int fps) {
  return SetTargetFPS(fps);
}

// [[Rcpp::export]]
int get_fps_() {
  return GetFPS();
}

// [[Rcpp::export]]
float get_frame_time_() {
  return GetFrameTime();
}

// [[Rcpp::export]]
double get_time_() {
  return GetTime();
}

// [[Rcpp::export]]
int get_random_value_(int min, int max) {
  return GetRandomValue(min, max);
}

// [[Rcpp::export]]
void take_screenshot_(const char * file_name) {
  return TakeScreenshot(file_name);
}

// [[Rcpp::export]]
void set_trace_log_level_(int log_level) {
  return SetTraceLogLevel(log_level);
}

// [[Rcpp::export]]
const char * load_file_text_(const char * file_name) {
  return LoadFileText(file_name);
}

// [[Rcpp::export]]
bool file_exists_(const char * file_name) {
  return FileExists(file_name);
}

// [[Rcpp::export]]
bool directory_exists_(const char * dir_path) {
  return DirectoryExists(dir_path);
}

// [[Rcpp::export]]
bool is_file_extension_(const char * file_name, const char * ext) {
  return IsFileExtension(file_name, ext);
}

// [[Rcpp::export]]
const char * get_file_extension_(const char * file_name) {
  return GetFileExtension(file_name);
}

// [[Rcpp::export]]
const char * get_file_name_(const char * file_path) {
  return GetFileName(file_path);
}

// [[Rcpp::export]]
const char * get_file_name_without_ext_(const char * file_path) {
  return GetFileNameWithoutExt(file_path);
}

// [[Rcpp::export]]
const char * get_directory_path_(const char * file_path) {
  return GetDirectoryPath(file_path);
}

// [[Rcpp::export]]
const char * get_prev_directory_path_(const char * dir_path) {
  return GetPrevDirectoryPath(dir_path);
}

// [[Rcpp::export]]
const char * get_working_directory_() {
  return GetWorkingDirectory();
}

// [[Rcpp::export]]
void clear_directory_files_() {
  return ClearDirectoryFiles();
}

// [[Rcpp::export]]
bool change_directory_(const char * dir) {
  return ChangeDirectory(dir);
}

// [[Rcpp::export]]
bool is_file_dropped_() {
  return IsFileDropped();
}

// [[Rcpp::export]]
void clear_dropped_files_() {
  return ClearDroppedFiles();
}

// [[Rcpp::export]]
long get_file_mod_time_(const char * file_name) {
  return GetFileModTime(file_name);
}

// [[Rcpp::export]]
bool save_storage_value_(unsigned int position, int value) {
  return SaveStorageValue(position, value);
}

// [[Rcpp::export]]
int load_storage_value_(unsigned int position) {
  return LoadStorageValue(position);
}

// [[Rcpp::export]]
bool is_key_pressed_(int key) {
  return IsKeyPressed(key);
}

// [[Rcpp::export]]
bool is_key_down_(int key) {
  return IsKeyDown(key);
}

// [[Rcpp::export]]
bool is_key_released_(int key) {
  return IsKeyReleased(key);
}

// [[Rcpp::export]]
bool is_key_up_(int key) {
  return IsKeyUp(key);
}

// [[Rcpp::export]]
void set_exit_key_(int key) {
  return SetExitKey(key);
}

// [[Rcpp::export]]
int get_key_pressed_() {
  return GetKeyPressed();
}

// [[Rcpp::export]]
int get_char_pressed_() {
  return GetCharPressed();
}

// [[Rcpp::export]]
bool is_gamepad_available_(int gamepad) {
  return IsGamepadAvailable(gamepad);
}

// [[Rcpp::export]]
const char * get_gamepad_name_(int gamepad) {
  return GetGamepadName(gamepad);
}

// [[Rcpp::export]]
bool is_gamepad_button_pressed_(int gamepad, int button) {
  return IsGamepadButtonPressed(gamepad, button);
}

// [[Rcpp::export]]
bool is_gamepad_button_down_(int gamepad, int button) {
  return IsGamepadButtonDown(gamepad, button);
}

// [[Rcpp::export]]
bool is_gamepad_button_released_(int gamepad, int button) {
  return IsGamepadButtonReleased(gamepad, button);
}

// [[Rcpp::export]]
bool is_gamepad_button_up_(int gamepad, int button) {
  return IsGamepadButtonUp(gamepad, button);
}

// [[Rcpp::export]]
int get_gamepad_button_pressed_() {
  return GetGamepadButtonPressed();
}

// [[Rcpp::export]]
int get_gamepad_axis_count_(int gamepad) {
  return GetGamepadAxisCount(gamepad);
}

// [[Rcpp::export]]
float get_gamepad_axis_movement_(int gamepad, int axis) {
  return GetGamepadAxisMovement(gamepad, axis);
}

// [[Rcpp::export]]
int set_gamepad_mappings_(const char * mappings) {
  return SetGamepadMappings(mappings);
}

// [[Rcpp::export]]
bool is_mouse_button_pressed_(int button) {
  return IsMouseButtonPressed(button);
}

// [[Rcpp::export]]
bool is_mouse_button_down_(int button) {
  return IsMouseButtonDown(button);
}

// [[Rcpp::export]]
bool is_mouse_button_released_(int button) {
  return IsMouseButtonReleased(button);
}

// [[Rcpp::export]]
bool is_mouse_button_up_(int button) {
  return IsMouseButtonUp(button);
}

// [[Rcpp::export]]
int get_mouse_x_() {
  return GetMouseX();
}

// [[Rcpp::export]]
int get_mouse_y_() {
  return GetMouseY();
}

// [[Rcpp::export]]
Vector2 get_mouse_position_() {
  return GetMousePosition();
}

// [[Rcpp::export]]
Vector2 get_mouse_delta_() {
  return GetMouseDelta();
}

// [[Rcpp::export]]
void set_mouse_position_(int x, int y) {
  return SetMousePosition(x, y);
}

// [[Rcpp::export]]
void set_mouse_offset_(int offset_x, int offset_y) {
  return SetMouseOffset(offset_x, offset_y);
}

// [[Rcpp::export]]
void set_mouse_scale_(float scale_x, float scale_y) {
  return SetMouseScale(scale_x, scale_y);
}

// [[Rcpp::export]]
float get_mouse_wheel_move_() {
  return GetMouseWheelMove();
}

// [[Rcpp::export]]
void set_mouse_cursor_(int cursor) {
  return SetMouseCursor(cursor);
}

// [[Rcpp::export]]
int get_touch_x_() {
  return GetTouchX();
}

// [[Rcpp::export]]
int get_touch_y_() {
  return GetTouchY();
}

// [[Rcpp::export]]
Vector2 get_touch_position_(int index) {
  return GetTouchPosition(index);
}

// [[Rcpp::export]]
int get_touch_point_id_(int index) {
  return GetTouchPointId(index);
}

// [[Rcpp::export]]
int get_touch_point_count_() {
  return GetTouchPointCount();
}

// [[Rcpp::export]]
void set_gestures_enabled_(unsigned int flags) {
  return SetGesturesEnabled(flags);
}

// [[Rcpp::export]]
bool is_gesture_detected_(int gesture) {
  return IsGestureDetected(gesture);
}

// [[Rcpp::export]]
int get_gesture_detected_() {
  return GetGestureDetected();
}

// [[Rcpp::export]]
float get_gesture_hold_duration_() {
  return GetGestureHoldDuration();
}

// [[Rcpp::export]]
Vector2 get_gesture_drag_vector_() {
  return GetGestureDragVector();
}

// [[Rcpp::export]]
float get_gesture_drag_angle_() {
  return GetGestureDragAngle();
}

// [[Rcpp::export]]
Vector2 get_gesture_pinch_vector_() {
  return GetGesturePinchVector();
}

// [[Rcpp::export]]
float get_gesture_pinch_angle_() {
  return GetGesturePinchAngle();
}

// [[Rcpp::export]]
void set_camera_mode_(Camera3D camera, int mode) {
  return SetCameraMode(camera, mode);
}

// [[Rcpp::export]]
void set_camera_pan_control_(int key_pan) {
  return SetCameraPanControl(key_pan);
}

// [[Rcpp::export]]
void set_camera_alt_control_(int key_alt) {
  return SetCameraAltControl(key_alt);
}

// [[Rcpp::export]]
void set_camera_smooth_zoom_control_(int key_smooth_zoom) {
  return SetCameraSmoothZoomControl(key_smooth_zoom);
}

// [[Rcpp::export]]
void set_camera_move_controls_(int key_front, int key_back, int key_right, int key_left, int key_up, int key_down) {
  return SetCameraMoveControls(key_front, key_back, key_right, key_left, key_up, key_down);
}

// [[Rcpp::export]]
void set_shapes_texture_(Texture texture, Rectangle source) {
  return SetShapesTexture(texture, source);
}

// [[Rcpp::export]]
void draw_pixel_(int pos_x, int pos_y, Color color) {
  return DrawPixel(pos_x, pos_y, color);
}

// [[Rcpp::export]]
void draw_pixel_v_(Vector2 position, Color color) {
  return DrawPixelV(position, color);
}

// [[Rcpp::export]]
void draw_line_(int start_pos_x, int start_pos_y, int end_pos_x, int end_pos_y, Color color) {
  return DrawLine(start_pos_x, start_pos_y, end_pos_x, end_pos_y, color);
}

// [[Rcpp::export]]
void draw_line_v_(Vector2 start_pos, Vector2 end_pos, Color color) {
  return DrawLineV(start_pos, end_pos, color);
}

// [[Rcpp::export]]
void draw_line_ex_(Vector2 start_pos, Vector2 end_pos, float thick, Color color) {
  return DrawLineEx(start_pos, end_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_bezier_(Vector2 start_pos, Vector2 end_pos, float thick, Color color) {
  return DrawLineBezier(start_pos, end_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_bezier_quad_(Vector2 start_pos, Vector2 end_pos, Vector2 control_pos, float thick, Color color) {
  return DrawLineBezierQuad(start_pos, end_pos, control_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_bezier_cubic_(Vector2 start_pos, Vector2 end_pos, Vector2 start_control_pos, Vector2 end_control_pos, float thick, Color color) {
  return DrawLineBezierCubic(start_pos, end_pos, start_control_pos, end_control_pos, thick, color);
}

// [[Rcpp::export]]
void draw_circle_(int center_x, int center_y, float radius, Color color) {
  return DrawCircle(center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void draw_circle_sector_(Vector2 center, float radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawCircleSector(center, radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_circle_sector_lines_(Vector2 center, float radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawCircleSectorLines(center, radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_circle_gradient_(int center_x, int center_y, float radius, Color color_1, Color color_2) {
  return DrawCircleGradient(center_x, center_y, radius, color_1, color_2);
}

// [[Rcpp::export]]
void draw_circle_v_(Vector2 center, float radius, Color color) {
  return DrawCircleV(center, radius, color);
}

// [[Rcpp::export]]
void draw_circle_lines_(int center_x, int center_y, float radius, Color color) {
  return DrawCircleLines(center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void draw_ellipse_(int center_x, int center_y, float radius_h, float radius_v, Color color) {
  return DrawEllipse(center_x, center_y, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ellipse_lines_(int center_x, int center_y, float radius_h, float radius_v, Color color) {
  return DrawEllipseLines(center_x, center_y, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ring_(Vector2 center, float inner_radius, float outer_radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawRing(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_ring_lines_(Vector2 center, float inner_radius, float outer_radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawRingLines(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_rectangle_(int pos_x, int pos_y, int width, int height, Color color) {
  return DrawRectangle(pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void draw_rectangle_v_(Vector2 position, Vector2 size, Color color) {
  return DrawRectangleV(position, size, color);
}

// [[Rcpp::export]]
void draw_rectangle_rec_(Rectangle rec, Color color) {
  return DrawRectangleRec(rec, color);
}

// [[Rcpp::export]]
void draw_rectangle_pro_(Rectangle rec, Vector2 origin, float rotation, Color color) {
  return DrawRectanglePro(rec, origin, rotation, color);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_v_(int pos_x, int pos_y, int width, int height, Color color_1, Color color_2) {
  return DrawRectangleGradientV(pos_x, pos_y, width, height, color_1, color_2);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_h_(int pos_x, int pos_y, int width, int height, Color color_1, Color color_2) {
  return DrawRectangleGradientH(pos_x, pos_y, width, height, color_1, color_2);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_ex_(Rectangle rec, Color col_1, Color col_2, Color col_3, Color col_4) {
  return DrawRectangleGradientEx(rec, col_1, col_2, col_3, col_4);
}

// [[Rcpp::export]]
void draw_rectangle_lines_(int pos_x, int pos_y, int width, int height, Color color) {
  return DrawRectangleLines(pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void draw_rectangle_lines_ex_(Rectangle rec, float line_thick, Color color) {
  return DrawRectangleLinesEx(rec, line_thick, color);
}

// [[Rcpp::export]]
void draw_rectangle_rounded_(Rectangle rec, float roundness, int segments, Color color) {
  return DrawRectangleRounded(rec, roundness, segments, color);
}

// [[Rcpp::export]]
void draw_rectangle_rounded_lines_(Rectangle rec, float roundness, int segments, float line_thick, Color color) {
  return DrawRectangleRoundedLines(rec, roundness, segments, line_thick, color);
}

// [[Rcpp::export]]
void draw_triangle_(Vector2 v_1, Vector2 v_2, Vector2 v_3, Color color) {
  return DrawTriangle(v_1, v_2, v_3, color);
}

// [[Rcpp::export]]
void draw_triangle_lines_(Vector2 v_1, Vector2 v_2, Vector2 v_3, Color color) {
  return DrawTriangleLines(v_1, v_2, v_3, color);
}

// [[Rcpp::export]]
void draw_poly_(Vector2 center, int sides, float radius, float rotation, Color color) {
  return DrawPoly(center, sides, radius, rotation, color);
}

// [[Rcpp::export]]
void draw_poly_lines_(Vector2 center, int sides, float radius, float rotation, Color color) {
  return DrawPolyLines(center, sides, radius, rotation, color);
}

// [[Rcpp::export]]
void draw_poly_lines_ex_(Vector2 center, int sides, float radius, float rotation, float line_thick, Color color) {
  return DrawPolyLinesEx(center, sides, radius, rotation, line_thick, color);
}

// [[Rcpp::export]]
bool check_collision_recs_(Rectangle rec_1, Rectangle rec_2) {
  return CheckCollisionRecs(rec_1, rec_2);
}

// [[Rcpp::export]]
bool check_collision_circles_(Vector2 center_1, float radius_1, Vector2 center_2, float radius_2) {
  return CheckCollisionCircles(center_1, radius_1, center_2, radius_2);
}

// [[Rcpp::export]]
bool check_collision_circle_rec_(Vector2 center, float radius, Rectangle rec) {
  return CheckCollisionCircleRec(center, radius, rec);
}

// [[Rcpp::export]]
bool check_collision_point_rec_(Vector2 point, Rectangle rec) {
  return CheckCollisionPointRec(point, rec);
}

// [[Rcpp::export]]
bool check_collision_point_circle_(Vector2 point, Vector2 center, float radius) {
  return CheckCollisionPointCircle(point, center, radius);
}

// [[Rcpp::export]]
bool check_collision_point_triangle_(Vector2 point, Vector2 p_1, Vector2 p_2, Vector2 p_3) {
  return CheckCollisionPointTriangle(point, p_1, p_2, p_3);
}

// [[Rcpp::export]]
bool check_collision_lines_(Vector2 start_pos_1, Vector2 end_pos_1, Vector2 start_pos_2, Vector2 end_pos_2, Vector2 &collision_point) {
  return CheckCollisionLines(start_pos_1, end_pos_1, start_pos_2, end_pos_2, &collision_point);
}

// [[Rcpp::export]]
bool check_collision_point_line_(Vector2 point, Vector2 p_1, Vector2 p_2, int threshold) {
  return CheckCollisionPointLine(point, p_1, p_2, threshold);
}

// [[Rcpp::export]]
Rectangle get_collision_rec_(Rectangle rec_1, Rectangle rec_2) {
  return GetCollisionRec(rec_1, rec_2);
}

// [[Rcpp::export]]
Image load_image_(const char * file_name) {
  return LoadImage(file_name);
}

// [[Rcpp::export]]
Image load_image_raw_(const char * file_name, int width, int height, int format, int header_size) {
  return LoadImageRaw(file_name, width, height, format, header_size);
}

// [[Rcpp::export]]
Image load_image_from_texture_(Texture texture) {
  return LoadImageFromTexture(texture);
}

// [[Rcpp::export]]
Image load_image_from_screen_() {
  return LoadImageFromScreen();
}

// [[Rcpp::export]]
void unload_image_(Image image) {
  return UnloadImage(image);
}

// [[Rcpp::export]]
bool export_image_(Image image, const char * file_name) {
  return ExportImage(image, file_name);
}

// [[Rcpp::export]]
bool export_image_as_code_(Image image, const char * file_name) {
  return ExportImageAsCode(image, file_name);
}

// [[Rcpp::export]]
Image gen_image_color_(int width, int height, Color color) {
  return GenImageColor(width, height, color);
}

// [[Rcpp::export]]
Image gen_image_gradient_v_(int width, int height, Color top, Color bottom) {
  return GenImageGradientV(width, height, top, bottom);
}

// [[Rcpp::export]]
Image gen_image_gradient_h_(int width, int height, Color left, Color right) {
  return GenImageGradientH(width, height, left, right);
}

// [[Rcpp::export]]
Image gen_image_gradient_radial_(int width, int height, float density, Color inner, Color outer) {
  return GenImageGradientRadial(width, height, density, inner, outer);
}

// [[Rcpp::export]]
Image gen_image_checked_(int width, int height, int checks_x, int checks_y, Color col_1, Color col_2) {
  return GenImageChecked(width, height, checks_x, checks_y, col_1, col_2);
}

// [[Rcpp::export]]
Image gen_image_white_noise_(int width, int height, float factor) {
  return GenImageWhiteNoise(width, height, factor);
}

// [[Rcpp::export]]
Image gen_image_cellular_(int width, int height, int tile_size) {
  return GenImageCellular(width, height, tile_size);
}

// [[Rcpp::export]]
Image image_copy_(Image image) {
  return ImageCopy(image);
}

// [[Rcpp::export]]
Image image_from_image_(Image image, Rectangle rec) {
  return ImageFromImage(image, rec);
}

// [[Rcpp::export]]
Image image_text_(const char * text, int font_size, Color color) {
  return ImageText(text, font_size, color);
}

// [[Rcpp::export]]
Image image_text_ex_(Font font, const char * text, float font_size, float spacing, Color tint) {
  return ImageTextEx(font, text, font_size, spacing, tint);
}

// [[Rcpp::export]]
void image_format_(Image &image, int new_format) {
  return ImageFormat(&image, new_format);
}

// [[Rcpp::export]]
void image_to_pot_(Image &image, Color fill) {
  return ImageToPOT(&image, fill);
}

// [[Rcpp::export]]
void image_crop_(Image &image, Rectangle crop) {
  return ImageCrop(&image, crop);
}

// [[Rcpp::export]]
void image_alpha_crop_(Image &image, float threshold) {
  return ImageAlphaCrop(&image, threshold);
}

// [[Rcpp::export]]
void image_alpha_clear_(Image &image, Color color, float threshold) {
  return ImageAlphaClear(&image, color, threshold);
}

// [[Rcpp::export]]
void image_alpha_mask_(Image &image, Image alpha_mask) {
  return ImageAlphaMask(&image, alpha_mask);
}

// [[Rcpp::export]]
void image_alpha_premultiply_(Image &image) {
  return ImageAlphaPremultiply(&image);
}

// [[Rcpp::export]]
void image_resize_(Image &image, int new_width, int new_height) {
  return ImageResize(&image, new_width, new_height);
}

// [[Rcpp::export]]
void image_resize_nn_(Image &image, int new_width, int new_height) {
  return ImageResizeNN(&image, new_width, new_height);
}

// [[Rcpp::export]]
void image_resize_canvas_(Image &image, int new_width, int new_height, int offset_x, int offset_y, Color fill) {
  return ImageResizeCanvas(&image, new_width, new_height, offset_x, offset_y, fill);
}

// [[Rcpp::export]]
void image_mipmaps_(Image &image) {
  return ImageMipmaps(&image);
}

// [[Rcpp::export]]
void image_dither_(Image &image, int r_bpp, int g_bpp, int b_bpp, int a_bpp) {
  return ImageDither(&image, r_bpp, g_bpp, b_bpp, a_bpp);
}

// [[Rcpp::export]]
void image_flip_vertical_(Image &image) {
  return ImageFlipVertical(&image);
}

// [[Rcpp::export]]
void image_flip_horizontal_(Image &image) {
  return ImageFlipHorizontal(&image);
}

// [[Rcpp::export]]
void image_rotate_cw_(Image &image) {
  return ImageRotateCW(&image);
}

// [[Rcpp::export]]
void image_rotate_ccw_(Image &image) {
  return ImageRotateCCW(&image);
}

// [[Rcpp::export]]
void image_color_tint_(Image &image, Color color) {
  return ImageColorTint(&image, color);
}

// [[Rcpp::export]]
void image_color_invert_(Image &image) {
  return ImageColorInvert(&image);
}

// [[Rcpp::export]]
void image_color_grayscale_(Image &image) {
  return ImageColorGrayscale(&image);
}

// [[Rcpp::export]]
void image_color_contrast_(Image &image, float contrast) {
  return ImageColorContrast(&image, contrast);
}

// [[Rcpp::export]]
void image_color_brightness_(Image &image, int brightness) {
  return ImageColorBrightness(&image, brightness);
}

// [[Rcpp::export]]
void image_color_replace_(Image &image, Color color, Color replace) {
  return ImageColorReplace(&image, color, replace);
}

// [[Rcpp::export]]
void unload_image_colors_(Color &colors) {
  return UnloadImageColors(&colors);
}

// [[Rcpp::export]]
void unload_image_palette_(Color &colors) {
  return UnloadImagePalette(&colors);
}

// [[Rcpp::export]]
Rectangle get_image_alpha_border_(Image image, float threshold) {
  return GetImageAlphaBorder(image, threshold);
}

// [[Rcpp::export]]
Color get_image_color_(Image image, int x, int y) {
  return GetImageColor(image, x, y);
}

// [[Rcpp::export]]
void image_clear_background_(Image &dst, Color color) {
  return ImageClearBackground(&dst, color);
}

// [[Rcpp::export]]
void image_draw_pixel_(Image &dst, int pos_x, int pos_y, Color color) {
  return ImageDrawPixel(&dst, pos_x, pos_y, color);
}

// [[Rcpp::export]]
void image_draw_pixel_v_(Image &dst, Vector2 position, Color color) {
  return ImageDrawPixelV(&dst, position, color);
}

// [[Rcpp::export]]
void image_draw_line_(Image &dst, int start_pos_x, int start_pos_y, int end_pos_x, int end_pos_y, Color color) {
  return ImageDrawLine(&dst, start_pos_x, start_pos_y, end_pos_x, end_pos_y, color);
}

// [[Rcpp::export]]
void image_draw_line_v_(Image &dst, Vector2 start, Vector2 end, Color color) {
  return ImageDrawLineV(&dst, start, end, color);
}

// [[Rcpp::export]]
void image_draw_circle_(Image &dst, int center_x, int center_y, int radius, Color color) {
  return ImageDrawCircle(&dst, center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void image_draw_circle_v_(Image &dst, Vector2 center, int radius, Color color) {
  return ImageDrawCircleV(&dst, center, radius, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_(Image &dst, int pos_x, int pos_y, int width, int height, Color color) {
  return ImageDrawRectangle(&dst, pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_v_(Image &dst, Vector2 position, Vector2 size, Color color) {
  return ImageDrawRectangleV(&dst, position, size, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_rec_(Image &dst, Rectangle rec, Color color) {
  return ImageDrawRectangleRec(&dst, rec, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_lines_(Image &dst, Rectangle rec, int thick, Color color) {
  return ImageDrawRectangleLines(&dst, rec, thick, color);
}

// [[Rcpp::export]]
void image_draw_(Image &dst, Image src, Rectangle src_rec, Rectangle dst_rec, Color tint) {
  return ImageDraw(&dst, src, src_rec, dst_rec, tint);
}

// [[Rcpp::export]]
void image_draw_text_(Image &dst, const char * text, int pos_x, int pos_y, int font_size, Color color) {
  return ImageDrawText(&dst, text, pos_x, pos_y, font_size, color);
}

// [[Rcpp::export]]
void image_draw_text_ex_(Image &dst, Font font, const char * text, Vector2 position, float font_size, float spacing, Color tint) {
  return ImageDrawTextEx(&dst, font, text, position, font_size, spacing, tint);
}

// [[Rcpp::export]]
Texture load_texture_(const char * file_name) {
  return LoadTexture(file_name);
}

// [[Rcpp::export]]
Texture load_texture_from_image_(Image image) {
  return LoadTextureFromImage(image);
}

// [[Rcpp::export]]
RenderTexture load_render_texture_(int width, int height) {
  return LoadRenderTexture(width, height);
}

// [[Rcpp::export]]
void unload_texture_(Texture texture) {
  return UnloadTexture(texture);
}

// [[Rcpp::export]]
void unload_render_texture_(RenderTexture target) {
  return UnloadRenderTexture(target);
}

// [[Rcpp::export]]
void gen_texture_mipmaps_(Texture &texture) {
  return GenTextureMipmaps(&texture);
}

// [[Rcpp::export]]
void set_texture_filter_(Texture texture, int filter) {
  return SetTextureFilter(texture, filter);
}

// [[Rcpp::export]]
void set_texture_wrap_(Texture texture, int wrap) {
  return SetTextureWrap(texture, wrap);
}

// [[Rcpp::export]]
void draw_texture_(Texture texture, int pos_x, int pos_y, Color tint) {
  return DrawTexture(texture, pos_x, pos_y, tint);
}

// [[Rcpp::export]]
void draw_texture_v_(Texture texture, Vector2 position, Color tint) {
  return DrawTextureV(texture, position, tint);
}

// [[Rcpp::export]]
void draw_texture_ex_(Texture texture, Vector2 position, float rotation, float scale, Color tint) {
  return DrawTextureEx(texture, position, rotation, scale, tint);
}

// [[Rcpp::export]]
void draw_texture_rec_(Texture texture, Rectangle source, Vector2 position, Color tint) {
  return DrawTextureRec(texture, source, position, tint);
}

// [[Rcpp::export]]
void draw_texture_quad_(Texture texture, Vector2 tiling, Vector2 offset, Rectangle quad, Color tint) {
  return DrawTextureQuad(texture, tiling, offset, quad, tint);
}

// [[Rcpp::export]]
void draw_texture_tiled_(Texture texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint) {
  return DrawTextureTiled(texture, source, dest, origin, rotation, scale, tint);
}

// [[Rcpp::export]]
void draw_texture_pro_(Texture texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint) {
  return DrawTexturePro(texture, source, dest, origin, rotation, tint);
}

// [[Rcpp::export]]
void draw_texture_npatch_(Texture texture, NPatchInfo n_patch_info, Rectangle dest, Vector2 origin, float rotation, Color tint) {
  return DrawTextureNPatch(texture, n_patch_info, dest, origin, rotation, tint);
}

// [[Rcpp::export]]
void draw_texture_poly_(Texture texture, Vector2 center, Vector2 &points, Vector2 &texcoords, int point_count, Color tint) {
  return DrawTexturePoly(texture, center, &points, &texcoords, point_count, tint);
}

// [[Rcpp::export]]
Color fade_(Color color, float alpha) {
  return Fade(color, alpha);
}

// [[Rcpp::export]]
int color_to_int_(Color color) {
  return ColorToInt(color);
}

// [[Rcpp::export]]
Vector4 color_normalize_(Color color) {
  return ColorNormalize(color);
}

// [[Rcpp::export]]
Color color_from_normalized_(Vector4 normalized) {
  return ColorFromNormalized(normalized);
}

// [[Rcpp::export]]
Vector3 color_to_hsv_(Color color) {
  return ColorToHSV(color);
}

// [[Rcpp::export]]
Color color_from_hsv_(float hue, float saturation, float value) {
  return ColorFromHSV(hue, saturation, value);
}

// [[Rcpp::export]]
Color color_alpha_(Color color, float alpha) {
  return ColorAlpha(color, alpha);
}

// [[Rcpp::export]]
Color color_alpha_blend_(Color dst, Color src, Color tint) {
  return ColorAlphaBlend(dst, src, tint);
}

// [[Rcpp::export]]
Color get_color_(unsigned int hex_value) {
  return GetColor(hex_value);
}

// [[Rcpp::export]]
int get_pixel_data_size_(int width, int height, int format) {
  return GetPixelDataSize(width, height, format);
}

// [[Rcpp::export]]
Font get_font_default_() {
  return GetFontDefault();
}

// [[Rcpp::export]]
Font load_font_(const char * file_name) {
  return LoadFont(file_name);
}

// [[Rcpp::export]]
Font load_font_from_image_(Image image, Color key, int first_char) {
  return LoadFontFromImage(image, key, first_char);
}

// [[Rcpp::export]]
void unload_font_data_(GlyphInfo &chars, int glyph_count) {
  return UnloadFontData(&chars, glyph_count);
}

// [[Rcpp::export]]
void unload_font_(Font font) {
  return UnloadFont(font);
}

// [[Rcpp::export]]
void draw_fps_(int pos_x, int pos_y) {
  return DrawFPS(pos_x, pos_y);
}

// [[Rcpp::export]]
void draw_text_(const char * text, int pos_x, int pos_y, int font_size, Color color) {
  return DrawText(text, pos_x, pos_y, font_size, color);
}

// [[Rcpp::export]]
void draw_text_ex_(Font font, const char * text, Vector2 position, float font_size, float spacing, Color tint) {
  return DrawTextEx(font, text, position, font_size, spacing, tint);
}

// [[Rcpp::export]]
void draw_text_pro_(Font font, const char * text, Vector2 position, Vector2 origin, float rotation, float font_size, float spacing, Color tint) {
  return DrawTextPro(font, text, position, origin, rotation, font_size, spacing, tint);
}

// [[Rcpp::export]]
void draw_text_codepoint_(Font font, int codepoint, Vector2 position, float font_size, Color tint) {
  return DrawTextCodepoint(font, codepoint, position, font_size, tint);
}

// [[Rcpp::export]]
int measure_text_(const char * text, int font_size) {
  return MeasureText(text, font_size);
}

// [[Rcpp::export]]
Vector2 measure_text_ex_(Font font, const char * text, float font_size, float spacing) {
  return MeasureTextEx(font, text, font_size, spacing);
}

// [[Rcpp::export]]
int get_glyph_index_(Font font, int codepoint) {
  return GetGlyphIndex(font, codepoint);
}

// [[Rcpp::export]]
GlyphInfo get_glyph_info_(Font font, int codepoint) {
  return GetGlyphInfo(font, codepoint);
}

// [[Rcpp::export]]
Rectangle get_glyph_atlas_rec_(Font font, int codepoint) {
  return GetGlyphAtlasRec(font, codepoint);
}

// [[Rcpp::export]]
const char * text_replace_(const char * text, const char * replace, const char * by) {
  return TextReplace(const_cast<char *>(text), replace, by);
}

// [[Rcpp::export]]
const char * text_insert_(const char * text, const char * insert, int position) {
  return TextInsert(text, insert, position);
}

// [[Rcpp::export]]
int text_find_index_(const char * text, const char * find) {
  return TextFindIndex(text, find);
}

// [[Rcpp::export]]
const char * text_to_upper_(const char * text) {
  return TextToUpper(text);
}

// [[Rcpp::export]]
const char * text_to_lower_(const char * text) {
  return TextToLower(text);
}

// [[Rcpp::export]]
const char * text_to_pascal_(const char * text) {
  return TextToPascal(text);
}

// [[Rcpp::export]]
int text_to_integer_(const char * text) {
  return TextToInteger(text);
}

// [[Rcpp::export]]
void draw_line_3d_(Vector3 start_pos, Vector3 end_pos, Color color) {
  return DrawLine3D(start_pos, end_pos, color);
}

// [[Rcpp::export]]
void draw_point_3d_(Vector3 position, Color color) {
  return DrawPoint3D(position, color);
}

// [[Rcpp::export]]
void draw_circle_3d_(Vector3 center, float radius, Vector3 rotation_axis, float rotation_angle, Color color) {
  return DrawCircle3D(center, radius, rotation_axis, rotation_angle, color);
}

// [[Rcpp::export]]
void draw_triangle_3d_(Vector3 v_1, Vector3 v_2, Vector3 v_3, Color color) {
  return DrawTriangle3D(v_1, v_2, v_3, color);
}

// [[Rcpp::export]]
void draw_triangle_strip_3d_(Vector3 &points, int point_count, Color color) {
  return DrawTriangleStrip3D(&points, point_count, color);
}

// [[Rcpp::export]]
void draw_cube_(Vector3 position, float width, float height, float length, Color color) {
  return DrawCube(position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_v_(Vector3 position, Vector3 size, Color color) {
  return DrawCubeV(position, size, color);
}

// [[Rcpp::export]]
void draw_cube_wires_(Vector3 position, float width, float height, float length, Color color) {
  return DrawCubeWires(position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_wires_v_(Vector3 position, Vector3 size, Color color) {
  return DrawCubeWiresV(position, size, color);
}

// [[Rcpp::export]]
void draw_cube_texture_(Texture texture, Vector3 position, float width, float height, float length, Color color) {
  return DrawCubeTexture(texture, position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_texture_rec_(Texture texture, Rectangle source, Vector3 position, float width, float height, float length, Color color) {
  return DrawCubeTextureRec(texture, source, position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_sphere_(Vector3 center_pos, float radius, Color color) {
  return DrawSphere(center_pos, radius, color);
}

// [[Rcpp::export]]
void draw_sphere_ex_(Vector3 center_pos, float radius, int rings, int slices, Color color) {
  return DrawSphereEx(center_pos, radius, rings, slices, color);
}

// [[Rcpp::export]]
void draw_sphere_wires_(Vector3 center_pos, float radius, int rings, int slices, Color color) {
  return DrawSphereWires(center_pos, radius, rings, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_(Vector3 position, float radius_top, float radius_bottom, float height, int slices, Color color) {
  return DrawCylinder(position, radius_top, radius_bottom, height, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_ex_(Vector3 start_pos, Vector3 end_pos, float start_radius, float end_radius, int sides, Color color) {
  return DrawCylinderEx(start_pos, end_pos, start_radius, end_radius, sides, color);
}

// [[Rcpp::export]]
void draw_cylinder_wires_(Vector3 position, float radius_top, float radius_bottom, float height, int slices, Color color) {
  return DrawCylinderWires(position, radius_top, radius_bottom, height, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_wires_ex_(Vector3 start_pos, Vector3 end_pos, float start_radius, float end_radius, int sides, Color color) {
  return DrawCylinderWiresEx(start_pos, end_pos, start_radius, end_radius, sides, color);
}

// [[Rcpp::export]]
void draw_plane_(Vector3 center_pos, Vector2 size, Color color) {
  return DrawPlane(center_pos, size, color);
}

// [[Rcpp::export]]
void draw_ray_(Ray ray, Color color) {
  return DrawRay(ray, color);
}

// [[Rcpp::export]]
void draw_grid_(int slices, float spacing) {
  return DrawGrid(slices, spacing);
}

// [[Rcpp::export]]
Model load_model_(const char * file_name) {
  return LoadModel(file_name);
}

// [[Rcpp::export]]
void unload_model_(Model model) {
  return UnloadModel(model);
}

// [[Rcpp::export]]
BoundingBox get_model_bounding_box_(Model model) {
  return GetModelBoundingBox(model);
}

// [[Rcpp::export]]
void draw_model_(Model model, Vector3 position, float scale, Color tint) {
  return DrawModel(model, position, scale, tint);
}

// [[Rcpp::export]]
void draw_model_ex_(Model model, Vector3 position, Vector3 rotation_axis, float rotation_angle, Vector3 scale, Color tint) {
  return DrawModelEx(model, position, rotation_axis, rotation_angle, scale, tint);
}

// [[Rcpp::export]]
void draw_model_wires_(Model model, Vector3 position, float scale, Color tint) {
  return DrawModelWires(model, position, scale, tint);
}

// [[Rcpp::export]]
void draw_bounding_box_(BoundingBox box, Color color) {
  return DrawBoundingBox(box, color);
}

// [[Rcpp::export]]
void draw_billboard_(Camera3D camera, Texture texture, Vector3 position, float size, Color tint) {
  return DrawBillboard(camera, texture, position, size, tint);
}

// [[Rcpp::export]]
bool check_collision_spheres_(Vector3 center_1, float radius_1, Vector3 center_2, float radius_2) {
  return CheckCollisionSpheres(center_1, radius_1, center_2, radius_2);
}

// [[Rcpp::export]]
bool check_collision_boxes_(BoundingBox box_1, BoundingBox box_2) {
  return CheckCollisionBoxes(box_1, box_2);
}

// [[Rcpp::export]]
bool check_collision_box_sphere_(BoundingBox box, Vector3 center, float radius) {
  return CheckCollisionBoxSphere(box, center, radius);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_sphere_(Ray ray, Vector3 center, float radius) {
  return GetRayCollisionSphere(ray, center, radius);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_box_(Ray ray, BoundingBox box) {
  return GetRayCollisionBox(ray, box);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_model_(Ray ray, Model model) {
  return GetRayCollisionModel(ray, model);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_mesh_(Ray ray, Mesh mesh, RaylibMatrix transform) {
  return GetRayCollisionMesh(ray, mesh, transform);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_triangle_(Ray ray, Vector3 p_1, Vector3 p_2, Vector3 p_3) {
  return GetRayCollisionTriangle(ray, p_1, p_2, p_3);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_quad_(Ray ray, Vector3 p_1, Vector3 p_2, Vector3 p_3, Vector3 p_4) {
  return GetRayCollisionQuad(ray, p_1, p_2, p_3, p_4);
}

// [[Rcpp::export]]
void init_audio_device_() {
  return InitAudioDevice();
}

// [[Rcpp::export]]
void close_audio_device_() {
  return CloseAudioDevice();
}

// [[Rcpp::export]]
bool is_audio_device_ready_() {
  return IsAudioDeviceReady();
}

// [[Rcpp::export]]
void set_master_volume_(float volume) {
  return SetMasterVolume(volume);
}

// [[Rcpp::export]]
Wave load_wave_(const char * file_name) {
  return LoadWave(file_name);
}

// [[Rcpp::export]]
Sound load_sound_(const char * file_name) {
  return LoadSound(file_name);
}

// [[Rcpp::export]]
Sound load_sound_from_wave_(Wave wave) {
  return LoadSoundFromWave(wave);
}

// [[Rcpp::export]]
void unload_wave_(Wave wave) {
  return UnloadWave(wave);
}

// [[Rcpp::export]]
void unload_sound_(Sound sound) {
  return UnloadSound(sound);
}

// [[Rcpp::export]]
bool export_wave_(Wave wave, const char * file_name) {
  return ExportWave(wave, file_name);
}

// [[Rcpp::export]]
bool export_wave_as_code_(Wave wave, const char * file_name) {
  return ExportWaveAsCode(wave, file_name);
}

// [[Rcpp::export]]
void play_sound_(Sound sound) {
  return PlaySound(sound);
}

// [[Rcpp::export]]
void stop_sound_(Sound sound) {
  return StopSound(sound);
}

// [[Rcpp::export]]
void pause_sound_(Sound sound) {
  return PauseSound(sound);
}

// [[Rcpp::export]]
void resume_sound_(Sound sound) {
  return ResumeSound(sound);
}

// [[Rcpp::export]]
void play_sound_multi_(Sound sound) {
  return PlaySoundMulti(sound);
}

// [[Rcpp::export]]
void stop_sound_multi_() {
  return StopSoundMulti();
}

// [[Rcpp::export]]
int get_sounds_playing_() {
  return GetSoundsPlaying();
}

// [[Rcpp::export]]
bool is_sound_playing_(Sound sound) {
  return IsSoundPlaying(sound);
}

// [[Rcpp::export]]
void set_sound_volume_(Sound sound, float volume) {
  return SetSoundVolume(sound, volume);
}

// [[Rcpp::export]]
void set_sound_pitch_(Sound sound, float pitch) {
  return SetSoundPitch(sound, pitch);
}

// [[Rcpp::export]]
Music load_music_stream_(const char * file_name) {
  return LoadMusicStream(file_name);
}

// [[Rcpp::export]]
void unload_music_stream_(Music music) {
  return UnloadMusicStream(music);
}

// [[Rcpp::export]]
void play_music_stream_(Music music) {
  return PlayMusicStream(music);
}

// [[Rcpp::export]]
bool is_music_stream_playing_(Music music) {
  return IsMusicStreamPlaying(music);
}

// [[Rcpp::export]]
void update_music_stream_(Music music) {
  return UpdateMusicStream(music);
}

// [[Rcpp::export]]
void stop_music_stream_(Music music) {
  return StopMusicStream(music);
}

// [[Rcpp::export]]
void pause_music_stream_(Music music) {
  return PauseMusicStream(music);
}

// [[Rcpp::export]]
void resume_music_stream_(Music music) {
  return ResumeMusicStream(music);
}

// [[Rcpp::export]]
void seek_music_stream_(Music music, float position) {
  return SeekMusicStream(music, position);
}

// [[Rcpp::export]]
void set_music_volume_(Music music, float volume) {
  return SetMusicVolume(music, volume);
}

// [[Rcpp::export]]
void set_music_pitch_(Music music, float pitch) {
  return SetMusicPitch(music, pitch);
}

// [[Rcpp::export]]
float get_music_time_length_(Music music) {
  return GetMusicTimeLength(music);
}

// [[Rcpp::export]]
float get_music_time_played_(Music music) {
  return GetMusicTimePlayed(music);
}

// [[Rcpp::export]]
AudioStream load_audio_stream_(unsigned int sample_rate, unsigned int sample_size, unsigned int channels) {
  return LoadAudioStream(sample_rate, sample_size, channels);
}

// [[Rcpp::export]]
void unload_audio_stream_(AudioStream stream) {
  return UnloadAudioStream(stream);
}

// [[Rcpp::export]]
bool is_audio_stream_processed_(AudioStream stream) {
  return IsAudioStreamProcessed(stream);
}

// [[Rcpp::export]]
void play_audio_stream_(AudioStream stream) {
  return PlayAudioStream(stream);
}

// [[Rcpp::export]]
void pause_audio_stream_(AudioStream stream) {
  return PauseAudioStream(stream);
}

// [[Rcpp::export]]
void resume_audio_stream_(AudioStream stream) {
  return ResumeAudioStream(stream);
}

// [[Rcpp::export]]
bool is_audio_stream_playing_(AudioStream stream) {
  return IsAudioStreamPlaying(stream);
}

// [[Rcpp::export]]
void stop_audio_stream_(AudioStream stream) {
  return StopAudioStream(stream);
}

// [[Rcpp::export]]
void set_audio_stream_volume_(AudioStream stream, float volume) {
  return SetAudioStreamVolume(stream, volume);
}

// [[Rcpp::export]]
void set_audio_stream_pitch_(AudioStream stream, float pitch) {
  return SetAudioStreamPitch(stream, pitch);
}

// [[Rcpp::export]]
void set_audio_stream_buffer_size_default_(int size) {
  return SetAudioStreamBufferSizeDefault(size);
}

// [[Rcpp::export]]
float vector_2_angle_(Vector2 v_1, Vector2 v_2) {
  return Vector2Angle(v_1, v_2);
}

// [[Rcpp::export]]
Vector2 vector_2_move_towards_(Vector2 v, Vector2 target, float max_distance) {
  return Vector2MoveTowards(v, target, max_distance);
}

// [[Rcpp::export]]
float vector_2_distance_(Vector2 v_1, Vector2 v_2) {
  return Vector2Distance(v_1, v_2);
}

// [[Rcpp::export]]
Vector2 vector_2_rotate_(Vector2 v, float angle) {
  return Vector2Rotate(v, angle);
}

