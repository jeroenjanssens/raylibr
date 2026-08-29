// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]


// [[Rcpp::export]]
void rl_matrix_mode_(int mode) {
  return rlMatrixMode(mode);
}

// [[Rcpp::export]]
void rl_push_matrix_() {
  return rlPushMatrix();
}

// [[Rcpp::export]]
void rl_pop_matrix_() {
  return rlPopMatrix();
}

// [[Rcpp::export]]
void rl_load_identity_() {
  return rlLoadIdentity();
}

// [[Rcpp::export]]
void rl_translatef_(float x, float y, float z) {
  return rlTranslatef(x, y, z);
}

// [[Rcpp::export]]
void rl_rotatef_(float angle, float x, float y, float z) {
  return rlRotatef(angle, x, y, z);
}

// [[Rcpp::export]]
void rl_scalef_(float x, float y, float z) {
  return rlScalef(x, y, z);
}

// [[Rcpp::export]]
void rl_frustum_(double left, double right, double bottom, double top, double znear, double zfar) {
  return rlFrustum(left, right, bottom, top, znear, zfar);
}

// [[Rcpp::export]]
void rl_ortho_(double left, double right, double bottom, double top, double znear, double zfar) {
  return rlOrtho(left, right, bottom, top, znear, zfar);
}

// [[Rcpp::export]]
void rl_viewport_(int x, int y, int width, int height) {
  return rlViewport(x, y, width, height);
}

// [[Rcpp::export]]
void rl_set_clip_planes_(double near_plane, double far_plane) {
  return rlSetClipPlanes(near_plane, far_plane);
}

// [[Rcpp::export]]
double rl_get_cull_distance_near_() {
  return rlGetCullDistanceNear();
}

// [[Rcpp::export]]
double rl_get_cull_distance_far_() {
  return rlGetCullDistanceFar();
}

// [[Rcpp::export]]
void rl_begin_(int mode) {
  return rlBegin(mode);
}

// [[Rcpp::export]]
void rl_end_() {
  return rlEnd();
}

// [[Rcpp::export]]
void rl_vertex2i_(int x, int y) {
  return rlVertex2i(x, y);
}

// [[Rcpp::export]]
void rl_vertex2f_(float x, float y) {
  return rlVertex2f(x, y);
}

// [[Rcpp::export]]
void rl_vertex3f_(float x, float y, float z) {
  return rlVertex3f(x, y, z);
}

// [[Rcpp::export]]
void rl_tex_coord2f_(float x, float y) {
  return rlTexCoord2f(x, y);
}

// [[Rcpp::export]]
void rl_normal3f_(float x, float y, float z) {
  return rlNormal3f(x, y, z);
}

// [[Rcpp::export]]
void rl_color4ub_(unsigned int r, unsigned int g, unsigned int b, unsigned int a) {
  return rlColor4ub(r, g, b, a);
}

// [[Rcpp::export]]
void rl_color3f_(float x, float y, float z) {
  return rlColor3f(x, y, z);
}

// [[Rcpp::export]]
void rl_color4f_(float x, float y, float z, float w) {
  return rlColor4f(x, y, z, w);
}

// [[Rcpp::export]]
bool rl_enable_vertex_array_(unsigned int vao_id) {
  return rlEnableVertexArray(vao_id);
}

// [[Rcpp::export]]
void rl_disable_vertex_array_() {
  return rlDisableVertexArray();
}

// [[Rcpp::export]]
void rl_enable_vertex_buffer_(unsigned int id) {
  return rlEnableVertexBuffer(id);
}

// [[Rcpp::export]]
void rl_disable_vertex_buffer_() {
  return rlDisableVertexBuffer();
}

// [[Rcpp::export]]
void rl_enable_vertex_buffer_element_(unsigned int id) {
  return rlEnableVertexBufferElement(id);
}

// [[Rcpp::export]]
void rl_disable_vertex_buffer_element_() {
  return rlDisableVertexBufferElement();
}

// [[Rcpp::export]]
void rl_enable_vertex_attribute_(unsigned int index) {
  return rlEnableVertexAttribute(index);
}

// [[Rcpp::export]]
void rl_disable_vertex_attribute_(unsigned int index) {
  return rlDisableVertexAttribute(index);
}

// [[Rcpp::export]]
void rl_disable_state_pointer_(int vertex_attrib_type) {
  return rlDisableStatePointer(vertex_attrib_type);
}

// [[Rcpp::export]]
void rl_active_texture_slot_(int slot) {
  return rlActiveTextureSlot(slot);
}

// [[Rcpp::export]]
void rl_enable_texture_(unsigned int id) {
  return rlEnableTexture(id);
}

// [[Rcpp::export]]
void rl_disable_texture_() {
  return rlDisableTexture();
}

// [[Rcpp::export]]
void rl_enable_texture_cubemap_(unsigned int id) {
  return rlEnableTextureCubemap(id);
}

// [[Rcpp::export]]
void rl_disable_texture_cubemap_() {
  return rlDisableTextureCubemap();
}

// [[Rcpp::export]]
void rl_texture_parameters_(unsigned int id, int param, int value) {
  return rlTextureParameters(id, param, value);
}

// [[Rcpp::export]]
void rl_cubemap_parameters_(unsigned int id, int param, int value) {
  return rlCubemapParameters(id, param, value);
}

// [[Rcpp::export]]
void rl_enable_shader_(unsigned int id) {
  return rlEnableShader(id);
}

// [[Rcpp::export]]
void rl_disable_shader_() {
  return rlDisableShader();
}

// [[Rcpp::export]]
void rl_enable_framebuffer_(unsigned int id) {
  return rlEnableFramebuffer(id);
}

// [[Rcpp::export]]
void rl_disable_framebuffer_() {
  return rlDisableFramebuffer();
}

// [[Rcpp::export]]
unsigned int rl_get_active_framebuffer_() {
  return rlGetActiveFramebuffer();
}

// [[Rcpp::export]]
void rl_active_draw_buffers_(int count) {
  return rlActiveDrawBuffers(count);
}

// [[Rcpp::export]]
void rl_blit_framebuffer_(int src_x, int src_y, int src_width, int src_height, int dst_x, int dst_y, int dst_width, int dst_height, int buffer_mask) {
  return rlBlitFramebuffer(src_x, src_y, src_width, src_height, dst_x, dst_y, dst_width, dst_height, buffer_mask);
}

// [[Rcpp::export]]
void rl_bind_framebuffer_(unsigned int target, unsigned int framebuffer) {
  return rlBindFramebuffer(target, framebuffer);
}

// [[Rcpp::export]]
void rl_enable_color_blend_() {
  return rlEnableColorBlend();
}

// [[Rcpp::export]]
void rl_disable_color_blend_() {
  return rlDisableColorBlend();
}

// [[Rcpp::export]]
void rl_enable_depth_test_() {
  return rlEnableDepthTest();
}

// [[Rcpp::export]]
void rl_disable_depth_test_() {
  return rlDisableDepthTest();
}

// [[Rcpp::export]]
void rl_enable_depth_mask_() {
  return rlEnableDepthMask();
}

// [[Rcpp::export]]
void rl_disable_depth_mask_() {
  return rlDisableDepthMask();
}

// [[Rcpp::export]]
void rl_enable_backface_culling_() {
  return rlEnableBackfaceCulling();
}

// [[Rcpp::export]]
void rl_disable_backface_culling_() {
  return rlDisableBackfaceCulling();
}

// [[Rcpp::export]]
void rl_color_mask_(bool r, bool g, bool b, bool a) {
  return rlColorMask(r, g, b, a);
}

// [[Rcpp::export]]
void rl_set_cull_face_(int mode) {
  return rlSetCullFace(mode);
}

// [[Rcpp::export]]
void rl_enable_scissor_test_() {
  return rlEnableScissorTest();
}

// [[Rcpp::export]]
void rl_disable_scissor_test_() {
  return rlDisableScissorTest();
}

// [[Rcpp::export]]
void rl_scissor_(int x, int y, int width, int height) {
  return rlScissor(x, y, width, height);
}

// [[Rcpp::export]]
void rl_enable_point_mode_() {
  return rlEnablePointMode();
}

// [[Rcpp::export]]
void rl_disable_point_mode_() {
  return rlDisablePointMode();
}

// [[Rcpp::export]]
void rl_set_point_size_(float size) {
  return rlSetPointSize(size);
}

// [[Rcpp::export]]
float rl_get_point_size_() {
  return rlGetPointSize();
}

// [[Rcpp::export]]
void rl_enable_wire_mode_() {
  return rlEnableWireMode();
}

// [[Rcpp::export]]
void rl_disable_wire_mode_() {
  return rlDisableWireMode();
}

// [[Rcpp::export]]
void rl_set_line_width_(float width) {
  return rlSetLineWidth(width);
}

// [[Rcpp::export]]
float rl_get_line_width_() {
  return rlGetLineWidth();
}

// [[Rcpp::export]]
void rl_enable_smooth_lines_() {
  return rlEnableSmoothLines();
}

// [[Rcpp::export]]
void rl_disable_smooth_lines_() {
  return rlDisableSmoothLines();
}

// [[Rcpp::export]]
void rl_enable_stereo_render_() {
  return rlEnableStereoRender();
}

// [[Rcpp::export]]
void rl_disable_stereo_render_() {
  return rlDisableStereoRender();
}

// [[Rcpp::export]]
bool rl_is_stereo_render_enabled_() {
  return rlIsStereoRenderEnabled();
}

// [[Rcpp::export]]
void rl_clear_color_(unsigned int r, unsigned int g, unsigned int b, unsigned int a) {
  return rlClearColor(r, g, b, a);
}

// [[Rcpp::export]]
void rl_clear_screen_buffers_() {
  return rlClearScreenBuffers();
}

// [[Rcpp::export]]
void rl_check_errors_() {
  return rlCheckErrors();
}

// [[Rcpp::export]]
void rl_set_blend_mode_(int mode) {
  return rlSetBlendMode(mode);
}

// [[Rcpp::export]]
void rl_set_blend_factors_(int gl_src_factor, int gl_dst_factor, int gl_equation) {
  return rlSetBlendFactors(gl_src_factor, gl_dst_factor, gl_equation);
}

// [[Rcpp::export]]
void rl_set_blend_factors_separate_(int gl_src_rgb, int gl_dst_rgb, int gl_src_alpha, int gl_dst_alpha, int gl_eq_rgb, int gl_eq_alpha) {
  return rlSetBlendFactorsSeparate(gl_src_rgb, gl_dst_rgb, gl_src_alpha, gl_dst_alpha, gl_eq_rgb, gl_eq_alpha);
}

// [[Rcpp::export]]
void rl_gl_init_(int width, int height) {
  return rlglInit(width, height);
}

// [[Rcpp::export]]
void rl_gl_close_() {
  return rlglClose();
}

// [[Rcpp::export]]
int rl_get_version_() {
  return rlGetVersion();
}

// [[Rcpp::export]]
void rl_set_framebuffer_width_(int width) {
  return rlSetFramebufferWidth(width);
}

// [[Rcpp::export]]
int rl_get_framebuffer_width_() {
  return rlGetFramebufferWidth();
}

// [[Rcpp::export]]
void rl_set_framebuffer_height_(int height) {
  return rlSetFramebufferHeight(height);
}

// [[Rcpp::export]]
int rl_get_framebuffer_height_() {
  return rlGetFramebufferHeight();
}

// [[Rcpp::export]]
unsigned int rl_get_texture_id_default_() {
  return rlGetTextureIdDefault();
}

// [[Rcpp::export]]
unsigned int rl_get_shader_id_default_() {
  return rlGetShaderIdDefault();
}

// [[Rcpp::export]]
void rl_draw_render_batch_active_() {
  return rlDrawRenderBatchActive();
}

// [[Rcpp::export]]
bool rl_check_render_batch_limit_(int v_count) {
  return rlCheckRenderBatchLimit(v_count);
}

// [[Rcpp::export]]
void rl_set_texture_(unsigned int id) {
  return rlSetTexture(id);
}

// [[Rcpp::export]]
unsigned int rl_load_vertex_array_() {
  return rlLoadVertexArray();
}

// [[Rcpp::export]]
void rl_unload_vertex_array_(unsigned int vao_id) {
  return rlUnloadVertexArray(vao_id);
}

// [[Rcpp::export]]
void rl_unload_vertex_buffer_(unsigned int vbo_id) {
  return rlUnloadVertexBuffer(vbo_id);
}

// [[Rcpp::export]]
void rl_set_vertex_attribute_(unsigned int index, int comp_size, int type, bool normalized, int stride, int offset) {
  return rlSetVertexAttribute(index, comp_size, type, normalized, stride, offset);
}

// [[Rcpp::export]]
void rl_set_vertex_attribute_divisor_(unsigned int index, int divisor) {
  return rlSetVertexAttributeDivisor(index, divisor);
}

// [[Rcpp::export]]
void rl_draw_vertex_array_(int offset, int count) {
  return rlDrawVertexArray(offset, count);
}

// [[Rcpp::export]]
void rl_draw_vertex_array_instanced_(int offset, int count, int instances) {
  return rlDrawVertexArrayInstanced(offset, count, instances);
}

// [[Rcpp::export]]
unsigned int rl_load_texture_depth_(int width, int height, bool use_render_buffer) {
  return rlLoadTextureDepth(width, height, use_render_buffer);
}

// [[Rcpp::export]]
const char * rl_get_pixel_format_name_(unsigned int format) {
  return rlGetPixelFormatName(format);
}

// [[Rcpp::export]]
void rl_unload_texture_(unsigned int id) {
  return rlUnloadTexture(id);
}

// [[Rcpp::export]]
unsigned int rl_load_framebuffer_() {
  return rlLoadFramebuffer();
}

// [[Rcpp::export]]
void rl_framebuffer_attach_(unsigned int id, unsigned int tex_id, int attach_type, int tex_type, int mip_level) {
  return rlFramebufferAttach(id, tex_id, attach_type, tex_type, mip_level);
}

// [[Rcpp::export]]
bool rl_framebuffer_complete_(unsigned int id) {
  return rlFramebufferComplete(id);
}

// [[Rcpp::export]]
void rl_unload_framebuffer_(unsigned int id) {
  return rlUnloadFramebuffer(id);
}

// [[Rcpp::export]]
void rl_resize_framebuffer_(int width, int height) {
  return rlResizeFramebuffer(width, height);
}

// [[Rcpp::export]]
unsigned int rl_load_shader_(const char * code, int type) {
  return rlLoadShader(code, type);
}

// [[Rcpp::export]]
unsigned int rl_load_shader_program_(const char * vs_code, const char * fs_code) {
  return rlLoadShaderProgram(vs_code, fs_code);
}

// [[Rcpp::export]]
unsigned int rl_load_shader_program_ex_(unsigned int vs_id, unsigned int fs_id) {
  return rlLoadShaderProgramEx(vs_id, fs_id);
}

// [[Rcpp::export]]
unsigned int rl_load_shader_program_compute_(unsigned int cs_id) {
  return rlLoadShaderProgramCompute(cs_id);
}

// [[Rcpp::export]]
void rl_unload_shader_(unsigned int id) {
  return rlUnloadShader(id);
}

// [[Rcpp::export]]
void rl_unload_shader_program_(unsigned int id) {
  return rlUnloadShaderProgram(id);
}

// [[Rcpp::export]]
int rl_get_location_uniform_(unsigned int id, const char * uniform_name) {
  return rlGetLocationUniform(id, uniform_name);
}

// [[Rcpp::export]]
int rl_get_location_attrib_(unsigned int id, const char * attrib_name) {
  return rlGetLocationAttrib(id, attrib_name);
}

// [[Rcpp::export]]
void rl_set_uniform_matrix_(int loc_index, RaylibMatrix mat) {
  return rlSetUniformMatrix(loc_index, mat);
}

// [[Rcpp::export]]
void rl_set_uniform_sampler_(int loc_index, unsigned int texture_id) {
  return rlSetUniformSampler(loc_index, texture_id);
}

// [[Rcpp::export]]
void rl_compute_shader_dispatch_(unsigned int group_x, unsigned int group_y, unsigned int group_z) {
  return rlComputeShaderDispatch(group_x, group_y, group_z);
}

// [[Rcpp::export]]
void rl_unload_shader_buffer_(unsigned int ssbo_id) {
  return rlUnloadShaderBuffer(ssbo_id);
}

// [[Rcpp::export]]
void rl_bind_shader_buffer_(unsigned int id, unsigned int index) {
  return rlBindShaderBuffer(id, index);
}

// [[Rcpp::export]]
void rl_copy_shader_buffer_(unsigned int dest_id, unsigned int src_id, unsigned int dest_offset, unsigned int src_offset, unsigned int count) {
  return rlCopyShaderBuffer(dest_id, src_id, dest_offset, src_offset, count);
}

// [[Rcpp::export]]
unsigned int rl_get_shader_buffer_size_(unsigned int id) {
  return rlGetShaderBufferSize(id);
}

// [[Rcpp::export]]
void rl_bind_image_texture_(unsigned int id, unsigned int index, int format, bool readonly) {
  return rlBindImageTexture(id, index, format, readonly);
}

// [[Rcpp::export]]
RaylibMatrix rl_get_matrix_modelview_() {
  return rlGetMatrixModelview();
}

// [[Rcpp::export]]
RaylibMatrix rl_get_matrix_projection_() {
  return rlGetMatrixProjection();
}

// [[Rcpp::export]]
RaylibMatrix rl_get_matrix_transform_() {
  return rlGetMatrixTransform();
}

// [[Rcpp::export]]
RaylibMatrix rl_get_matrix_projection_stereo_(int eye) {
  return rlGetMatrixProjectionStereo(eye);
}

// [[Rcpp::export]]
RaylibMatrix rl_get_matrix_view_offset_stereo_(int eye) {
  return rlGetMatrixViewOffsetStereo(eye);
}

// [[Rcpp::export]]
void rl_set_matrix_projection_(RaylibMatrix proj) {
  return rlSetMatrixProjection(proj);
}

// [[Rcpp::export]]
void rl_set_matrix_modelview_(RaylibMatrix view) {
  return rlSetMatrixModelview(view);
}

// [[Rcpp::export]]
void rl_set_matrix_projection_stereo_(RaylibMatrix right, RaylibMatrix left) {
  return rlSetMatrixProjectionStereo(right, left);
}

// [[Rcpp::export]]
void rl_set_matrix_view_offset_stereo_(RaylibMatrix right, RaylibMatrix left) {
  return rlSetMatrixViewOffsetStereo(right, left);
}

// [[Rcpp::export]]
void rl_load_draw_cube_() {
  return rlLoadDrawCube();
}

// [[Rcpp::export]]
void rl_load_draw_quad_() {
  return rlLoadDrawQuad();
}

