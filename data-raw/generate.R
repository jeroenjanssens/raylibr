#!/usr/bin/env Rscript
# Code generator for raylibr
# Reads raylib_api.json and generates C++ and R binding code.
#
# Usage: Rscript data-raw/generate.R
#   Then: Rcpp::compileAttributes()

library(jsonlite)

api <- fromJSON("data-raw/raylib_api.json")

# --- Configuration -----------------------------------------------------------

# Type mappings: Raylib C type -> list(cpp, r_check, r_label, r_param_doc)
type_map <- list(
  "int"            = list(cpp = "int",           check = "is_int",                label = "An integer"),
  "unsigned int"   = list(cpp = "unsigned int",  check = "is_unsigned_int",       label = "A non-negative integer"),
  "float"          = list(cpp = "float",         check = "is_float",             label = "A number"),
  "double"         = list(cpp = "double",        check = "is_float",             label = "A number"),
  "bool"           = list(cpp = "bool",          check = "is_bool",              label = "A logical"),
  "const char *"   = list(cpp = "const char *",  check = "is_const_char_pointer", label = "A string"),
  "char *"         = list(cpp = "const char *",  check = "is_const_char_pointer", label = "A string"),
  "unsigned char"  = list(cpp = "unsigned int",  check = "is_unsigned_char",      label = "A non-negative integer (0-255)"),
  "Color"          = list(cpp = "Color",         check = "is_color",             label = "A color"),
  "Vector2"        = list(cpp = "Vector2",       check = "is_vector_2",          label = "A numeric vector of length 2"),
  "Vector3"        = list(cpp = "Vector3",       check = "is_vector_3",          label = "A numeric vector of length 3"),
  "Vector4"        = list(cpp = "Vector4",       check = "is_vector_4",          label = "A numeric vector of length 4"),
  "Quaternion"     = list(cpp = "Vector4",       check = "is_vector_4",          label = "A numeric vector of length 4"),
  "Matrix"         = list(cpp = "RaylibMatrix",  check = "is_raylib_matrix",     label = "A 4x4 numeric matrix"),
  "Rectangle"      = list(cpp = "Rectangle",     check = "is_rectangle",         label = "A rectangle"),
  "Image"          = list(cpp = "Image",         check = "is_image",             label = "An image"),
  "Texture2D"      = list(cpp = "Texture2D",     check = "is_texture",           label = "A texture"),
  "Texture"        = list(cpp = "Texture2D",     check = "is_texture",           label = "A texture"),
  "RenderTexture2D"= list(cpp = "RenderTexture2D", check = "is_render_texture",  label = "A render texture"),
  "RenderTexture"  = list(cpp = "RenderTexture2D", check = "is_render_texture",  label = "A render texture"),
  "Font"           = list(cpp = "Font",          check = "is_font",              label = "A font"),
  "Camera3D"       = list(cpp = "Camera3D",      check = "is_camera_3d",         label = "A camera_3d"),
  "Camera"         = list(cpp = "Camera3D",      check = "is_camera_3d",         label = "A camera_3d"),
  "Camera2D"       = list(cpp = "Camera2D",      check = "is_camera_2d",         label = "A camera_2d"),
  "Shader"         = list(cpp = "Shader",        check = "is_shader",            label = "A shader"),
  "Ray"            = list(cpp = "Ray",           check = "is_ray",               label = "A ray"),
  "RayCollision"   = list(cpp = "RayCollision",  check = "is_ray_collision",     label = "A ray_collision"),
  "BoundingBox"    = list(cpp = "BoundingBox",   check = "is_bounding_box",      label = "A bounding_box"),
  "Mesh"           = list(cpp = "Mesh",          check = "is_mesh",              label = "A mesh"),
  "Material"       = list(cpp = "Material",      check = "is_material",          label = "A material"),
  "MaterialMap"    = list(cpp = "MaterialMap",    check = "is_material_map",      label = "A material_map"),
  "Model"          = list(cpp = "Model",         check = "is_model",             label = "A model"),
  "ModelAnimation" = list(cpp = "ModelAnimation", check = "is_model_animation",  label = "A model_animation"),
  "Transform"      = list(cpp = "Transform",     check = "is_transform",         label = "A transform"),
  "BoneInfo"       = list(cpp = "BoneInfo",      check = "is_bone_info",         label = "A bone_info"),
  "Wave"           = list(cpp = "Wave",          check = "is_wave",              label = "A wave"),
  "Sound"          = list(cpp = "Sound",         check = "is_sound",             label = "A sound"),
  "Music"          = list(cpp = "Music",         check = "is_music",             label = "A music"),
  "AudioStream"    = list(cpp = "AudioStream",   check = "is_audio_stream",      label = "An audio_stream"),
  "NPatchInfo"     = list(cpp = "NPatchInfo",    check = "is_npatch_info",       label = "An npatch_info"),
  "GlyphInfo"      = list(cpp = "GlyphInfo",     check = "is_glyph_info",        label = "A glyph_info"),
  "VrDeviceInfo"   = list(cpp = "VrDeviceInfo",  check = "is_vr_device_info",    label = "A vr_device_info"),
  "VrStereoConfig" = list(cpp = "VrStereoConfig", check = "is_vr_stereo_config", label = "A vr_stereo_config")
)

# Return type mappings
return_map <- list(
  "void"           = list(r_doc = NULL),
  "bool"           = list(r_doc = "A logical"),
  "int"            = list(r_doc = "An integer"),
  "unsigned int"   = list(r_doc = "An integer"),
  "float"          = list(r_doc = "A number"),
  "double"         = list(r_doc = "A number"),
  "long"           = list(r_doc = "A number"),
  "const char *"   = list(r_doc = "A string"),
  "char *"         = list(r_doc = "A string"),
  "Color"          = list(r_doc = "A color"),
  "Vector2"        = list(r_doc = "A numeric vector of length 2"),
  "Vector3"        = list(r_doc = "A numeric vector of length 3"),
  "Vector4"        = list(r_doc = "A numeric vector of length 4"),
  "Rectangle"      = list(r_doc = "A rectangle"),
  "Image"          = list(r_doc = "An image"),
  "Texture2D"      = list(r_doc = "A texture"),
  "Texture"        = list(r_doc = "A texture"),
  "RenderTexture2D"= list(r_doc = "A render texture"),
  "RenderTexture"  = list(r_doc = "A render texture"),
  "Font"           = list(r_doc = "A font"),
  "Camera3D"       = list(r_doc = "A camera_3d"),
  "Camera2D"       = list(r_doc = "A camera_2d"),
  "Shader"         = list(r_doc = "A shader"),
  "Ray"            = list(r_doc = "A ray"),
  "RayCollision"   = list(r_doc = "A ray_collision"),
  "BoundingBox"    = list(r_doc = "A bounding_box"),
  "Mesh"           = list(r_doc = "A mesh"),
  "Material"       = list(r_doc = "A material"),
  "MaterialMap"    = list(r_doc = "A material_map"),
  "Model"          = list(r_doc = "A model"),
  "ModelAnimation" = list(r_doc = "A model_animation"),
  "Transform"      = list(r_doc = "A transform"),
  "Wave"           = list(r_doc = "A wave"),
  "Sound"          = list(r_doc = "A sound"),
  "Music"          = list(r_doc = "A music"),
  "AudioStream"    = list(r_doc = "An audio_stream"),
  "NPatchInfo"     = list(r_doc = "An npatch_info"),
  "GlyphInfo"      = list(r_doc = "A glyph_info"),
  "Matrix"         = list(r_doc = "A 4x4 numeric matrix"),
  "Quaternion"     = list(r_doc = "A numeric vector of length 4"),
  "unsigned char"  = list(r_doc = "An integer"),
  "BoneInfo"       = list(r_doc = "A bone_info"),
  "VrDeviceInfo"   = list(r_doc = "A vr_device_info"),
  "VrStereoConfig" = list(r_doc = "A vr_stereo_config"),
  "Camera"         = list(r_doc = "A camera_3d")
)

# Functions to skip (pointer params we can't auto-wrap, internal, or manually handled)
skip_functions <- c(
  # Manually handled in R/extra.R or src/manual_wrappers.cpp
  "SetShaderValue", "SetShaderValueV",
  "LoadFontEx",
  "UpdateCamera", "UpdateCameraPro",
  "DrawLineStrip", "DrawTriangleFan", "DrawTriangleStrip",
  "DrawTriangleStrip3D",
  "DrawSplineLinear", "DrawSplineBasis", "DrawSplineCatmullRom",
  "DrawSplineBezierQuadratic", "DrawSplineBezierCubic",
  "WaveCrop", "WaveFormat",
  "SetMaterialTexture", "SetModelMeshMaterial",
  "GenMeshTangents", "UploadMesh",
  "ImageDrawLineEx", "ImageDrawTriangle",
  "DrawMeshInstanced",
  # Callback / function pointer params (can't wrap)
  "SetTraceLogCallback", "SetLoadFileDataCallback", "SetSaveFileDataCallback",
  "SetLoadFileTextCallback", "SetSaveFileTextCallback",
  "SetAudioStreamCallback",
  "AttachAudioStreamProcessor", "DetachAudioStreamProcessor",
  "AttachAudioMixedProcessor", "DetachAudioMixedProcessor",
  # Memory management (not meaningful in R)
  "MemAlloc", "MemRealloc", "MemFree",
  # Pointer-heavy functions that need more complex manual handling
  "SetWindowIcons",
  "LoadRandomSequence", "UnloadRandomSequence",
  "LoadFileData", "UnloadFileData", "SaveFileData",
  "ExportDataAsCode",
  "LoadImageSvg", "LoadImageAnimFromMemory", "LoadImageFromMemory",
  "GetImagePalette",
  "LoadFontFromMemory", "LoadFontData", "GenImageFontAtlas", "UnloadFontData",
  "TextFormat", "TextJoin", "TextSplit", "TextAppend",
  "LoadWaveFromMemory", "LoadMusicStreamFromMemory",
  "LoadDroppedFiles", "UnloadDroppedFiles",
  "LoadDirectoryFiles", "LoadDirectoryFilesEx", "UnloadDirectoryFiles",
  "LoadAutomationEventList", "UnloadAutomationEventList",
  "ExportAutomationEventList", "SetAutomationEventList",
  "PlayAutomationEvent",
  "EncodeDataBase64", "DecodeDataBase64",
  "ComputeCRC32", "ComputeMD5", "ComputeSHA1", "ComputeSHA256",
  "LoadUTF8", "LoadCodepoints", "UnloadCodepoints",
  "GetCodepoint", "GetCodepointNext", "GetCodepointPrevious",
  "CodepointToUTF8",
  "DrawTextCodepoints",
  "UpdateMeshBuffer",
  "LoadModelAnimations", "UnloadModelAnimations",
  "UpdateModelAnimationBones",
  "ImageKernelConvolution",
  "ImageDrawTriangleEx", "ImageDrawTriangleLines",
  "ImageDrawTriangleLinesEx", "ImageDrawTriangleFan", "ImageDrawTriangleStrip",
  "LoadWaveSamples", "UnloadWaveSamples",
  "GetWindowHandle",
  "DrawModelPoints",
  # Functions taking non-const char * (need mutable strings)
  "UnloadFileText", "UnloadUTF8", "TextCopy", "TextAppend"
)

# Structs to wrap (with field access). Excludes Vector2/3/4 and Matrix which
# are handled as plain R vectors/matrices.
wrapped_structs <- c(
  "Color", "Rectangle", "Image", "Texture", "RenderTexture",
  "NPatchInfo", "GlyphInfo", "Font", "Camera3D", "Camera2D",
  "Mesh", "Shader", "MaterialMap", "Material", "Transform",
  "BoneInfo", "Model", "ModelAnimation", "Ray", "RayCollision",
  "BoundingBox", "Wave", "AudioStream", "Sound", "Music",
  "VrDeviceInfo", "VrStereoConfig"
)

# Structs that are opaque (wrapped as XPtr but no field access from R)
opaque_structs <- c(
  "Image", "Font", "Mesh", "Shader", "Material", "Model",
  "ModelAnimation", "Wave", "AudioStream", "Sound", "Music",
  "VrDeviceInfo", "VrStereoConfig", "BoneInfo"
)

# Module classification for splitting generated C++ files
module_map <- list(
  core    = c("Init", "Window", "Close", "IsWindow", "Toggle", "Set.*Window",
              "Get.*Window", "GetScreen", "GetRender", "GetMonitor",
              "GetClipboard", "SetClipboard", "ShowCursor", "HideCursor",
              "IsCursor", "Enable", "Disable", "Clear.*Background",
              "BeginDrawing", "EndDrawing", "BeginMode", "EndMode",
              "BeginBlend", "EndBlend", "BeginScissor", "EndScissor",
              "GetCamera", "GetWorld", "SetTarget", "GetFPS", "GetFrame",
              "GetTime", "GetRandom", "SetRandom", "TakeScreenshot",
              "SetTraceLog", "OpenURL", "SetConfigFlags",
              "IsKey", "GetKey", "SetExitKey", "GetChar",
              "IsGamepad", "GetGamepad", "SetGamepad",
              "IsMouse", "GetMouse", "SetMouse",
              "GetTouch", "IsGesture", "GetGesture",
              "SetCamera", "WaitTime",
              "File", "Directory", "IsFile", "GetFile", "GetPrev",
              "GetWorking", "GetApp", "Change", "IsPath",
              "SaveStorage", "LoadStorage",
              "CompressData", "DecompressData",
              "Automation", "UnloadFile", "MakeDirectory",
              "LoadFile", "SaveFile",
              "GetShader", "SetShaderValue", "LoadShader", "UnloadShader",
              "BeginShader", "EndShader", "IsShader"),
  shapes  = c("SetShapes", "DrawPixel", "DrawLine", "DrawCircle",
              "DrawEllipse", "DrawRing", "DrawRectangle", "DrawRounded",
              "DrawTriangle", "DrawPoly", "DrawSpline", "GetSpline",
              "CheckCollision", "GetCollision"),
  textures= c("LoadImage", "UnloadImage", "ExportImage", "IsImage",
              "GenImage", "ImageCopy", "ImageFrom", "ImageTo",
              "ImageFormat", "ImageAlpha", "ImageResize", "ImageFlip",
              "ImageRotate", "ImageColor", "ImageMipmaps", "ImageDither",
              "ImageClear", "ImageDraw", "GetImage", "ImageBorder",
              "LoadTexture", "UnloadTexture", "IsTexture", "UpdateTexture",
              "SetTexture", "GenTexture",
              "LoadRenderTexture", "UnloadRenderTexture", "IsRenderTexture",
              "BeginTexture", "EndTexture",
              "Color"),
  text    = c("GetFont", "LoadFont", "UnloadFont", "IsFont",
              "DrawText", "MeasureText", "DrawFPS",
              "Text", "GetGlyph", "GetCodepoint", "UnloadUTF8"),
  models  = c("DrawLine3D", "DrawPoint3D", "DrawCircle3D",
              "DrawTriangle3D", "DrawCube", "DrawSphere",
              "DrawCylinder", "DrawCapsule", "DrawPlane", "DrawGrid",
              "DrawRay", "DrawBillboard",
              "LoadModel", "UnloadModel", "IsModel",
              "GetModel", "SetModel",
              "DrawModel", "DrawMesh",
              "GenMesh", "ExportMesh", "GetMeshBounding",
              "LoadMaterial", "UnloadMaterial", "IsMaterial",
              "GetRayCollision"),
  audio   = c("InitAudio", "CloseAudio", "IsAudio",
              "LoadWave", "UnloadWave", "IsWave", "ExportWave",
              "LoadSound", "UnloadSound", "IsSound", "UpdateSound",
              "PlaySound", "StopSound", "PauseSound", "ResumeSound",
              "SetSound", "GetSound",
              "LoadMusic", "UnloadMusic", "IsMusic", "UpdateMusic",
              "PlayMusic", "StopMusic", "PauseMusic", "ResumeMusic",
              "SetMusic", "GetMusic", "SeekMusic",
              "LoadAudio", "UnloadAudio", "UpdateAudio",
              "PlayAudio", "StopAudio", "PauseAudio", "ResumeAudio",
              "SetAudio", "GetAudio", "IsAudioStream",
              "SetMaster", "GetMaster")
)


# --- Helper functions --------------------------------------------------------

pascal_to_snake <- function(x) {
  x <- gsub("FPS", "Fps", x)
  x <- gsub("([a-z0-9])([A-Z])", "\\1_\\2", x)
  x <- gsub("([A-Z]+)([A-Z][a-z])", "\\1_\\2", x)
  x <- gsub("(\\d)_D$", "_\\1d", x)
  x <- gsub("(\\d)D$", "_\\1d", x)
  tolower(x)
}

field_to_snake <- function(x) {
  pascal_to_snake(x)
}

classify_function <- function(name) {
  for (mod in names(module_map)) {
    for (pat in module_map[[mod]]) {
      if (grepl(paste0("^", pat), name)) return(mod)
    }
  }
  "core"
}

get_cpp_type <- function(c_type) {
  if (c_type %in% names(type_map)) return(type_map[[c_type]]$cpp)
  if (c_type == "long") return("long")
  if (c_type == "Texture2D") return("Texture2D")
  if (c_type == "RenderTexture2D") return("RenderTexture2D")
  c_type
}

can_wrap_param <- function(c_type) {
  c_type %in% names(type_map)
}

can_wrap_return <- function(c_type) {
  c_type %in% names(return_map) || c_type == "long"
}

can_wrap_function <- function(func_row) {
  if (func_row$name %in% skip_functions) return(FALSE)
  if (!can_wrap_return(func_row$returnType)) return(FALSE)
  params <- func_row$params[[1]]
  if (is.null(params) || nrow(params) == 0) return(TRUE)
  all(sapply(params$type, can_wrap_param))
}

get_r_class_name <- function(struct_name) {
  pascal_to_snake(struct_name)
}

# --- Vectorization helpers ----------------------------------------------------

is_vectorizable <- function(func_row) {
  grepl("^(Image)?Draw", func_row$name)
}

get_vec_cpp_type <- function(c_type) {
  switch(c_type,
    "int" =, "unsigned int" =, "float" =, "double" =, "unsigned char" = "NumericVector",
    "bool" = "LogicalVector",
    "const char *" =, "char *" = "CharacterVector",
    "Vector2" =, "Vector3" =, "Vector4" =, "Quaternion" = "NumericMatrix",
    "List"
  )
}

get_vec_index_expr <- function(c_type, name) {
  switch(c_type,
    "int" = paste0("(int)", name, "[i]"),
    "unsigned int" = paste0("(unsigned int)", name, "[i]"),
    "float" = paste0("(float)", name, "[i]"),
    "double" = paste0("(double)", name, "[i]"),
    "unsigned char" = paste0("(unsigned char)", name, "[i]"),
    "bool" = paste0("(bool)", name, "[i]"),
    "const char *" =, "char *" = paste0("Rcpp::as<std::string>(", name, "[i]).c_str()"),
    "Vector2" = paste0("Vector2{as<float>(wrap(", name, "(i,0))), as<float>(wrap(", name, "(i,1)))}"),
    "Vector3" = paste0("Vector3{as<float>(wrap(", name, "(i,0))), as<float>(wrap(", name, "(i,1))), as<float>(wrap(", name, "(i,2)))}"),
    "Vector4" =, "Quaternion" = paste0("Vector4{as<float>(wrap(", name, "(i,0))), as<float>(wrap(", name, "(i,1))), as<float>(wrap(", name, "(i,2))), as<float>(wrap(", name, "(i,3)))}"),
    "Color" = paste0("as<Color>(", name, "[i])"),
    {
      cpp_t <- get_cpp_type(c_type)
      paste0("as<", cpp_t, ">(", name, "[i])")
    }
  )
}

get_r_len_expr <- function(c_type, name) {
  switch(c_type,
    "int" =, "unsigned int" =, "float" =, "double" =,
    "bool" =, "unsigned char" =, "const char *" =, "char *" =
      paste0("length(", name, ")"),
    "Vector2" =, "Vector3" =, "Vector4" =, "Quaternion" =
      paste0(".vec_len(", name, ")"),
    "Color" = paste0(".color_len(", name, ")"),
    paste0(".struct_len(", name, ")")
  )
}

get_r_recycle_expr <- function(c_type, name) {
  switch(c_type,
    "int" =, "unsigned int" =, "float" =, "double" =,
    "bool" =, "unsigned char" =, "const char *" =, "char *" =
      paste0("rep(", name, ", length.out = n)"),
    "Vector2" = paste0(".vec_recycle(", name, ", n, 2)"),
    "Vector3" = paste0(".vec_recycle(", name, ", n, 3)"),
    "Vector4" =, "Quaternion" = paste0(".vec_recycle(", name, ", n, 4)"),
    "Color" = paste0(".color_recycle(", name, ", n)"),
    paste0(".struct_recycle(", name, ", n)")
  )
}

build_original_c_sig <- function(func_row) {
  params <- func_row$params[[1]]
  if (is.null(params) || nrow(params) == 0) {
    param_str <- "void"
  } else {
    param_str <- paste(params$type, params$name, collapse = ", ")
  }
  paste0(func_row$returnType, " ", func_row$name, "(", param_str, ");")
}

get_families <- function(func_name, params, return_type) {
  families <- character(0)
  snake <- pascal_to_snake(func_name)
  parts <- strsplit(snake, "_")[[1]]
  if (length(parts) >= 2) {
    families <- c(families, paste(parts[length(parts)], "functions"))
  }
  if (length(parts) >= 1) {
    action <- parts[1]
    if (action %in% c("draw", "load", "unload", "init", "close", "begin",
                       "end", "set", "get", "is", "check", "update",
                       "play", "stop", "pause", "resume", "export")) {
      families <- c(families, paste(action, "functions"))
    }
  }
  unique(families)
}


# --- Generate C++ struct bindings --------------------------------------------

generate_struct_cpp <- function(struct_row) {
  name <- struct_row$name
  fields <- struct_row$fields[[1]]
  snake <- get_r_class_name(name)
  cpp_name <- if (name == "Texture") "Texture2D"
              else if (name == "RenderTexture") "RenderTexture2D"
              else name
  lines <- character(0)

  # Comment with original struct definition
  lines <- c(lines, "////////////////////////////////////////////////////////////////////////////////")
  lines <- c(lines, paste0("// typedef struct ", name, " {"))
  for (i in seq_len(nrow(fields))) {
    lines <- c(lines, paste0("//     ", fields$type[i], " ", fields$name[i],
                              ";", if (nzchar(fields$description[i]))
                                paste0("    // ", fields$description[i]) else ""))
  }
  lines <- c(lines, paste0("// } ", name, ";"))
  lines <- c(lines, "////////////////////////////////////////////////////////////////////////////////")
  lines <- c(lines, "")

  # Rcpp::as and Rcpp::wrap specializations
  # Color has special handling in types.cpp (supports R color names, hex, lists)
  if (name != "Color") {
    lines <- c(lines, "namespace Rcpp {")
    lines <- c(lines, "")
    lines <- c(lines, paste0("  template <> ", cpp_name, " as(SEXP x) {"))
    lines <- c(lines, paste0("    return *XPtr<", cpp_name, ">(x);"))
    lines <- c(lines, "  };")
    lines <- c(lines, "  ")
    lines <- c(lines, paste0("  template <> SEXP wrap(const ", cpp_name, "& x) {"))
    lines <- c(lines, paste0("    ", cpp_name, " *ptr = new ", cpp_name, ";"))
    lines <- c(lines, "    (*ptr) = x;")
    lines <- c(lines, paste0("    XPtr<", cpp_name, ">xptr = XPtr<", cpp_name, ">(ptr, true);"))
    lines <- c(lines, paste0('    xptr.attr("class") = "', snake, '";'))
    lines <- c(lines, "    return xptr;")
    lines <- c(lines, "  };")
    lines <- c(lines, "  ")
    lines <- c(lines, "}")
    lines <- c(lines, "")
  }

  # Constructor and field accessors (only for non-opaque structs)
  if (!(name %in% opaque_structs)) {
    wrappable_fields <- fields[sapply(fields$type, can_wrap_param), , drop = FALSE]
    if (nrow(wrappable_fields) > 0) {
      # Constructor
      ctor_params <- paste(sapply(wrappable_fields$type, get_cpp_type),
                          field_to_snake(wrappable_fields$name), collapse = ", ")
      lines <- c(lines, "// [[Rcpp::export]]")
      lines <- c(lines, paste0(cpp_name, " ", snake, "_(", ctor_params, ") {"))
      lines <- c(lines, paste0("  ", cpp_name, " obj = {};"))
      for (i in seq_len(nrow(wrappable_fields))) {
        lines <- c(lines, paste0("  obj.", wrappable_fields$name[i], " = ",
                                  field_to_snake(wrappable_fields$name[i]), ";"))
      }
      lines <- c(lines, "  return obj;")
      lines <- c(lines, "}")
      lines <- c(lines, "")

      # Getters and setters for each field
      for (i in seq_len(nrow(wrappable_fields))) {
        fname <- wrappable_fields$name[i]
        ftype <- wrappable_fields$type[i]
        fsnake <- field_to_snake(fname)
        cpp_ftype <- get_cpp_type(ftype)

        # Getter
        lines <- c(lines, "// [[Rcpp::export]]")
        lines <- c(lines, paste0(cpp_ftype, " ", snake, "_get_", fsnake, "_(", cpp_name, " obj) {"))
        lines <- c(lines, paste0("  return obj.", fname, ";"))
        lines <- c(lines, "}")
        lines <- c(lines, "")

        # Setter
        lines <- c(lines, "// [[Rcpp::export]]")
        lines <- c(lines, paste0(cpp_name, " ", snake, "_set_", fsnake, "_(", cpp_name, " obj, ", cpp_ftype, " ", fsnake, ") {"))
        lines <- c(lines, paste0("  obj.", fname, " = ", fsnake, ";"))
        lines <- c(lines, "  return obj;")
        lines <- c(lines, "}")
        lines <- c(lines, "")
      }
    }
  }

  paste(lines, collapse = "\n")
}


# --- Generate C++ function wrappers ------------------------------------------

generate_function_cpp <- function(func_row) {
  name <- func_row$name
  snake <- pascal_to_snake(name)
  ret_type <- func_row$returnType
  params <- func_row$params[[1]]

  cpp_ret <- get_cpp_type(ret_type)

  if (is.null(params) || nrow(params) == 0) {
    param_str <- ""
    call_str <- ""
  } else {
    cpp_types <- sapply(params$type, get_cpp_type)
    param_names <- field_to_snake(params$name)
    param_str <- paste(cpp_types, param_names, collapse = ", ")
    call_str <- paste(param_names, collapse = ", ")
  }

  lines <- c(
    "// [[Rcpp::export]]",
    paste0(cpp_ret, " ", snake, "_(", param_str, ") {"),
    paste0("  return ", name, "(", call_str, ");"),
    "}"
  )

  paste(lines, collapse = "\n")
}


# --- Generate C++ vectorized function wrappers --------------------------------

generate_function_cpp_vectorized <- function(func_row) {
  name <- func_row$name
  snake <- pascal_to_snake(name)
  params <- func_row$params[[1]]

  if (is.null(params) || nrow(params) == 0) return(NULL)

  param_names <- field_to_snake(params$name)
  vec_types <- sapply(params$type, get_vec_cpp_type)
  param_str <- paste(vec_types, param_names, collapse = ", ")

  first_type <- params$type[1]
  if (first_type %in% c("Vector2", "Vector3", "Vector4", "Quaternion")) {
    loop_bound <- paste0(param_names[1], ".nrow()")
  } else {
    loop_bound <- paste0(param_names[1], ".length()")
  }

  call_args <- sapply(seq_len(nrow(params)), function(i) {
    get_vec_index_expr(params$type[i], param_names[i])
  })
  call_str <- paste(call_args, collapse = ", ")

  lines <- c(
    "// [[Rcpp::export]]",
    paste0("void ", snake, "_vectorized_(", param_str, ") {"),
    paste0("  for (int i = 0; i < ", loop_bound, "; i++) {"),
    paste0("    ", name, "(", call_str, ");"),
    "  }",
    "}"
  )

  paste(lines, collapse = "\n")
}


# --- Generate R function wrappers --------------------------------------------

generate_function_r <- function(func_row) {
  name <- func_row$name
  snake <- pascal_to_snake(name)
  ret_type <- func_row$returnType
  params <- func_row$params[[1]]
  desc <- func_row$description

  lines <- character(0)

  # Roxygen header
  title <- gsub("([a-z])([A-Z])", "\\1 \\2", gsub("^(Get|Set|Is|Draw|Load|Unload|Begin|End|Init|Close|Check|Update|Play|Stop|Pause|Resume|Export|Toggle|Enable|Disable|Clear|Restore|Maximize|Minimize|Show|Hide|Take|Open)", "\\1 ", name))
  title <- paste(toupper(substring(title, 1, 1)), substring(title, 2), sep = "")
  title <- trimws(gsub("  +", " ", title))
  # Use the actual snake_case name as title
  title_words <- strsplit(snake, "_")[[1]]
  title <- paste(toupper(substring(title_words, 1, 1)),
                 substring(title_words, 2), sep = "", collapse = " ")

  lines <- c(lines, paste0("#' ", title))
  lines <- c(lines, "#'")
  lines <- c(lines, paste0("#' ", desc, "."))
  lines <- c(lines, "#'")

  # Params
  if (!is.null(params) && nrow(params) > 0) {
    for (i in seq_len(nrow(params))) {
      ptype <- params$type[i]
      pname_snake <- field_to_snake(params$name[i])
      if (ptype %in% names(type_map)) {
        label <- type_map[[ptype]]$label
      } else {
        label <- paste("A", pascal_to_snake(ptype))
      }
      lines <- c(lines, paste0("#' @param ", pname_snake, " ", label, "."))
    }
  }

  lines <- c(lines, "#'")

  # Return
  if (ret_type %in% names(return_map) && !is.null(return_map[[ret_type]]$r_doc)) {
    lines <- c(lines, paste0("#' @return ", return_map[[ret_type]]$r_doc))
    lines <- c(lines, "#'")
  }

  # Note with original C signature
  lines <- c(lines, "#' @note This function has been auto-generated from the following Raylib function definition:")
  lines <- c(lines, "#'")
  lines <- c(lines, "#' ```")
  lines <- c(lines, paste0("#' ", build_original_c_sig(func_row)))
  lines <- c(lines, "#' ```")
  lines <- c(lines, "#'")

  # Family tags
  families <- get_families(name, params, ret_type)
  for (fam in families) {
    lines <- c(lines, paste0("#' @family ", fam))
  }
  lines <- c(lines, "#'")
  lines <- c(lines, "#'")
  lines <- c(lines, "#' @export")

  # Function body
  vectorized <- is_vectorizable(func_row)

  if (is.null(params) || nrow(params) == 0) {
    lines <- c(lines, paste0(snake, " <- function() {"))
    lines <- c(lines, paste0("  ", snake, "_()"))
  } else {
    param_names <- field_to_snake(params$name)
    lines <- c(lines, paste0(snake, " <- function(", paste(param_names, collapse = ", "), ") {"))

    # Vectorized dispatch
    if (vectorized) {
      len_exprs <- sapply(seq_len(nrow(params)), function(i) {
        get_r_len_expr(params$type[i], param_names[i])
      })
      lines <- c(lines, paste0("  lens <- c(", paste(len_exprs, collapse = ", "), ")"))
      lines <- c(lines, "  if (any(lens > 1)) {")
      lines <- c(lines, "    n <- max(lens)")
      for (i in seq_len(nrow(params))) {
        recycle <- get_r_recycle_expr(params$type[i], param_names[i])
        lines <- c(lines, paste0("    ", param_names[i], " <- ", recycle))
      }
      lines <- c(lines, paste0("    return(", snake, "_vectorized_(",
                                paste(param_names, collapse = ", "), "))"))
      lines <- c(lines, "  }")
    }

    # Validation
    for (i in seq_len(nrow(params))) {
      ptype <- params$type[i]
      pname <- param_names[i]
      if (ptype %in% names(type_map)) {
        check <- type_map[[ptype]]$check
        label <- type_map[[ptype]]$label
        label_lower <- tolower(label)
        lines <- c(lines, paste0("  if (!", check, "(", pname, ")) abort(paste0('`",
                                  pname, "` must be ", label_lower,
                                  ", not ', friendly_typeof(", pname, "), '.'), call = NULL)"))
      }
    }

    lines <- c(lines, paste0("  ", snake, "_(", paste(param_names, collapse = ", "), ")"))
  }

  lines <- c(lines, "}")
  lines <- c(lines, "")

  paste(lines, collapse = "\n")
}


# --- Generate R struct class files -------------------------------------------

generate_struct_r <- function(struct_row) {
  name <- struct_row$name
  fields <- struct_row$fields[[1]]
  snake <- get_r_class_name(name)

  if (name %in% opaque_structs) {
    # Opaque structs: just is_* function and minimal class
    lines <- c(
      paste0("#' @export"),
      paste0("is_", snake, " <- function(x) {"),
      paste0('  inherits(x, "', snake, '")'),
      "}"
    )
    return(paste(lines, collapse = "\n"))
  }

  wrappable_fields <- fields[sapply(fields$type, can_wrap_param), , drop = FALSE]
  if (nrow(wrappable_fields) == 0) return(NULL)

  field_snakes <- field_to_snake(wrappable_fields$name)
  lines <- character(0)

  # is_* type predicate
  lines <- c(lines, "# Do not edit by hand.")
  lines <- c(lines, "")
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0("is_", snake, " <- function(x) {"))
  lines <- c(lines, paste0('  inherits(x, "', snake, '")'))
  lines <- c(lines, "}")
  lines <- c(lines, "")

  # Roxygen for constructor
  lines <- c(lines, "")
  lines <- c(lines, paste0("#' ", gsub("_", " ", snake) |> tools::toTitleCase()))
  lines <- c(lines, "#'")
  lines <- c(lines, paste0("#' Create a new ", snake, " object."))
  lines <- c(lines, "#'")

  for (i in seq_len(nrow(wrappable_fields))) {
    ftype <- wrappable_fields$type[i]
    fname <- field_snakes[i]
    fdesc <- wrappable_fields$description[i]
    label <- if (ftype %in% names(type_map)) type_map[[ftype]]$label else "A value"
    lines <- c(lines, paste0("#' @param ", fname, " ", label, ". ", fdesc, "."))
  }

  lines <- c(lines, "#'")
  lines <- c(lines, paste0("#' @return A ", snake))
  lines <- c(lines, "#'")
  lines <- c(lines, "#' @note This class has been auto-generated from the following Raylib struct definition:")
  lines <- c(lines, "#'")
  lines <- c(lines, "#' ```")
  lines <- c(lines, paste0("#' typedef struct ", name, " {"))
  for (i in seq_len(nrow(fields))) {
    lines <- c(lines, paste0("#'     ", fields$type[i], " ", fields$name[i],
                              ";", if (nzchar(fields$description[i]))
                                paste0("        // ", fields$description[i]) else ""))
  }
  lines <- c(lines, paste0("#' } ", name, ";"))
  lines <- c(lines, "#' ```")
  lines <- c(lines, "#'")
  lines <- c(lines, paste0("#' @rdname ", snake))
  lines <- c(lines, "#'")
  lines <- c(lines, paste0("#' @family ", snake, " functions"))
  lines <- c(lines, "#'")
  lines <- c(lines, "#'")
  lines <- c(lines, "#' @export")

  # Per-field defaults for specific structs
  field_defaults <- list(
    Color = list(a = "255"),
    Camera3D = list(target = "c(0, 0, 0)", up = "c(0, 1, 0)", fovy = "45", projection = "0L")
  )
  defaults <- field_defaults[[name]]

  # Constructor function
  ctor_args <- sapply(field_snakes, function(f) {
    if (!is.null(defaults[[f]])) paste0(f, " = ", defaults[[f]]) else f
  })
  lines <- c(lines, paste0(snake, " <- function(", paste(ctor_args, collapse = ", "), ") {"))
  for (i in seq_len(nrow(wrappable_fields))) {
    ftype <- wrappable_fields$type[i]
    fname <- field_snakes[i]
    if (ftype %in% names(type_map)) {
      check <- type_map[[ftype]]$check
      label <- tolower(type_map[[ftype]]$label)
      lines <- c(lines, paste0("  if (!", check, "(", fname, ")) abort(paste0('`",
                                fname, "` must be ", label, ", not ', friendly_typeof(",
                                fname, "), '.'), call = NULL)"))
    }
  }
  lines <- c(lines, paste0("  ", snake, "_(", paste(field_snakes, collapse = ", "), ")"))
  lines <- c(lines, "}")
  lines <- c(lines, "")

  # Setter dispatch
  lines <- c(lines, paste0(snake, "_set <- function(o, field, value) {"))
  for (i in seq_len(nrow(wrappable_fields))) {
    fname <- field_snakes[i]
    ftype <- wrappable_fields$type[i]
    prefix <- if (i == 1) "  if" else "  } else if"
    lines <- c(lines, paste0(prefix, ' (field == "', fname, '") {'))
    if (ftype %in% names(type_map)) {
      check <- type_map[[ftype]]$check
      label <- tolower(type_map[[ftype]]$label)
      lines <- c(lines, paste0("    if (!", check, "(value)) abort(paste0('`", fname,
                                "` must be ", label, ", not ', friendly_typeof(value), '.'), call = NULL)"))
    }
    lines <- c(lines, paste0("    ", snake, "_set_", fname, "_(o, value)"))
  }
  lines <- c(lines, "  } else {")
  lines <- c(lines, paste0('    abort(paste0("`', snake, '` has no property ", field , "."), call = NULL)'))
  lines <- c(lines, "  }")
  lines <- c(lines, "}")
  lines <- c(lines, "")

  # Getter dispatch
  lines <- c(lines, paste0(snake, "_get <- function(o, field) {"))
  for (i in seq_len(nrow(wrappable_fields))) {
    fname <- field_snakes[i]
    prefix <- if (i == 1) "  if" else "  } else if"
    lines <- c(lines, paste0(prefix, ' (field == "', fname, '") {'))
    lines <- c(lines, paste0("    ", snake, "_get_", fname, "_(o)"))
  }
  lines <- c(lines, "  } else {")
  lines <- c(lines, paste0('    abort(paste0("`', snake, '` has no property ", field , "."), call = NULL)'))
  lines <- c(lines, "  }")
  lines <- c(lines, "}")
  lines <- c(lines, "")

  # S3 methods
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0('"$.', snake, '" <- function(o, field) {'))
  lines <- c(lines, paste0("  ", snake, "_get(o, field)"))
  lines <- c(lines, "}")
  lines <- c(lines, "")
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0('"$<-.', snake, '" <- function(o, field, value) {'))
  lines <- c(lines, paste0("  ", snake, "_set(o, field, value)"))
  lines <- c(lines, "}")
  lines <- c(lines, "")
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0('.DollarNames.', snake, ' <- function(x, pattern) {'))
  lines <- c(lines, paste0('  c(', paste0('"', field_snakes, '"', collapse = ", "), ')'))
  lines <- c(lines, "}")
  lines <- c(lines, "")
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0('"[.', snake, '" <- `$.', snake, '`'))
  lines <- c(lines, "")
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0('"[[.', snake, '" <- `$.', snake, '`'))
  lines <- c(lines, "")
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0('"[<-.', snake, '" <- `$<-.', snake, '`'))
  lines <- c(lines, "")
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0('"[[<-.', snake, '" <- `$<-.', snake, '`'))
  lines <- c(lines, "")

  # print method
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0("print.", snake, " <- function(x, ...) {"))
  lines <- c(lines, "  cat(as.character(x), \"\\n\")")
  lines <- c(lines, "}")
  lines <- c(lines, "")

  # as.character method
  lines <- c(lines, "#' @export")
  lines <- c(lines, paste0("as.character.", snake, " <- function(x, ...) {"))
  lines <- c(lines, "  fields <- .DollarNames(x)")
  lines <- c(lines, '  values <- vapply(fields, function(field) {')
  lines <- c(lines, '    val <- x[[field]]')
  lines <- c(lines, '    paste(as.character(val), collapse = ", ")')
  lines <- c(lines, '  }, character(1))')
  lines <- c(lines, '  res <- paste(fields, values, sep = " = ", collapse = ", ")')
  lines <- c(lines, paste0('  paste0("', snake, '(", res, ")")'))
  lines <- c(lines, "}")

  paste(lines, collapse = "\n")
}


# --- Generate enums ----------------------------------------------------------

generate_enums_r <- function(enums) {
  enum_map <- list(
    "ConfigFlags"     = "flag",
    "TraceLogLevel"   = "log",
    "KeyboardKey"     = "key",
    "MouseButton"     = "mouse_button",
    "MouseCursor"     = "mouse_cursor",
    "CameraMode"      = "camera_mode",
    "CameraProjection"= "camera_projection",
    "ShaderUniformDataType" = "shader_uniform",
    "MaterialMapIndex"= "material_map_index"
  )

  # Prefix stripping per enum
  prefix_map <- list(
    "ConfigFlags"     = "FLAG_",
    "TraceLogLevel"   = "LOG_",
    "KeyboardKey"     = "KEY_",
    "MouseButton"     = "MOUSE_BUTTON_",
    "MouseCursor"     = "MOUSE_CURSOR_",
    "CameraMode"      = "CAMERA_",
    "CameraProjection"= "CAMERA_",
    "ShaderUniformDataType" = "SHADER_UNIFORM_",
    "MaterialMapIndex"= "MATERIAL_MAP_"
  )

  all_lines <- character(0)

  for (i in seq_len(nrow(enums))) {
    enum_name <- enums$name[i]
    if (!(enum_name %in% names(enum_map))) next

    r_name <- enum_map[[enum_name]]
    prefix <- prefix_map[[enum_name]]
    values <- enums$values[[i]]

    all_lines <- c(all_lines, "#' @export")
    all_lines <- c(all_lines, paste0(r_name, " <- list("))

    entries <- character(0)
    for (j in seq_len(nrow(values))) {
      val_name <- values$name[j]
      val_value <- values$value[j]

      # Strip prefix and convert to snake_case
      short_name <- sub(paste0("^", prefix), "", val_name)
      short_name <- tolower(short_name)

      # Skip null/none entries that are just 0 placeholders in some enums
      if (short_name == "null" && enum_name == "KeyboardKey") next

      entries <- c(entries, paste0("  ", short_name, " = ", val_value))
    }

    all_lines <- c(all_lines, paste(entries, collapse = ",\n"))
    all_lines <- c(all_lines, ")")
    all_lines <- c(all_lines, "")
  }

  paste(all_lines, collapse = "\n")
}


# --- Main generation logic ---------------------------------------------------

cat("Generating raylibr bindings from raylib_api.json...\n")

# 1. Generate C++ files (split by module)
structs <- api$structs
funcs <- api$functions

# Filter to wrappable functions
wrappable_idx <- sapply(seq_len(nrow(funcs)), function(i) can_wrap_function(funcs[i, ]))
wrappable_funcs <- funcs[wrappable_idx, ]
cat(sprintf("  Wrappable functions: %d / %d\n", nrow(wrappable_funcs), nrow(funcs)))

# Classify functions into modules
func_modules <- sapply(wrappable_funcs$name, classify_function)

# Generate struct C++ code
struct_cpp_code <- sapply(seq_len(nrow(structs)), function(i) {
  s <- structs[i, ]
  if (s$name %in% c("Vector2", "Vector3", "Vector4", "Matrix",
                     "FilePathList", "AutomationEvent", "AutomationEventList",
                     "ModelSkeleton")) return(NULL)
  generate_struct_cpp(s)
})
struct_cpp_code <- Filter(Negate(is.null), struct_cpp_code)

# Header for all C++ files
cpp_header <- paste0(
  "// Do not edit by hand.\n",
  "\n",
  '#include "raylibr.h"\n',
  "\n",
  "// [[Rcpp::plugins(cpp11)]]\n"
)

# Write structs to src/structs.cpp
writeLines(paste0(cpp_header, "\n",
                  paste(struct_cpp_code, collapse = "\n\n")),
           "src/structs.cpp")
cat("  Wrote src/structs.cpp\n")

# Write function wrappers split by module (with vectorized versions for draw_*)
n_vectorized <- 0
for (mod in unique(func_modules)) {
  mod_funcs <- wrappable_funcs[func_modules == mod, ]
  mod_cpp <- sapply(seq_len(nrow(mod_funcs)), function(i) {
    generate_function_cpp(mod_funcs[i, ])
  })
  mod_vec_cpp <- sapply(seq_len(nrow(mod_funcs)), function(i) {
    if (is_vectorizable(mod_funcs[i, ])) {
      generate_function_cpp_vectorized(mod_funcs[i, ])
    } else NULL
  })
  mod_vec_cpp <- Filter(Negate(is.null), mod_vec_cpp)
  n_vectorized <- n_vectorized + length(mod_vec_cpp)
  all_cpp <- c(mod_cpp, mod_vec_cpp)
  writeLines(paste0(cpp_header, "\n",
                    paste(all_cpp, collapse = "\n\n")),
             paste0("src/", mod, ".cpp"))
  cat(sprintf("  Wrote src/%s.cpp (%d functions, %d vectorized)\n",
              mod, nrow(mod_funcs), length(mod_vec_cpp)))
}
cat(sprintf("  Total vectorized functions: %d\n", n_vectorized))

# 2. Generate R function wrappers (with vectorization helpers)
r_vec_helpers <- c(
  "# Vectorization helpers for draw_* functions",
  ".vec_len <- function(x) if (is.matrix(x)) nrow(x) else 1L",
  ".vec_recycle <- function(x, n, nc) {",
  "  if (is.matrix(x) && nrow(x) == n) return(x)",
  "  if (!is.matrix(x)) x <- matrix(x, nrow = 1)",
  "  matrix(rep(t(x), length.out = n * nc), ncol = nc, byrow = TRUE)",
  "}",
  '.color_len <- function(x) {',
  '  if (is.list(x) && !inherits(x, "color") && !identical(names(x), c("r", "g", "b", "a"))) length(x)',
  '  else if (is.character(x)) length(x)',
  '  else 1L',
  '}',
  '.color_recycle <- function(x, n) {',
  '  cl <- .color_len(x)',
  '  if (is.character(x)) as.list(rep(x, length.out = n))',
  '  else if (cl > 1L) rep(x, length.out = n)',
  '  else rep(list(x), length.out = n)',
  '}',
  '.struct_len <- function(x) if (is.list(x) && is.null(attr(x, "class"))) length(x) else 1L',
  '.struct_recycle <- function(x, n) {',
  '  if (.struct_len(x) > 1L) rep(x, length.out = n)',
  '  else rep(list(x), length.out = n)',
  '}',
  ""
)
r_func_lines <- c("# Do not edit by hand.", "", r_vec_helpers)
for (i in seq_len(nrow(wrappable_funcs))) {
  r_func_lines <- c(r_func_lines, generate_function_r(wrappable_funcs[i, ]))
}
writeLines(paste(r_func_lines, collapse = "\n"), "R/functions.R")
cat(sprintf("  Wrote R/functions.R (%d functions)\n", nrow(wrappable_funcs)))

# 3. Generate R struct class files
for (i in seq_len(nrow(structs))) {
  s <- structs[i, ]
  if (s$name %in% c("Vector2", "Vector3", "Vector4", "Matrix",
                     "FilePathList", "AutomationEvent", "AutomationEventList",
                     "ModelSkeleton")) next
  r_code <- generate_struct_r(s)
  if (!is.null(r_code)) {
    snake <- get_r_class_name(s$name)
    writeLines(r_code, paste0("R/", snake, ".R"))
    cat(sprintf("  Wrote R/%s.R\n", snake))
  }
}

# 4. Generate enums
enums_code <- generate_enums_r(api$enums)
writeLines(enums_code, "R/enums.R")
cat("  Wrote R/enums.R\n")

# 5. Generate raylibr_types.h (forward declarations for RcppExports.cpp)
types_header <- c(
  "// Do not edit by hand.",
  "",
  "#include <raylib.h>",
  "",
  "typedef Matrix RaylibMatrix;",
  "#undef DEG2RAD",
  "",
  "#include <RcppCommon.h>",
  "",
  "#ifndef __RAYLIB_TYPES__",
  "#define __RAYLIB_TYPES__",
  "",
  "using namespace Rcpp;",
  "",
  "namespace Rcpp {",
  "",
  "  template <> SEXP wrap(const Vector2& x);",
  "  template <> Vector2 as(SEXP);",
  "  ",
  "  template <> SEXP wrap(const Vector3& x);",
  "  template <> Vector3 as(SEXP);",
  "  ",
  "  template <> SEXP wrap(const Vector4& x);",
  "  template <> Vector4 as(SEXP);",
  "  ",
  "  template <> SEXP wrap(const RaylibMatrix& x);",
  "  template <> RaylibMatrix as(SEXP);",
  ""
)

# Add forward declarations for each wrapped struct
for (i in seq_len(nrow(structs))) {
  s <- structs[i, ]
  if (s$name %in% c("Vector2", "Vector3", "Vector4", "Matrix",
                     "FilePathList", "AutomationEvent", "AutomationEventList",
                     "ModelSkeleton")) next
  cpp_name <- if (s$name == "Texture") "Texture"
              else if (s$name == "RenderTexture") "RenderTexture"
              else s$name
  types_header <- c(types_header,
    paste0("  template <> SEXP wrap(const ", cpp_name, "& x);"),
    paste0("  template <> ", cpp_name, " as(SEXP);"),
    "  "
  )
}

types_header <- c(types_header, "", "}", "", "#endif", "")
writeLines(paste(types_header, collapse = "\n"), "inst/include/raylibr_types.h")
cat("  Wrote inst/include/raylibr_types.h\n")

# --- Generate rlgl bindings ---------------------------------------------------

rlgl_api_file <- "data-raw/rlgl_api.json"
if (file.exists(rlgl_api_file)) {
  cat("\nGenerating rlgl bindings from rlgl_api.json...\n")
  rlgl_api <- fromJSON(rlgl_api_file)
  rlgl_funcs <- rlgl_api$functions

  rlgl_skip <- c(
    "rlMultMatrixf",
    "rlEnableStatePointer", "rlLoadExtensions", "rlGetProcAddress",
    "rlGetShaderLocsDefault",
    "rlLoadRenderBatch", "rlUnloadRenderBatch",
    "rlDrawRenderBatch", "rlSetRenderBatchActive",
    "rlLoadVertexBuffer", "rlLoadVertexBufferElement",
    "rlUpdateVertexBuffer", "rlUpdateVertexBufferElements",
    "rlSetVertexAttributeDefault",
    "rlDrawVertexArrayElements", "rlDrawVertexArrayElementsInstanced",
    "rlLoadTexture", "rlLoadTextureCubemap",
    "rlUpdateTexture",
    "rlGetGlTextureFormats", "rlGenTextureMipmaps",
    "rlReadTexturePixels", "rlReadScreenPixels",
    "rlCopyFramebuffer",
    "rlSetUniform", "rlSetUniformMatrices",
    "rlSetShader",
    "rlLoadShaderBuffer", "rlUpdateShaderBuffer", "rlReadShaderBuffer"
  )

  rlgl_type_map <- type_map
  rlgl_type_map[["unsigned short"]] <- list(cpp = "unsigned int", check = "is_unsigned_int", label = "A non-negative integer")

  can_wrap_rlgl <- function(func_row) {
    if (func_row$name %in% rlgl_skip) return(FALSE)
    ret <- func_row$returnType
    if (!(ret %in% names(return_map))) return(FALSE)
    params <- func_row$params[[1]]
    if (is.null(params) || length(params) == 0) return(TRUE)
    if (is.data.frame(params) && nrow(params) == 0) return(TRUE)
    if (is.data.frame(params)) {
      all(sapply(params$type, function(t) t %in% names(rlgl_type_map)))
    } else {
      all(sapply(params, function(p) p$type %in% names(rlgl_type_map)))
    }
  }

  rlgl_pascal_to_snake <- function(x) {
    x <- sub("^rl", "", x)
    pascal_to_snake(x)
  }

  rlgl_wrappable_idx <- sapply(seq_len(nrow(rlgl_funcs)), function(i) can_wrap_rlgl(rlgl_funcs[i, ]))
  rlgl_wrappable <- rlgl_funcs[rlgl_wrappable_idx, ]
  cat(sprintf("  Wrappable rlgl functions: %d / %d\n", nrow(rlgl_wrappable), nrow(rlgl_funcs)))

  rlgl_cpp_lines <- c(cpp_header, "")
  for (i in seq_len(nrow(rlgl_wrappable))) {
    f <- rlgl_wrappable[i, ]
    name <- f$name
    snake <- paste0("rl_", rlgl_pascal_to_snake(name))
    ret_type <- f$returnType
    cpp_ret <- get_cpp_type(ret_type)
    params <- f$params[[1]]

    if (is.null(params) || (is.data.frame(params) && nrow(params) == 0)) {
      param_str <- ""
      call_str <- ""
    } else {
      cpp_types <- sapply(params$type, function(t) {
        if (t %in% names(rlgl_type_map)) rlgl_type_map[[t]]$cpp else get_cpp_type(t)
      })
      param_names <- field_to_snake(params$name)
      param_str <- paste(cpp_types, param_names, collapse = ", ")
      call_str <- paste(param_names, collapse = ", ")
    }

    rlgl_cpp_lines <- c(rlgl_cpp_lines,
      "// [[Rcpp::export]]",
      paste0(cpp_ret, " ", snake, "_(", param_str, ") {"),
      paste0("  return ", name, "(", call_str, ");"),
      "}",
      ""
    )
  }
  writeLines(paste(rlgl_cpp_lines, collapse = "\n"), "src/rlgl.cpp")
  cat(sprintf("  Wrote src/rlgl.cpp (%d functions)\n", nrow(rlgl_wrappable)))

  rlgl_r_lines <- c("# Do not edit by hand.", "")
  for (i in seq_len(nrow(rlgl_wrappable))) {
    f <- rlgl_wrappable[i, ]
    name <- f$name
    snake <- paste0("rl_", rlgl_pascal_to_snake(name))
    ret_type <- f$returnType
    params <- f$params[[1]]
    desc <- f$description

    lines <- character(0)
    title_words <- strsplit(snake, "_")[[1]]
    title <- paste(toupper(substring(title_words, 1, 1)),
                   substring(title_words, 2), sep = "", collapse = " ")

    lines <- c(lines, paste0("#' ", title))
    lines <- c(lines, "#'")
    if (nzchar(desc)) lines <- c(lines, paste0("#' ", desc, "."))
    lines <- c(lines, "#'")

    if (!is.null(params) && is.data.frame(params) && nrow(params) > 0) {
      for (j in seq_len(nrow(params))) {
        ptype <- params$type[j]
        pname_snake <- field_to_snake(params$name[j])
        label <- if (ptype %in% names(rlgl_type_map)) rlgl_type_map[[ptype]]$label
                 else paste("A", pascal_to_snake(ptype))
        lines <- c(lines, paste0("#' @param ", pname_snake, " ", label, "."))
      }
      lines <- c(lines, "#'")
    }

    if (ret_type %in% names(return_map) && !is.null(return_map[[ret_type]]$r_doc)) {
      lines <- c(lines, paste0("#' @return ", return_map[[ret_type]]$r_doc))
      lines <- c(lines, "#'")
    }

    lines <- c(lines, "#' @family rlgl functions")
    lines <- c(lines, "#'")
    lines <- c(lines, "#' @export")

    if (is.null(params) || (is.data.frame(params) && nrow(params) == 0)) {
      lines <- c(lines, paste0(snake, " <- function() {"))
      lines <- c(lines, paste0("  ", snake, "_()"))
    } else {
      param_names <- field_to_snake(params$name)
      lines <- c(lines, paste0(snake, " <- function(", paste(param_names, collapse = ", "), ") {"))
      for (j in seq_len(nrow(params))) {
        ptype <- params$type[j]
        pname <- param_names[j]
        if (ptype %in% names(rlgl_type_map)) {
          check <- rlgl_type_map[[ptype]]$check
          label <- tolower(rlgl_type_map[[ptype]]$label)
          lines <- c(lines, paste0("  if (!", check, "(", pname, ")) abort(paste0('`",
                                    pname, "` must be ", label,
                                    ", not ', friendly_typeof(", pname, "), '.'), call = NULL)"))
        }
      }
      lines <- c(lines, paste0("  ", snake, "_(", paste(param_names, collapse = ", "), ")"))
    }
    lines <- c(lines, "}")
    lines <- c(lines, "")

    rlgl_r_lines <- c(rlgl_r_lines, paste(lines, collapse = "\n"))
  }
  writeLines(paste(rlgl_r_lines, collapse = "\n"), "R/rlgl_functions.R")
  cat(sprintf("  Wrote R/rlgl_functions.R (%d functions)\n", nrow(rlgl_wrappable)))
}

# --- Generate raymath bindings ------------------------------------------------

raymath_api_file <- "data-raw/raymath_api.json"
if (file.exists(raymath_api_file)) {
  cat("\nGenerating raymath bindings from raymath_api.json...\n")
  raymath_api <- fromJSON(raymath_api_file)
  raymath_funcs <- raymath_api$functions

  raymath_skip <- c(
    "Vector3OrthoNormalize",
    "QuaternionToAxisAngle",
    "MatrixDecompose",
    "Vector3ToFloatV",
    "MatrixToFloatV"
  )

  raymath_to_snake <- function(name) {
    if (name %in% c("Clamp", "Lerp", "Normalize", "Remap", "Wrap")) {
      return(paste0("float_", tolower(name)))
    }
    pascal_to_snake(name)
  }

  raymath_family <- function(name) {
    if (grepl("^Vector2", name)) return("vector2 functions")
    if (grepl("^Vector3", name)) return("vector3 functions")
    if (grepl("^Vector4", name)) return("vector4 functions")
    if (grepl("^Matrix", name)) return("matrix functions")
    if (grepl("^Quaternion", name)) return("quaternion functions")
    "float functions"
  }

  can_wrap_raymath <- function(func_row) {
    if (func_row$name %in% raymath_skip) return(FALSE)
    ret <- func_row$returnType
    if (!(ret %in% names(return_map))) return(FALSE)
    params <- func_row$params[[1]]
    if (is.null(params) || length(params) == 0) return(TRUE)
    if (is.data.frame(params) && nrow(params) == 0) return(TRUE)
    if (is.data.frame(params)) {
      all(sapply(params$type, function(t) t %in% names(type_map)))
    } else {
      all(sapply(params, function(p) p$type %in% names(type_map)))
    }
  }

  raymath_wrappable_idx <- sapply(seq_len(nrow(raymath_funcs)), function(i) can_wrap_raymath(raymath_funcs[i, ]))
  raymath_wrappable <- raymath_funcs[raymath_wrappable_idx, ]
  cat(sprintf("  Wrappable raymath functions: %d / %d\n", nrow(raymath_wrappable), nrow(raymath_funcs)))

  raymath_cpp_lines <- c(cpp_header, "")
  for (i in seq_len(nrow(raymath_wrappable))) {
    f <- raymath_wrappable[i, ]
    name <- f$name
    snake <- raymath_to_snake(name)
    ret_type <- f$returnType
    cpp_ret <- get_cpp_type(ret_type)
    params <- f$params[[1]]

    if (is.null(params) || (is.data.frame(params) && nrow(params) == 0)) {
      param_str <- ""
      call_str <- ""
    } else {
      cpp_types <- sapply(params$type, get_cpp_type)
      param_names <- field_to_snake(params$name)
      param_str <- paste(cpp_types, param_names, collapse = ", ")
      call_str <- paste(param_names, collapse = ", ")
    }

    raymath_cpp_lines <- c(raymath_cpp_lines,
      "// [[Rcpp::export]]",
      paste0(cpp_ret, " ", snake, "_(", param_str, ") {"),
      paste0("  return ", name, "(", call_str, ");"),
      "}",
      ""
    )
  }
  writeLines(paste(raymath_cpp_lines, collapse = "\n"), "src/raymath_funcs.cpp")
  cat(sprintf("  Wrote src/raymath_funcs.cpp (%d functions)\n", nrow(raymath_wrappable)))

  raymath_r_lines <- c("# Do not edit by hand.", "")
  for (i in seq_len(nrow(raymath_wrappable))) {
    f <- raymath_wrappable[i, ]
    name <- f$name
    snake <- raymath_to_snake(name)
    ret_type <- f$returnType
    params <- f$params[[1]]
    family <- raymath_family(name)

    lines <- character(0)
    title_words <- strsplit(snake, "_")[[1]]
    title <- paste(toupper(substring(title_words, 1, 1)),
                   substring(title_words, 2), sep = "", collapse = " ")

    lines <- c(lines, paste0("#' ", title))
    lines <- c(lines, "#'")

    if (!is.null(params) && is.data.frame(params) && nrow(params) > 0) {
      for (j in seq_len(nrow(params))) {
        ptype <- params$type[j]
        pname_snake <- field_to_snake(params$name[j])
        label <- if (ptype %in% names(type_map)) type_map[[ptype]]$label
                 else paste("A", pascal_to_snake(ptype))
        lines <- c(lines, paste0("#' @param ", pname_snake, " ", label, "."))
      }
      lines <- c(lines, "#'")
    }

    if (ret_type %in% names(return_map) && !is.null(return_map[[ret_type]]$r_doc)) {
      lines <- c(lines, paste0("#' @return ", return_map[[ret_type]]$r_doc))
      lines <- c(lines, "#'")
    }

    lines <- c(lines, paste0("#' @family ", family))
    lines <- c(lines, "#'")
    lines <- c(lines, "#' @export")

    if (is.null(params) || (is.data.frame(params) && nrow(params) == 0)) {
      lines <- c(lines, paste0(snake, " <- function() {"))
      lines <- c(lines, paste0("  ", snake, "_()"))
    } else {
      param_names <- field_to_snake(params$name)
      lines <- c(lines, paste0(snake, " <- function(", paste(param_names, collapse = ", "), ") {"))
      for (j in seq_len(nrow(params))) {
        ptype <- params$type[j]
        pname <- param_names[j]
        if (ptype %in% names(type_map)) {
          check <- type_map[[ptype]]$check
          label <- tolower(type_map[[ptype]]$label)
          lines <- c(lines, paste0("  if (!", check, "(", pname, ")) abort(paste0('`",
                                    pname, "` must be ", label,
                                    ", not ', friendly_typeof(", pname, "), '.'), call = NULL)"))
        }
      }
      lines <- c(lines, paste0("  ", snake, "_(", paste(param_names, collapse = ", "), ")"))
    }
    lines <- c(lines, "}")
    lines <- c(lines, "")

    raymath_r_lines <- c(raymath_r_lines, paste(lines, collapse = "\n"))
  }
  writeLines(paste(raymath_r_lines, collapse = "\n"), "R/raymath_functions.R")
  cat(sprintf("  Wrote R/raymath_functions.R (%d functions)\n", nrow(raymath_wrappable)))
}

# --- Generate raygui bindings -------------------------------------------------

raygui_api_file <- "data-raw/raygui_api.json"
if (file.exists(raygui_api_file)) {
  cat("\nGenerating raygui bindings from raygui_api.json...\n")
  raygui_api <- fromJSON(raygui_api_file)
  raygui_funcs <- raygui_api$functions

  raygui_skip <- c(
    "GuiIconText", "GuiGetIcons", "GuiLoadIcons", "GuiLoadIconsFromMemory",
    "GuiLoadStyleFromMemory",
    "GuiListViewEx", "GuiTabBarEx",
    "GuiScrollPanel", "GuiTextBox", "GuiTextInputBox", "GuiValueBoxFloat"
  )

  raygui_ptr_types <- c("bool *", "int *", "float *", "Color *", "Vector2 *", "Vector3 *")

  is_output_ptr <- function(ptype) {
    ptype %in% raygui_ptr_types
  }

  ptr_base_type <- function(ptype) {
    sub(" \\*$", "", ptype)
  }

  can_wrap_raygui <- function(func_row) {
    if (func_row$name %in% raygui_skip) return(FALSE)
    ret <- func_row$returnType
    if (!(ret %in% names(return_map))) return(FALSE)
    params <- func_row$params[[1]]
    if (is.null(params) || length(params) == 0) return(TRUE)
    if (is.data.frame(params) && nrow(params) == 0) return(TRUE)
    if (is.data.frame(params)) {
      all(sapply(params$type, function(t) {
        if (is_output_ptr(t)) {
          ptr_base_type(t) %in% names(type_map)
        } else if (grepl("\\*", t) && t != "const char *") {
          FALSE
        } else {
          t %in% names(type_map)
        }
      }))
    } else {
      all(sapply(params, function(p) {
        t <- p$type
        if (is_output_ptr(t)) {
          ptr_base_type(t) %in% names(type_map)
        } else if (grepl("\\*", t) && t != "const char *") {
          FALSE
        } else {
          t %in% names(type_map)
        }
      }))
    }
  }

  has_output_ptrs <- function(func_row) {
    params <- func_row$params[[1]]
    if (is.null(params) || (is.data.frame(params) && nrow(params) == 0)) return(FALSE)
    any(sapply(params$type, is_output_ptr))
  }

  raygui_wrappable_idx <- sapply(seq_len(nrow(raygui_funcs)), function(i) can_wrap_raygui(raygui_funcs[i, ]))
  raygui_wrappable <- raygui_funcs[raygui_wrappable_idx, ]
  cat(sprintf("  Wrappable raygui functions: %d / %d\n", nrow(raygui_wrappable), nrow(raygui_funcs)))

  # Static helpers for struct-to-R conversion in List::create
  raygui_cpp_helpers <- c(
    "static Rcpp::NumericVector gui_vec2_to_r(Vector2 v) {",
    "  Rcpp::NumericVector r(2);",
    "  r[0] = v.x; r[1] = v.y;",
    '  r.names() = Rcpp::CharacterVector::create("x", "y");',
    "  return r;",
    "}",
    "",
    "static Rcpp::NumericVector gui_vec3_to_r(Vector3 v) {",
    "  Rcpp::NumericVector r(3);",
    "  r[0] = v.x; r[1] = v.y; r[2] = v.z;",
    '  r.names() = Rcpp::CharacterVector::create("x", "y", "z");',
    "  return r;",
    "}",
    "",
    "static Rcpp::IntegerVector gui_color_to_r(Color c) {",
    "  Rcpp::IntegerVector r(4);",
    "  r[0] = c.r; r[1] = c.g; r[2] = c.b; r[3] = c.a;",
    '  r.names() = Rcpp::CharacterVector::create("r", "g", "b", "a");',
    "  return r;",
    "}",
    ""
  )

  # Map output pointer base types to their C++ wrapper and list conversion
  ptr_cpp_type <- function(base_type) {
    if (base_type %in% names(type_map)) return(type_map[[base_type]]$cpp)
    base_type
  }

  ptr_to_list_expr <- function(base_type, var_name) {
    if (base_type == "Vector2") return(paste0("gui_vec2_to_r(", var_name, ")"))
    if (base_type == "Vector3") return(paste0("gui_vec3_to_r(", var_name, ")"))
    if (base_type == "Color") return(paste0("gui_color_to_r(", var_name, ")"))
    if (base_type == "float") return(paste0("(double)", var_name))
    var_name
  }

  ptr_r_doc <- function(base_type) {
    if (base_type == "bool") return("logical")
    if (base_type == "int") return("integer")
    if (base_type == "float") return("number")
    if (base_type == "Color") return("color")
    if (base_type == "Vector2") return("numeric vector of length 2")
    if (base_type == "Vector3") return("numeric vector of length 3")
    tolower(base_type)
  }

  raygui_cpp_lines <- c(cpp_header, raygui_cpp_helpers)
  for (i in seq_len(nrow(raygui_wrappable))) {
    f <- raygui_wrappable[i, ]
    name <- f$name
    snake <- pascal_to_snake(name)
    ret_type <- f$returnType
    params <- f$params[[1]]
    uses_ptrs <- has_output_ptrs(f)

    if (is.null(params) || (is.data.frame(params) && nrow(params) == 0)) {
      # No params
      cpp_ret <- get_cpp_type(ret_type)
      raygui_cpp_lines <- c(raygui_cpp_lines,
        "// [[Rcpp::export]]",
        paste0(cpp_ret, " ", snake, "_() {"),
        paste0("  return ", name, "();"),
        "}",
        ""
      )
    } else if (!uses_ptrs) {
      # Simple function (no output pointers)
      cpp_ret <- get_cpp_type(ret_type)
      cpp_types <- sapply(params$type, get_cpp_type)
      param_names <- field_to_snake(params$name)
      param_str <- paste(cpp_types, param_names, collapse = ", ")
      call_str <- paste(param_names, collapse = ", ")

      raygui_cpp_lines <- c(raygui_cpp_lines,
        "// [[Rcpp::export]]",
        paste0(cpp_ret, " ", snake, "_(", param_str, ") {"),
        paste0("  return ", name, "(", call_str, ");"),
        "}",
        ""
      )
    } else {
      # Output pointer function — returns Rcpp::List
      cpp_params <- character(0)
      call_args <- character(0)
      list_entries <- character(0)

      for (j in seq_len(nrow(params))) {
        ptype <- params$type[j]
        pname <- field_to_snake(params$name[j])

        if (is_output_ptr(ptype)) {
          base <- ptr_base_type(ptype)
          cpp_t <- ptr_cpp_type(base)
          cpp_params <- c(cpp_params, paste(cpp_t, pname))
          call_args <- c(call_args, paste0("&", pname))
          list_entries <- c(list_entries,
            paste0('Rcpp::Named("', pname, '") = ', ptr_to_list_expr(base, pname)))
        } else {
          cpp_t <- get_cpp_type(ptype)
          cpp_params <- c(cpp_params, paste(cpp_t, pname))
          call_args <- c(call_args, pname)
        }
      }

      raygui_cpp_lines <- c(raygui_cpp_lines,
        "// [[Rcpp::export]]",
        paste0("Rcpp::List ", snake, "_(", paste(cpp_params, collapse = ", "), ") {"),
        paste0("  int result = ", name, "(", paste(call_args, collapse = ", "), ");"),
        paste0("  return Rcpp::List::create(Rcpp::Named(\"result\") = result, ",
               paste(list_entries, collapse = ", "), ");"),
        "}",
        ""
      )
    }
  }
  writeLines(paste(raygui_cpp_lines, collapse = "\n"), "src/raygui_funcs.cpp")
  cat(sprintf("  Wrote src/raygui_funcs.cpp (%d functions)\n", nrow(raygui_wrappable)))

  # --- Generate R wrappers ---
  raygui_r_lines <- c("# Do not edit by hand.", "")
  for (i in seq_len(nrow(raygui_wrappable))) {
    f <- raygui_wrappable[i, ]
    name <- f$name
    snake <- pascal_to_snake(name)
    ret_type <- f$returnType
    params <- f$params[[1]]
    desc <- f$description
    uses_ptrs <- has_output_ptrs(f)

    lines <- character(0)
    title_words <- strsplit(snake, "_")[[1]]
    title <- paste(toupper(substring(title_words, 1, 1)),
                   substring(title_words, 2), sep = "", collapse = " ")

    lines <- c(lines, paste0("#' ", title))
    lines <- c(lines, "#'")
    if (!is.null(desc) && nzchar(desc)) lines <- c(lines, paste0("#' ", desc, "."))
    if (!is.null(desc) && nzchar(desc)) lines <- c(lines, "#'")

    if (!is.null(params) && is.data.frame(params) && nrow(params) > 0) {
      for (j in seq_len(nrow(params))) {
        ptype <- params$type[j]
        pname_snake <- field_to_snake(params$name[j])

        if (is_output_ptr(ptype)) {
          base <- ptr_base_type(ptype)
          label <- if (base %in% names(type_map)) type_map[[base]]$label
                   else paste("A", tolower(base))
          lines <- c(lines, paste0("#' @param ", pname_snake, " ", label, " (current value)."))
        } else {
          label <- if (ptype %in% names(type_map)) type_map[[ptype]]$label
                   else paste("A", pascal_to_snake(ptype))
          lines <- c(lines, paste0("#' @param ", pname_snake, " ", label, "."))
        }
      }
      lines <- c(lines, "#'")
    }

    if (uses_ptrs) {
      # Document the list return
      out_parts <- c("\\code{result} (integer)")
      for (j in seq_len(nrow(params))) {
        if (is_output_ptr(params$type[j])) {
          base <- ptr_base_type(params$type[j])
          pname <- field_to_snake(params$name[j])
          out_parts <- c(out_parts, paste0("\\code{", pname, "} (", ptr_r_doc(base), ")"))
        }
      }
      lines <- c(lines, paste0("#' @return A list with ", paste(out_parts, collapse = ", "), "."))
      lines <- c(lines, "#'")
    } else if (ret_type %in% names(return_map) && !is.null(return_map[[ret_type]]$r_doc)) {
      lines <- c(lines, paste0("#' @return ", return_map[[ret_type]]$r_doc))
      lines <- c(lines, "#'")
    }

    lines <- c(lines, "#' @family gui functions")
    lines <- c(lines, "#'")
    lines <- c(lines, "#' @export")

    if (is.null(params) || (is.data.frame(params) && nrow(params) == 0)) {
      lines <- c(lines, paste0(snake, " <- function() {"))
      lines <- c(lines, paste0("  ", snake, "_()"))
    } else {
      param_names <- field_to_snake(params$name)
      lines <- c(lines, paste0(snake, " <- function(", paste(param_names, collapse = ", "), ") {"))
      for (j in seq_len(nrow(params))) {
        ptype <- params$type[j]
        pname <- param_names[j]
        check_type <- if (is_output_ptr(ptype)) ptr_base_type(ptype) else ptype
        if (check_type %in% names(type_map)) {
          check <- type_map[[check_type]]$check
          label <- tolower(type_map[[check_type]]$label)
          lines <- c(lines, paste0("  if (!", check, "(", pname, ")) abort(paste0('`",
                                    pname, "` must be ", label,
                                    ", not ', friendly_typeof(", pname, "), '.'), call = NULL)"))
        }
      }
      lines <- c(lines, paste0("  ", snake, "_(", paste(param_names, collapse = ", "), ")"))
    }
    lines <- c(lines, "}")
    lines <- c(lines, "")

    raygui_r_lines <- c(raygui_r_lines, paste(lines, collapse = "\n"))
  }
  writeLines(paste(raygui_r_lines, collapse = "\n"), "R/raygui_functions.R")
  cat(sprintf("  Wrote R/raygui_functions.R (%d functions)\n", nrow(raygui_wrappable)))

  # --- Generate raygui enums ---
  raygui_enums <- raygui_api$enums
  if (!is.null(raygui_enums) && nrow(raygui_enums) > 0) {
    raygui_enum_map <- list(
      "GuiResult"                = list(r_name = "gui_result",                  prefix = "RESULT_"),
      "GuiState"                 = list(r_name = "gui_state",                   prefix = "STATE_"),
      "GuiTextAlignment"         = list(r_name = "gui_text_alignment",          prefix = "TEXT_ALIGN_"),
      "GuiTextAlignmentVertical" = list(r_name = "gui_text_alignment_vertical", prefix = "TEXT_ALIGN_"),
      "GuiTextWrapMode"          = list(r_name = "gui_text_wrap_mode",          prefix = "TEXT_WRAP_"),
      "GuiControl"               = list(r_name = "gui_control",                 prefix = ""),
      "GuiControlProperty"       = list(r_name = "gui_control_property",        prefix = ""),
      "GuiDefaultProperty"       = list(r_name = "gui_default_property",        prefix = ""),
      "GuiToggleProperty"        = list(r_name = "gui_toggle_property",         prefix = ""),
      "GuiSliderProperty"        = list(r_name = "gui_slider_property",         prefix = ""),
      "GuiProgressBarProperty"   = list(r_name = "gui_progress_bar_property",   prefix = ""),
      "GuiScrollBarProperty"     = list(r_name = "gui_scroll_bar_property",     prefix = ""),
      "GuiCheckBoxProperty"      = list(r_name = "gui_check_box_property",      prefix = ""),
      "GuiComboBoxProperty"      = list(r_name = "gui_combo_box_property",      prefix = ""),
      "GuiDropdownBoxProperty"   = list(r_name = "gui_dropdown_box_property",   prefix = ""),
      "GuiTextBoxProperty"       = list(r_name = "gui_text_box_property",       prefix = ""),
      "GuiValueBoxProperty"      = list(r_name = "gui_value_box_property",      prefix = ""),
      "GuiTabBarProperty"        = list(r_name = "gui_tab_bar_property",        prefix = ""),
      "GuiListViewProperty"      = list(r_name = "gui_list_view_property",      prefix = ""),
      "GuiColorPickerProperty"   = list(r_name = "gui_color_picker_property",   prefix = ""),
      "GuiIconName"              = list(r_name = "gui_icon",                    prefix = "ICON_")
    )

    enum_lines <- c("# Do not edit by hand.", "")
    for (i in seq_len(nrow(raygui_enums))) {
      enum_name <- raygui_enums$name[i]
      if (!(enum_name %in% names(raygui_enum_map))) next

      cfg <- raygui_enum_map[[enum_name]]
      r_name <- cfg$r_name
      prefix <- cfg$prefix
      values <- raygui_enums$values[[i]]

      enum_lines <- c(enum_lines, "#' @export")
      enum_lines <- c(enum_lines, paste0(r_name, " <- list("))

      r_reserved <- c("if", "else", "repeat", "while", "function", "for", "in",
                       "next", "break", "TRUE", "FALSE", "NULL", "Inf", "NaN",
                       "NA", "NA_integer_", "NA_real_", "NA_complex_", "NA_character_")
      entries <- character(0)
      for (j in seq_len(nrow(values))) {
        val_name <- values$name[j]
        val_value <- values$value[j]
        short_name <- if (nzchar(prefix)) sub(paste0("^", prefix), "", val_name) else val_name
        short_name <- tolower(short_name)
        if (short_name %in% r_reserved || grepl("^[0-9]", short_name)) {
          short_name <- paste0("`", short_name, "`")
        }
        entries <- c(entries, paste0("  ", short_name, " = ", val_value, "L"))
      }

      enum_lines <- c(enum_lines, paste(entries, collapse = ",\n"))
      enum_lines <- c(enum_lines, ")")
      enum_lines <- c(enum_lines, "")
    }
    writeLines(paste(enum_lines, collapse = "\n"), "R/raygui_enums.R")
    cat(sprintf("  Wrote R/raygui_enums.R (%d enums)\n",
                sum(raygui_enums$name %in% names(raygui_enum_map))))
  }
}

cat("\nDone! Now run:\n")
cat("  Rcpp::compileAttributes()\n")
cat("  devtools::document()\n")
