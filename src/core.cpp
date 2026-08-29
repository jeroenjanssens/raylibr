// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
void init_window_(int width, int height, const char * title) {
  return InitWindow(width, height, title);
}

// [[Rcpp::export]]
void close_window_() {
  return CloseWindow();
}

// [[Rcpp::export]]
bool window_should_close_() {
  return WindowShouldClose();
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
void toggle_borderless_windowed_() {
  return ToggleBorderlessWindowed();
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
void set_window_size_(int width, int height) {
  return SetWindowSize(width, height);
}

// [[Rcpp::export]]
void set_window_opacity_(float opacity) {
  return SetWindowOpacity(opacity);
}

// [[Rcpp::export]]
void set_window_focused_() {
  return SetWindowFocused();
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
int get_render_width_() {
  return GetRenderWidth();
}

// [[Rcpp::export]]
int get_render_height_() {
  return GetRenderHeight();
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
Image get_clipboard_image_() {
  return GetClipboardImage();
}

// [[Rcpp::export]]
void enable_event_waiting_() {
  return EnableEventWaiting();
}

// [[Rcpp::export]]
void disable_event_waiting_() {
  return DisableEventWaiting();
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
void begin_vr_stereo_mode_(VrStereoConfig config) {
  return BeginVrStereoMode(config);
}

// [[Rcpp::export]]
void end_vr_stereo_mode_() {
  return EndVrStereoMode();
}

// [[Rcpp::export]]
void unload_vr_stereo_config_(VrStereoConfig config) {
  return UnloadVrStereoConfig(config);
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
bool is_shader_valid_(Shader shader) {
  return IsShaderValid(shader);
}

// [[Rcpp::export]]
void unload_shader_(Shader shader) {
  return UnloadShader(shader);
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
float get_frame_time_() {
  return GetFrameTime();
}

// [[Rcpp::export]]
double get_time_() {
  return GetTime();
}

// [[Rcpp::export]]
int get_fps_() {
  return GetFPS();
}

// [[Rcpp::export]]
void swap_screen_buffer_() {
  return SwapScreenBuffer();
}

// [[Rcpp::export]]
void poll_input_events_() {
  return PollInputEvents();
}

// [[Rcpp::export]]
void set_random_seed_(unsigned int seed) {
  return SetRandomSeed(seed);
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
void set_config_flags_(unsigned int flags) {
  return SetConfigFlags(flags);
}

// [[Rcpp::export]]
void open_url_(const char * url) {
  return OpenURL(url);
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
bool save_file_text_(const char * file_name, const char * text) {
  return SaveFileText(file_name, text);
}

// [[Rcpp::export]]
int file_text_find_index_(const char * file_name, const char * search) {
  return FileTextFindIndex(file_name, search);
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
int get_file_length_(const char * file_name) {
  return GetFileLength(file_name);
}

// [[Rcpp::export]]
long get_file_mod_time_(const char * file_name) {
  return GetFileModTime(file_name);
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
const char * get_application_directory_() {
  return GetApplicationDirectory();
}

// [[Rcpp::export]]
int make_directory_(const char * dir_path) {
  return MakeDirectory(dir_path);
}

// [[Rcpp::export]]
bool change_directory_(const char * dir_path) {
  return ChangeDirectory(dir_path);
}

// [[Rcpp::export]]
bool is_path_file_(const char * path) {
  return IsPathFile(path);
}

// [[Rcpp::export]]
bool is_file_name_valid_(const char * file_name) {
  return IsFileNameValid(file_name);
}

// [[Rcpp::export]]
bool is_file_dropped_() {
  return IsFileDropped();
}

// [[Rcpp::export]]
unsigned int get_directory_file_count_(const char * dir_path) {
  return GetDirectoryFileCount(dir_path);
}

// [[Rcpp::export]]
unsigned int get_directory_file_count_ex_(const char * base_path, const char * filter, bool scan_subdirs) {
  return GetDirectoryFileCountEx(base_path, filter, scan_subdirs);
}

// [[Rcpp::export]]
bool is_key_pressed_(int key) {
  return IsKeyPressed(key);
}

// [[Rcpp::export]]
bool is_key_pressed_repeat_(int key) {
  return IsKeyPressedRepeat(key);
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
int get_key_pressed_() {
  return GetKeyPressed();
}

// [[Rcpp::export]]
void set_exit_key_(int key) {
  return SetExitKey(key);
}

// [[Rcpp::export]]
bool is_gamepad_available_(int gamepad) {
  return IsGamepadAvailable(gamepad);
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
void set_gamepad_vibration_(int gamepad, float left_motor, float right_motor, float duration) {
  return SetGamepadVibration(gamepad, left_motor, right_motor, duration);
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
Vector2 get_mouse_wheel_move_v_() {
  return GetMouseWheelMoveV();
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
bool is_gesture_detected_(unsigned int gesture) {
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
Texture2D get_shapes_texture_() {
  return GetShapesTexture();
}

// [[Rcpp::export]]
Rectangle get_shapes_texture_rectangle_() {
  return GetShapesTextureRectangle();
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
Color fade_(Color color, float alpha) {
  return Fade(color, alpha);
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
bool export_font_as_code_(Font font, const char * file_name) {
  return ExportFontAsCode(font, file_name);
}

// [[Rcpp::export]]
void set_text_line_spacing_(int spacing) {
  return SetTextLineSpacing(spacing);
}

// [[Rcpp::export]]
bool text_is_equal_(const char * text1, const char * text2) {
  return TextIsEqual(text1, text2);
}

// [[Rcpp::export]]
unsigned int text_length_(const char * text) {
  return TextLength(text);
}

// [[Rcpp::export]]
const char * get_text_between_(const char * text, const char * begin, const char * end) {
  return GetTextBetween(text, begin, end);
}

// [[Rcpp::export]]
const char * text_replace_alloc_(const char * text, const char * search, const char * replacement) {
  return TextReplaceAlloc(text, search, replacement);
}

// [[Rcpp::export]]
const char * text_replace_between_(const char * text, const char * begin, const char * end, const char * replacement) {
  return TextReplaceBetween(text, begin, end, replacement);
}

// [[Rcpp::export]]
const char * text_replace_between_alloc_(const char * text, const char * begin, const char * end, const char * replacement) {
  return TextReplaceBetweenAlloc(text, begin, end, replacement);
}

// [[Rcpp::export]]
const char * text_insert_alloc_(const char * text, const char * insert, int position) {
  return TextInsertAlloc(text, insert, position);
}

// [[Rcpp::export]]
void draw_bounding_box_(BoundingBox box, Color color) {
  return DrawBoundingBox(box, color);
}

// [[Rcpp::export]]
void unload_mesh_(Mesh mesh) {
  return UnloadMesh(mesh);
}

// [[Rcpp::export]]
void update_model_animation_(Model model, ModelAnimation anim, float frame) {
  return UpdateModelAnimation(model, anim, frame);
}

// [[Rcpp::export]]
void update_model_animation_ex_(Model model, ModelAnimation anim_a, float frame_a, ModelAnimation anim_b, float frame_b, float blend) {
  return UpdateModelAnimationEx(model, anim_a, frame_a, anim_b, frame_b, blend);
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
Wave wave_copy_(Wave wave) {
  return WaveCopy(wave);
}
