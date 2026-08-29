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
  "GlyphInfo"      = list(r_doc = "A glyph_info")
)

# Functions to skip (pointer params we can't auto-wrap, internal, or manually handled)
skip_functions <- c(
  # Manually handled in R/extra.R
  "SetShaderValue", "SetShaderValueV",
  "LoadFontEx",
  # Pointer-heavy / internal functions
  "SetTraceLogCallback", "SetLoadFileDataCallback", "SetSaveFileDataCallback",
  "SetLoadFileTextCallback", "SetSaveFileTextCallback",
  "LoadFileData", "SaveFileData", "UnloadFileData",
  "ExportDataAsCode",
  "LoadImageRaw", "LoadImageSvg", "LoadImageAnimFromMemory",
  "LoadImageFromMemory",
  "GetImagePalette",
  "LoadFontFromMemory", "LoadFontData", "GenImageFontAtlas", "UnloadFontData",
  "TextFormat", "TextJoin", "TextSplit",
  "LoadWaveFromMemory",
  "LoadMusicStreamFromMemory",
  "SetAudioStreamCallback",
  "AttachAudioStreamProcessor", "DetachAudioStreamProcessor",
  "AttachAudioMixedProcessor", "DetachAudioMixedProcessor",
  "MemAlloc", "MemRealloc", "MemFree",
  "GetShaderLocation", "GetShaderLocationAttrib",
  "SetShaderValueMatrix", "SetShaderValueTexture",
  "LoadModelAnimations", "UnloadModelAnimations",
  "UpdateModelAnimationBones",
  "UploadMesh", "UpdateMeshBuffer", "GetMeshBoundingBox",
  "GenMeshTangents", "ExportMesh", "ExportMeshAsCode",
  "SetMaterialTexture",
  "SetModelMeshMaterial",
  "UpdateCamera", "UpdateCameraPro",
  "ImageKernelConvolution",
  "ImageFromChannel",
  "DrawMeshInstanced",
  "DrawLineStrip", "DrawTriangleFan", "DrawTriangleStrip",
  "DrawTriangleStrip3D",
  "DrawSplineLinear", "DrawSplineBasis", "DrawSplineCatmullRom",
  "DrawSplineBezierQuadratic", "DrawSplineBezierCubic",
  "DrawSplineSegmentLinear", "DrawSplineSegmentBasis",
  "DrawSplineSegmentCatmullRom", "DrawSplineSegmentBezierQuadratic",
  "DrawSplineSegmentBezierCubic",
  "GetSplinePointLinear", "GetSplinePointBasis", "GetSplinePointCatmullRom",
  "GetSplinePointBezierQuad", "GetSplinePointBezierCubic",
  "LoadDroppedFiles", "UnloadDroppedFiles",
  "LoadDirectoryFiles", "LoadDirectoryFilesEx", "UnloadDirectoryFiles",
  "LoadAutomationEventList", "UnloadAutomationEventList",
  "ExportAutomationEventList", "SetAutomationEventList",
  "SetAutomationEventBaseFrame", "StartAutomationEventRecording",
  "StopAutomationEventRecording", "PlayAutomationEvent",
  "GetImageAlphaBorder",
  "ColorFromNormalized", "ColorToHSV", "ColorFromHSV",
  "ColorBrightness", "ColorContrast",
  "TextToInteger", "TextToFloat",
  "CodepointToUTF8",
  "LoadUTF8", "UnloadUTF8",
  "LoadCodepoints", "UnloadCodepoints", "GetCodepointCount",
  "GetCodepoint", "GetCodepointNext", "GetCodepointPrevious",
  "ComputeCRC32", "ComputeMD5", "ComputeSHA1", "ComputeSHA256",
  "EncodeDataBase64", "DecodeDataBase64",
  "DrawTextCodepoints",
  "GetGlyphInfo", "GetGlyphAtlasRec", "GetGlyphIndex",
  "SetWindowIcons",
  "GetMonitorName",
  "WaitTime",
  "GenImagePerlinNoise",
  "GenMeshPoly", "GenMeshPlane", "GenMeshCube", "GenMeshSphere",
  "GenMeshHemiSphere", "GenMeshCylinder", "GenMeshCone", "GenMeshTorus",
  "GenMeshKnot", "GenMeshHeightmap", "GenMeshCubicmap",
  "SetSoundPan", "SetMusicPan", "SetAudioStreamPan",
  "SeekMusicStream",
  "SetWindowMinSize", "SetWindowMaxSize",
  "IsAudioStreamReady", "IsAudioStreamPlaying",
  "SetAudioStreamBufferSizeDefault",
  "LoadWaveSamples", "UnloadWaveSamples",
  "WaveCrop", "WaveFormat",
  "SetMasterVolume", "GetMasterVolume",
  "ImageDrawTriangle", "ImageDrawTriangleEx",
  "ImageDrawTriangleLines", "ImageDrawTriangleLinesEx",
  "ImageDrawTriangleFan", "ImageDrawTriangleStrip",
  # Functions that return arrays or pointers we can't handle
  "GetWindowHandle",
  "GetGamepadName",
  "GetClipboardText", "SetClipboardText",
  "UnloadFileText",
  "LoadRandomSequence", "UnloadRandomSequence",
  "GetCharPressed",
  "TextToLower", "TextToUpper", "TextToPascal", "TextToCamel", "TextToSnake",
  "TextReplace", "TextInsert", "TextSubtext", "TextAppend",
  "TextFindIndex", "TextRemoveSpaces", "TextCopy",
  "GetKeyName",
  "ColorIsEqual", "ColorLerp",
  "FileRename", "FileRemove", "FileCopy", "FileMove", "FileTextReplace",
  "DrawModelPoints",
  "CheckCollisionCircleLine",
  "GetScreenToWorldRay", "GetScreenToWorldRayEx",
  "ImageDrawLineEx"
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
  "VrDeviceInfo", "VrStereoConfig", "BoneInfo", "Texture",
  "RenderTexture"
)

# Module classification for splitting all.cpp
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
              "IsKey", "GetKey", "SetExitKey",
              "IsGamepad", "GetGamepad", "SetGamepad",
              "IsMouse", "GetMouse", "SetMouse",
              "GetTouch", "IsGesture", "GetGesture",
              "SetCamera",
              "File", "Directory", "IsFile", "GetFile", "GetPrev",
              "GetWorking", "GetApp", "Change", "IsPath",
              "SaveStorage", "LoadStorage",
              "CompressData", "DecompressData"),
  shapes  = c("SetShapes", "DrawPixel", "DrawLine", "DrawCircle",
              "DrawEllipse", "DrawRing", "DrawRectangle", "DrawRounded",
              "DrawTriangle", "DrawPoly", "DrawSpline",
              "CheckCollision", "GetCollision"),
  textures= c("LoadImage", "UnloadImage", "ExportImage", "IsImage",
              "GenImage", "ImageCopy", "ImageFrom", "ImageTo",
              "ImageFormat", "ImageAlpha", "ImageResize", "ImageFlip",
              "ImageRotate", "ImageColor", "ImageMipmaps", "ImageDither",
              "ImageClear", "ImageDraw", "GetImage",
              "LoadTexture", "UnloadTexture", "IsTexture", "UpdateTexture",
              "SetTexture", "GenTexture",
              "LoadRenderTexture", "UnloadRenderTexture", "IsRenderTexture",
              "BeginTexture", "EndTexture",
              "Color"),
  text    = c("GetFont", "LoadFont", "UnloadFont", "IsFont",
              "DrawText", "MeasureText", "DrawFPS"),
  models  = c("DrawLine3D", "DrawPoint3D", "DrawCircle3D",
              "DrawTriangle3D", "DrawCube", "DrawSphere",
              "DrawCylinder", "DrawCapsule", "DrawPlane", "DrawGrid",
              "DrawRay", "DrawBillboard",
              "LoadModel", "UnloadModel", "IsModel",
              "GetModel", "SetModel",
              "DrawModel", "DrawMesh",
              "LoadMaterial", "UnloadMaterial", "IsMaterial",
              "GetRayCollision", "GetMeshBounding"),
  audio   = c("InitAudio", "CloseAudio", "IsAudio",
              "LoadWave", "UnloadWave", "IsWave", "ExportWave",
              "LoadSound", "UnloadSound", "IsSound", "UpdateSound",
              "PlaySound", "StopSound", "PauseSound", "ResumeSound",
              "SetSound", "GetSound",
              "LoadMusic", "UnloadMusic", "IsMusic", "UpdateMusic",
              "PlayMusic", "StopMusic", "PauseMusic", "ResumeMusic",
              "SetMusic", "GetMusic",
              "LoadAudio", "UnloadAudio", "UpdateAudio",
              "PlayAudio", "StopAudio", "PauseAudio", "ResumeAudio",
              "SetAudio", "GetAudio")
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
  if (is.null(params) || nrow(params) == 0) {
    lines <- c(lines, paste0(snake, " <- function() {"))
    lines <- c(lines, paste0("  ", snake, "_()"))
  } else {
    param_names <- field_to_snake(params$name)
    lines <- c(lines, paste0(snake, " <- function(", paste(param_names, collapse = ", "), ") {"))

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

  # Roxygen for constructor
  lines <- c(lines, "# Do not edit by hand.")
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

  # Constructor function
  lines <- c(lines, paste0(snake, " <- function(", paste(field_snakes, collapse = ", "), ") {"))
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

# Write function wrappers split by module
for (mod in unique(func_modules)) {
  mod_funcs <- wrappable_funcs[func_modules == mod, ]
  mod_cpp <- sapply(seq_len(nrow(mod_funcs)), function(i) {
    generate_function_cpp(mod_funcs[i, ])
  })
  writeLines(paste0(cpp_header, "\n",
                    paste(mod_cpp, collapse = "\n\n")),
             paste0("src/", mod, ".cpp"))
  cat(sprintf("  Wrote src/%s.cpp (%d functions)\n", mod, nrow(mod_funcs)))
}

# 2. Generate R function wrappers
r_func_lines <- c("# Do not edit by hand.", "")
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

cat("\nDone! Now run:\n")
cat("  Rcpp::compileAttributes()\n")
cat("  devtools::document()\n")
