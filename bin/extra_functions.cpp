//' Coerce a string or a number to a color
//'
//' @param x Object to be coerced. Can be a valid R color (see `colors()`) or a hexademical.
//'
//' @return A color
//' @family color functions
//' @export
// [[Rcpp::export]]
Color as_color(Color x) {
  return x;
}

// [[Rcpp::export]]
void set_shader_value_float_(Shader shader, int loc_index, float &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_FLOAT);
}

// [[Rcpp::export]]
void set_shader_value_vector_2_(Shader shader, int loc_index, Vector2 &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_VEC2);
}

// [[Rcpp::export]]
void set_shader_value_vector_3_(Shader shader, int loc_index, Vector3 &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_VEC3);
}

// [[Rcpp::export]]
void set_shader_value_vector_4_(Shader shader, int loc_index, Vector4 &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_VEC4);
}

// [[Rcpp::export]]
Font load_font_ex_(const char * file_name, int font_size) {
  return LoadFontEx(file_name, font_size, 0, 0);
}

// [[Rcpp::export]]
Camera3D update_camera_(Camera3D camera) {
  UpdateCamera(&camera);
  return camera;
}

//' @export
// [[Rcpp::export]]
void set_model_texture(Model model, int material_id, int material_map_index, Texture texture) {
  model.materials[material_id].maps[material_map_index].texture = texture;
}

// [[Rcpp::export]]
const char * raylib_version_() {
  return RAYLIB_VERSION;
}
