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
Rectangle get_image_alpha_border_(Image image, float threshold) {
  return GetImageAlphaBorder(image, threshold);
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
void draw_texture_(Texture texture, int pos_x, int pos_y, Color tint) {
  return DrawTexture(texture, pos_x, pos_y, tint);
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
Font get_font_default_() {
  return GetFontDefault();
}

// [[Rcpp::export]]
Font load_font_(const char * file_name) {
  return LoadFont(file_name);
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
int measure_text_(const char * text, int font_size) {
  return MeasureText(text, font_size);
}

// [[Rcpp::export]]
Vector2 measure_text_ex_(Font font, const char * text, float font_size, float spacing) {
  return MeasureTextEx(font, text, font_size, spacing);
}

// [[Rcpp::export]]
void draw_cube_(Vector3 position, float width, float height, float length, Color color) {
  return DrawCube(position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_grid_(int slices, float spacing) {
  return DrawGrid(slices, spacing);
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

