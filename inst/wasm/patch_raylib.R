#!/usr/bin/env Rscript
# Patch Raylib source for webR worker support.
#
# Patches rcore.c and rcore_web_emscripten.c so Raylib works inside a
# Web Worker (no DOM) with OffscreenCanvas, SharedArrayBuffer input,
# and self.postMessage frame transfer.
#
# Audio support: since Web Audio API (AudioContext) is not available in
# Web Workers, we proxy audio through the main thread via SharedArrayBuffer
# ring buffers. The worker generates PCM data each frame; the main thread's
# ScriptProcessorNode reads from the ring buffer for playback.

patch_failures <- 0L

read_file <- function(path) {
  readChar(path, file.info(path)$size)
}

write_file <- function(path, text) {
  cat(text, file = path)
}

# Fixed-string first-occurrence replacement (like Python str.replace(old,new,1))
str_replace1 <- function(text, old, new) {
  pos <- regexpr(old, text, fixed = TRUE)
  if (pos == -1L) return(text)
  n <- nchar(text)
  after <- pos + attr(pos, "match.length")
  paste0(substr(text, 1, pos - 1L), new,
         if (after <= n) substr(text, after, n) else "")
}

# Regex first-occurrence replacement; returns list(text, count)
regex_replace1 <- function(text, pattern, replacement) {
  m <- regexpr(pattern, text, perl = TRUE)
  if (m == -1L) return(list(text = text, n = 0L))
  n <- nchar(text)
  after <- m + attr(m, "match.length")
  list(
    text = paste0(substr(text, 1, m - 1L), replacement,
                  if (after <= n) substr(text, after, n) else ""),
    n = 1L
  )
}

replace_function_body <- function(source, func_sig, new_body) {
  escaped <- gsub("([\\[\\](){}.*+?^$|\\\\])", "\\\\\\1", func_sig, perl = TRUE)
  pat <- paste0("(?s)", escaped, "\\s*\\{.*?\\n\\}")
  m <- regexpr(pat, source, perl = TRUE)
  if (m == -1L) {
    patch_failures <<- patch_failures + 1L
    message("WARNING: Could not find function: ", func_sig)
    return(source)
  }
  repl <- paste0(func_sig, "\n{\n", new_body, "\n}")
  n <- nchar(source)
  after <- m + attr(m, "match.length")
  paste0(substr(source, 1, m - 1L), repl,
         if (after <= n) substr(source, after, n) else "")
}

# Insert text before the first occurrence of a target string
insert_before <- function(text, target, insertion) {
  pos <- regexpr(target, text, fixed = TRUE)
  if (pos == -1L) return(NULL)
  paste0(substr(text, 1, pos - 1L), insertion, substr(text, pos, nchar(text)))
}


# ===========================================================================
# patch_rcore
# ===========================================================================
patch_rcore <- function() {
  c <- read_file("rcore.c")

  c <- gsub(
    "#if defined(PLATFORM_MEMORY) || defined(PLATFORM_WEB)",
    "#if defined(PLATFORM_MEMORY) || defined(PLATFORM_WEB) || defined(PLATFORM_WEB_EMSCRIPTEN)",
    c, fixed = TRUE)

  c <- gsub(
    '#elif defined(PLATFORM_WEB)\n    #include "platforms/rcore_web.c"',
    paste0('#elif defined(PLATFORM_WEB_EMSCRIPTEN)\n    #include "platforms/rcore_web_emscripten.c"\n',
           '#elif defined(PLATFORM_WEB)\n    #include "platforms/rcore_web.c"'),
    c, fixed = TRUE)

  c <- gsub(
    '#elif defined(PLATFORM_WEB)\n    TRACELOG(LOG_INFO, "Platform backend: WEB (HTML5)");',
    paste0('#elif defined(PLATFORM_WEB_EMSCRIPTEN)\n    TRACELOG(LOG_INFO, "Platform backend: WEB_EMSCRIPTEN (HTML5)");\n',
           '#elif defined(PLATFORM_WEB)\n    TRACELOG(LOG_INFO, "Platform backend: WEB (HTML5)");'),
    c, fixed = TRUE)

  old <- "    #if defined(__linux__) || defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__EMSCRIPTEN__)"
  new <- paste0(
    '    #if defined(PLATFORM_WEB_EMSCRIPTEN)\n',
    '        {\n',
    '            char _wt[192];\n',
    '            snprintf(_wt, sizeof(_wt),\n',
    '                "if(!Module._rs)Module._rs=new Int32Array(new SharedArrayBuffer(4));"\n',
    '                "Atomics.wait(Module._rs,0,0,%d)", (int)(sleepSeconds*1000.0));\n',
    '            emscripten_run_script(_wt);\n',
    '        }\n',
    '    #elif defined(__linux__) || defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__EMSCRIPTEN__)')
  c <- str_replace1(c, old, new)

  c <- gsub(
    "    SetRandomSeed((unsigned int)time(NULL));",
    paste0("#if defined(PLATFORM_WEB_EMSCRIPTEN)\n",
           "    SetRandomSeed((unsigned int)emscripten_get_now());\n",
           "#else\n",
           "    SetRandomSeed((unsigned int)time(NULL));\n",
           "#endif"),
    c, fixed = TRUE)

  write_file("rcore.c", c)
  message("rcore.c patched")
}


# ===========================================================================
# patch_platform
# ===========================================================================
patch_platform <- function() {
  p <- read_file("platforms/rcore_web_emscripten.c")

  # --- Worker detection flag ---
  worker_flag <- paste0(
    "\n// Worker mode detection for webR integration\n",
    "// NOTE: emscripten_run_script_int is not reliably imported in SIDE_MODULE builds,\n",
    "// so we use emscripten_run_script_string and parse the result.\n",
    "static int _raylibr_worker = -1;\n",
    "static int IsWorkerMode(void) {\n",
    "    if (_raylibr_worker < 0) {\n",
    "        const char *_r = emscripten_run_script_string(\"typeof document==='undefined'?'1':'0'\");\n",
    "        _raylibr_worker = (_r && _r[0] == '1') ? 1 : 0;\n",
    "    }\n",
    "    return _raylibr_worker;\n",
    "}\n")

  insert_after <- "});\n\n//----------------------------------------------------------------------------------\n// Module Functions Declaration"
  p <- str_replace1(p, insert_after,
    paste0("});\n", worker_flag, "\n//----------------------------------------------------------------------------------\n// Module Functions Declaration"))
  message("Worker detection flag added")

  # 1. Patch WindowShouldClose
  p <- replace_function_body(p, "bool WindowShouldClose(void)",
    paste0(
      '    emscripten_run_script("if(!Module._rs)Module._rs=new Int32Array(new SharedArrayBuffer(4));Atomics.wait(Module._rs,0,0,1)");\n',
      '    return CORE.Window.shouldClose;'))
  message("WindowShouldClose patched")

  # 2. Patch SwapScreenBuffer
  p <- replace_function_body(p, "void SwapScreenBuffer(void)",
    paste0(
      '    emscripten_run_script("if(globalThis._ma_gen_audio)globalThis._ma_gen_audio()");\n',
      '    emscripten_run_script(\n',
      '        "if(Module._raylibr_wm&&Module.canvas){"\n',
      '        "var _gl=GL.currentContext?GL.currentContext.GLctx:null;"\n',
      '        "if(_gl){var _w=Module.canvas.width,_h=Module.canvas.height,"\n',
      '        "_px=new Uint8Array(_w*_h*4);"\n',
      '        "_gl.readPixels(0,0,_w,_h,_gl.RGBA,_gl.UNSIGNED_BYTE,_px);"\n',
      "        \"self.postMessage({type:'__raylibr_frame',w:_w,h:_h,px:_px.buffer},[_px.buffer]);\"\n",
      '        "}}"\n',
      '    );'))
  message("SwapScreenBuffer patched")

  # 3. Patch InitPlatform: OffscreenCanvas/SAB setup
  init_js <- paste0(
    '    if (IsWorkerMode()) {\n',
    '        emscripten_run_script(\n',
    "            \"if(!Module.canvas){var _c=new OffscreenCanvas(1,1);_c.id='canvas';Module.canvas=_c;}\"\n",
    '            "if(!Module._raylibr_wm){"\n',
    '            "Module._raylibr_wm=true;"\n',
    '            "try{Module._raylibr_input=new Int32Array(new SharedArrayBuffer(32));"\n',
    "            \"self.postMessage({type:'__raylibr_sab',sab:Module._raylibr_input.buffer});}catch(e){}\"\n",
    '            "}"\n',
    '        );\n',
    '    }\n')
  old_init <- "    SetCanvasIdJs(platform.canvasId, 64);"
  p <- str_replace1(p, old_init, paste0(init_js, old_init))
  message("InitPlatform: OffscreenCanvas setup added")

  # 4. Patch WebGL context creation
  old_ctx <- paste0(
    '        // Create WebGL context\n',
    '        platform.glContext = emscripten_webgl_create_context(platform.canvasId, &attribs);\n',
    '        if (platform.glContext == 0) return 0;\n',
    '\n',
    '        emscripten_webgl_make_context_current(platform.glContext);')
  new_ctx <- paste0(
    '        // Create WebGL context (worker-compatible path)\n',
    '        if (IsWorkerMode()) {\n',
    '            char _glcmd[512];\n',
    '            snprintf(_glcmd, sizeof(_glcmd),\n',
    '                "Module.canvas.width=%d;Module.canvas.height=%d;"\n',
    "                \"var _a={majorVersion:%d,minorVersion:0,alpha:true,depth:true,stencil:%s,antialias:%s,\"\n",
    "                \"premultipliedAlpha:true,preserveDrawingBuffer:true,powerPreference:'default',\"\n",
    '                "failIfMajorPerformanceCaveat:false,enableExtensionsByDefault:true};"\n',
    '                "var _h=GL.createContext(Module.canvas,_a);"\n',
    '                "_emscripten_webgl_make_context_current(_h);"\n',
    '                "String(_h)",\n',
    '                CORE.Window.screen.width, CORE.Window.screen.height,\n',
    '                attribs.majorVersion,\n',
    '                attribs.stencil ? "true" : "false",\n',
    '                attribs.antialias ? "true" : "false");\n',
    '            const char *_r = emscripten_run_script_string(_glcmd);\n',
    '            platform.glContext = _r ? atoi(_r) : 0;\n',
    '            if (platform.glContext == 0) return 0;\n',
    '        } else {\n',
    '            platform.glContext = emscripten_webgl_create_context(platform.canvasId, &attribs);\n',
    '            if (platform.glContext == 0) return 0;\n',
    '            emscripten_webgl_make_context_current(platform.glContext);\n',
    '        }')
  n_ctx <- length(gregexpr(old_ctx, p, fixed = TRUE)[[1]])
  p <- gsub(old_ctx, new_ctx, p, fixed = TRUE)
  message(sprintf("WebGL context creation patched (%d occurrences)", n_ctx))

  # 5. Patch window title
  old_title <- '    emscripten_set_window_title((CORE.Window.title != 0)? CORE.Window.title : " ");'
  new_title <- '    if (!IsWorkerMode()) emscripten_set_window_title((CORE.Window.title != 0)? CORE.Window.title : " ");'
  p <- str_replace1(p, old_title, new_title)
  message("Window title patched")

  # 6. Wrap DOM event callbacks in !IsWorkerMode()
  old_callbacks <- paste0(
    '    // Setup window/canvas events callbacks\n',
    '    emscripten_set_fullscreenchange_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, NULL, 1, EmscriptenFullscreenChangeCallback);\n',
    '    emscripten_set_resize_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, NULL, 1, EmscriptenResizeCallback);\n',
    '    emscripten_set_blur_callback(platform.canvasId, NULL, 1, EmscriptenFocusCallback);\n',
    '    emscripten_set_focus_callback(platform.canvasId, NULL, 1, EmscriptenFocusCallback);\n',
    '    emscripten_set_visibilitychange_callback(NULL, 1, EmscriptenVisibilityChangeCallback);\n',
    '\n',
    '    // Setup input events\n',
    '    emscripten_set_keypress_callback(platform.canvasId, NULL, 1, EmscriptenKeyboardCallback);\n',
    '    emscripten_set_keydown_callback(platform.canvasId, NULL, 1, EmscriptenKeyboardCallback);\n',
    '    emscripten_set_keyup_callback(platform.canvasId, NULL, 1, EmscriptenKeyboardCallback);\n',
    '\n',
    '    emscripten_set_click_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n',
    '    //emscripten_set_dblclick_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n',
    '    emscripten_set_mousedown_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n',
    '    emscripten_set_mouseup_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n',
    '    emscripten_set_mousemove_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n',
    '    emscripten_set_mousemove_callback(platform.canvasId, NULL, 1, EmscriptenMouseMoveCallback);\n',
    '    emscripten_set_wheel_callback(platform.canvasId, NULL, 1, EmscriptenMouseWheelCallback);\n',
    '    emscripten_set_pointerlockchange_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, NULL, 1, EmscriptenPointerlockCallback);\n',
    '\n',
    '    emscripten_set_touchstart_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n',
    '    emscripten_set_touchend_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n',
    '    emscripten_set_touchmove_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n',
    '    emscripten_set_touchcancel_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n',
    '\n',
    '    emscripten_set_gamepadconnected_callback(NULL, 1, EmscriptenGamepadCallback);\n',
    '    emscripten_set_gamepaddisconnected_callback(NULL, 1, EmscriptenGamepadCallback);\n',
    '\n',
    '    // Trigger resize callback to force initial size\n',
    '    EmscriptenResizeCallback(EMSCRIPTEN_EVENT_RESIZE, NULL, NULL);')
  new_callbacks <- paste0('    if (!IsWorkerMode()) {\n', old_callbacks, '\n    }')
  if (grepl(old_callbacks, p, fixed = TRUE)) {
    p <- str_replace1(p, old_callbacks, new_callbacks)
    message("DOM event callbacks wrapped in worker check")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: Could not find callback registration block")
  }

  # 7a. SetMouseCursor
  old_cursor <- '        if (!CORE.Input.Mouse.cursorLocked) EM_ASM( { Module.canvas.style.cursor = UTF8ToString($0); }, cursorLUT[cursor]);'
  new_cursor <- paste0(
    '        if (!CORE.Input.Mouse.cursorLocked) {\n',
    '            char _ccmd[192];\n',
    '            snprintf(_ccmd, sizeof(_ccmd),\n',
    '                "if(Module.canvas&&Module.canvas.style)"\n',
    "                \"Module.canvas.style.cursor='%s';\"\n",
    "                \"else if(typeof self!='undefined')\"\n",
    "                \"self.postMessage({type:'__raylibr_cursor',cursor:'%s'})\",\n",
    '                cursorLUT[cursor], cursorLUT[cursor]);\n',
    '            emscripten_run_script(_ccmd);\n',
    '        }')
  if (grepl(old_cursor, p, fixed = TRUE)) {
    p <- str_replace1(p, old_cursor, new_cursor)
    message("SetMouseCursor patched")
  }

  # 7b. ShowCursor
  old_show <- '        EM_ASM( { Module.canvas.style.cursor = UTF8ToString($0); }, cursorLUT[CORE.Input.Mouse.cursor]);'
  new_show <- paste0(
    '        {\n',
    '            char _ccmd[192];\n',
    '            snprintf(_ccmd, sizeof(_ccmd),\n',
    '                "if(Module.canvas&&Module.canvas.style)"\n',
    "                \"Module.canvas.style.cursor='%s';\"\n",
    "                \"else if(typeof self!='undefined')\"\n",
    "                \"self.postMessage({type:'__raylibr_cursor',cursor:'%s'})\",\n",
    '                cursorLUT[CORE.Input.Mouse.cursor], cursorLUT[CORE.Input.Mouse.cursor]);\n',
    '            emscripten_run_script(_ccmd);\n',
    '        }')
  if (grepl(old_show, p, fixed = TRUE)) {
    p <- str_replace1(p, old_show, new_show)
    message("ShowCursor patched")
  }

  # 7c. HideCursor
  old_hide <- "        EM_ASM(Module.canvas.style.cursor = 'none';);"
  new_hide <- paste0(
    "        emscripten_run_script(\n",
    "            \"if(Module.canvas&&Module.canvas.style)\"\n",
    "            \"Module.canvas.style.cursor='none';\"\n",
    "            \"else if(typeof self!='undefined')\"\n",
    "            \"self.postMessage({type:'__raylibr_cursor',cursor:'none'})\");")
  if (grepl(old_hide, p, fixed = TRUE)) {
    p <- str_replace1(p, old_hide, new_hide)
    message("HideCursor patched")
  }

  # 8. Patch ToggleFullscreen: proxy to main thread in worker mode
  old_toggle <- "    bool enterFullscreen = false;\n\n    const bool wasFullscreen = EM_ASM_INT"
  new_toggle <- paste0(
    "    if (IsWorkerMode()) {\n",
    "        emscripten_run_script(\"self.postMessage({type:'__raylibr_fullscreen'})\");\n",
    "        if (FLAG_IS_SET(CORE.Window.flags, FLAG_FULLSCREEN_MODE))\n",
    "            FLAG_CLEAR(CORE.Window.flags, FLAG_FULLSCREEN_MODE);\n",
    "        else\n",
    "            FLAG_SET(CORE.Window.flags, FLAG_FULLSCREEN_MODE);\n",
    "        return;\n",
    "    }\n",
    "    bool enterFullscreen = false;\n\n    const bool wasFullscreen = EM_ASM_INT")
  if (grepl(old_toggle, p, fixed = TRUE)) {
    p <- str_replace1(p, old_toggle, new_toggle)
    message("ToggleFullscreen patched (worker proxy)")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: ToggleFullscreen patch target not found")
  }

  # 9. Patch PollInputEvents: read input from SAB
  # SAB layout (8 x Int32 = 32 bytes):
  #  [0] mouse X,  [1] mouse Y,  [2] cursor on screen,
  #  [3] key pressed (consumed),  [4] left button,  [5] right button,
  #  [6] key-down bitmask (W=1,A=2,S=4,D=8,Left=16,Right=32,Up=64,Down=128,
  #       Space=256,[=512,]=1024,.=2048,,=4096,LShift=8192,RShift=16384),
  #  [7] char pressed (consumed)
  sab_input <- paste0(
    '    // Read input from SharedArrayBuffer (webR worker integration)\n',
    '    if (IsWorkerMode()) {\n',
    '        static bool _sab_prev_on = false;\n',
    '        const char *_istr = emscripten_run_script_string(\n',
    '            "Module._raylibr_input?"\n',
    '            "[Atomics.load(Module._raylibr_input,0),"\n',
    '            "Atomics.load(Module._raylibr_input,1),"\n',
    '            "Atomics.load(Module._raylibr_input,2),"\n',
    '            "Atomics.exchange(Module._raylibr_input,3,0),"\n',
    '            "Atomics.load(Module._raylibr_input,4),"\n',
    '            "Atomics.load(Module._raylibr_input,5),"\n',
    '            "Atomics.load(Module._raylibr_input,6),"\n',
    "            \"Atomics.exchange(Module._raylibr_input,7,0)].join(','):''\"\n",
    '        );\n',
    '        if (_istr && _istr[0]) {\n',
    '            int _mx=0,_my=0,_on=0,_kc=0,_mb0=0,_mb1=0,_kdb=0,_ch=0;\n',
    '            sscanf(_istr,"%d,%d,%d,%d,%d,%d,%d,%d",&_mx,&_my,&_on,&_kc,&_mb0,&_mb1,&_kdb,&_ch);\n',
    '            bool _now_on = (_on != 0);\n',
    '            if (_now_on && !_sab_prev_on) {\n',
    '                /* mouse just entered: suppress delta spike this frame */\n',
    '                CORE.Input.Mouse.previousPosition = (Vector2){(float)_mx,(float)_my};\n',
    '            }\n',
    '            CORE.Input.Mouse.currentPosition = (Vector2){(float)_mx,(float)_my};\n',
    '            CORE.Input.Mouse.cursorOnScreen = _now_on;\n',
    '            _sab_prev_on = _now_on;\n',
    '            CORE.Input.Mouse.currentButtonState[0] = _mb0;\n',
    '            CORE.Input.Mouse.currentButtonState[1] = _mb1;\n',
    '            if (_kc > 0 && _kc < MAX_KEYBOARD_KEYS) {\n',
    '                CORE.Input.Keyboard.currentKeyState[_kc] = 1;\n',
    '                if (CORE.Input.Keyboard.keyPressedQueueCount < MAX_KEY_PRESSED_QUEUE) {\n',
    '                    CORE.Input.Keyboard.keyPressedQueue[CORE.Input.Keyboard.keyPressedQueueCount] = _kc;\n',
    '                    CORE.Input.Keyboard.keyPressedQueueCount++;\n',
    '                }\n',
    '            }\n',
    '            static const int _kdb_keys[] = {87,65,83,68,263,262,265,264,32,91,93,46,44,340,344};\n',
    '            for (int _bi = 0; _bi < 15; _bi++) {\n',
    '                int _k = _kdb_keys[_bi];\n',
    '                if (_k < MAX_KEYBOARD_KEYS)\n',
    '                    CORE.Input.Keyboard.currentKeyState[_k] = (_kdb >> _bi) & 1;\n',
    '            }\n',
    '            if (_ch > 0) {\n',
    '                if (CORE.Input.Keyboard.charPressedQueueCount < MAX_CHAR_PRESSED_QUEUE) {\n',
    '                    CORE.Input.Keyboard.charPressedQueue[CORE.Input.Keyboard.charPressedQueueCount] = _ch;\n',
    '                    CORE.Input.Keyboard.charPressedQueueCount++;\n',
    '                }\n',
    '            }\n',
    '        }\n',
    '    }\n\n')

  old_poll <- "    CORE.Window.resizedLastFrame = false;\n}"
  result <- insert_before(p, old_poll, sab_input)
  if (!is.null(result)) {
    p <- result
    message("PollInputEvents patched")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: PollInputEvents patch target not found")
  }

  # 10. Suppress unused-variable warnings for tabWidth/tabHeight
  p <- gsub(
    "const int tabHeight = EM_ASM_INT( return window.innerHeight; );\n\n",
    "const int tabHeight = EM_ASM_INT( return window.innerHeight; );\n        (void)tabWidth; (void)tabHeight;\n\n",
    p, fixed = TRUE)
  message("Unused tabWidth/tabHeight warnings suppressed")

  # 11. Patch GetTime: fix wrong calculation (should be /1000, not *1000)
  old_time <- "    double time = emscripten_get_now()*1000.0;"
  new_time <- "    double time = emscripten_get_now()/1000.0;"
  if (grepl(old_time, p, fixed = TRUE)) {
    p <- str_replace1(p, old_time, new_time)
    message("GetTime fixed (was *1000, now /1000)")
  }

  write_file("platforms/rcore_web_emscripten.c", p)
  message("rcore_web_emscripten.c patched")
}


# ===========================================================================
# patch_miniaudio
# ===========================================================================
patch_miniaudio <- function() {
  path <- "external/miniaudio.h"
  m <- read_file(path)

  # Fix deprecated Emscripten version macros (lowercase → uppercase)
  m <- gsub("__EMSCRIPTEN_major__", "__EMSCRIPTEN_MAJOR__", m, fixed = TRUE)
  m <- gsub("__EMSCRIPTEN_minor__", "__EMSCRIPTEN_MINOR__", m, fixed = TRUE)
  m <- gsub("__EMSCRIPTEN_tiny__", "__EMSCRIPTEN_TINY__", m, fixed = TRUE)
  message("Deprecated Emscripten macros renamed to uppercase")

  # JS audio helper functions — injected via emscripten_run_script at context init.
  # Each element is one JS line; they get wrapped in C string delimiters below.
  jh <- c(
    "if(!globalThis._mah){",
    "globalThis._mah=1;",

    paste0("globalThis._ma_worker=(typeof AudioContext==='undefined'",
           "&&typeof webkitAudioContext==='undefined');"),

    paste0(
      "globalThis._ma_resolve=function(name){",
      "var us='_'+name;",
      "if(typeof globalThis[us]==='function')return globalThis[us];",
      "if(typeof globalThis[name]==='function')return globalThis[name];",
      "if(typeof Module!=='undefined'){",
      "if(typeof Module[us]==='function')return Module[us];",
      "if(typeof Module[name]==='function')return Module[name];",
      "if(Module.asm&&typeof Module.asm[us]==='function')return Module.asm[us];",
      "if(Module.asm&&typeof Module.asm[name]==='function')return Module.asm[name];",
      "}",
      "var tbl=typeof wasmTable!=='undefined'?wasmTable:",
      "(Module&&Module.wasmTable?Module.wasmTable:",
      "(Module&&Module.__indirect_function_table?Module.__indirect_function_table:null));",
      "if(tbl){",
      "var got=typeof GOT!=='undefined'?GOT:(Module&&Module.GOT?Module.GOT:null);",
      "if(got){",
      "var g=got[name]||got[us];",
      "if(g&&typeof g.value==='number'){try{var f=tbl.get(g.value);if(typeof f==='function')return f;}catch(e){}}",
      "}}",
      "return null;};"),

    paste0(
      "globalThis._ma_heap=function(){",
      "return typeof HEAPF32!=='undefined'?HEAPF32:",
      "(Module&&Module.HEAPF32?Module.HEAPF32:null);};"),

    paste0(
      "globalThis._ma_ctx_init=function(a,b,c,d,e){",
      "if(typeof(globalThis.miniaudio)==='undefined'){"),

    paste0(
      "globalThis.miniaudio={referenceCount:0};var m=globalThis.miniaudio;",
      "m.device_type={playback:a,capture:b,duplex:c};",
      "m.device_state={stopped:d,started:e};m.devices=[];",
      "m.track_device=function(d){",
      "for(var i=0;i<m.devices.length;i++){if(m.devices[i]==null){m.devices[i]=d;return i;}}",
      "m.devices.push(d);return m.devices.length-1;};",
      "m.untrack_device_by_index=function(i){",
      "m.devices[i]=null;",
      "while(m.devices.length>0&&m.devices[m.devices.length-1]==null)m.devices.pop();};",
      "m.get_device_by_index=function(i){return m.devices[i];};"),

    paste0(
      "if(globalThis._ma_worker){",
      "self.addEventListener('message',function(ev){",
      "if(ev.data&&ev.data.type==='__raylibr_audio_unlock')",
      "self.postMessage({type:'__raylibr_audio',action:'unlock'});});",
      "}else{"),

    paste0(
      "m.unlock_event_types=['touchend','click'];",
      "m.unlock=function(){for(var i=0;i<m.devices.length;i++){var d=m.devices[i];",
      "if(d!=null&&d.webaudio!=null&&d.state===m.device_state.started){",
      "d.webaudio.resume().then(function(){",
      "var fn=globalThis._ma_resolve('ma_device__on_notification_unlocked');",
      "if(fn)fn(d.pDevice);},function(e){});}}",
      "m.unlock_event_types.map(function(t){",
      "document.removeEventListener(t,m.unlock,true);});};",
      "m.unlock_event_types.map(function(t){",
      "document.addEventListener(t,m.unlock,true);});",
      "}",
      "}"),

    paste0(
      "globalThis.miniaudio.referenceCount+=1;",
      "if(globalThis._ma_worker){",
      "globalThis._ma_ctl=new Int32Array(new SharedArrayBuffer(64));",
      "self.postMessage({type:'__raylibr_audio',action:'init',",
      "ctl:globalThis._ma_ctl.buffer});}",
      "return 1;};"),

    paste0(
      "globalThis._ma_ctx_uninit=function(){",
      "if(typeof(globalThis.miniaudio)!=='undefined'){",
      "if(!globalThis._ma_worker){",
      "globalThis.miniaudio.unlock_event_types.map(function(t){",
      "document.removeEventListener(t,globalThis.miniaudio.unlock,true);});}",
      "globalThis.miniaudio.referenceCount-=1;",
      "if(globalThis.miniaudio.referenceCount===0){",
      "if(globalThis._ma_worker)",
      "self.postMessage({type:'__raylibr_audio',action:'uninit'});",
      "delete globalThis.miniaudio;}}};"),

    paste0(
      "globalThis._ma_dev_init=function(dt,ch,sr,bs,pb,pd){",
      "if(typeof(globalThis.miniaudio)==='undefined')return -1;",
      "var m=globalThis.miniaudio;var dv={};",
      "dv.pDevice=pd;dv.state=m.device_state.stopped;"),

    paste0(
      "if(globalThis._ma_worker){",
      "var rn=bs*8;var hb=16;",
      "var sab=new SharedArrayBuffer(hb+rn*ch*4);",
      "var hdr=new Int32Array(sab,0,4);",
      "hdr[0]=0;hdr[1]=0;hdr[2]=rn;hdr[3]=ch;",
      "dv.pcmSAB=sab;dv.pcmHdr=hdr;",
      "dv.pcmData=new Float32Array(sab,hb);",
      "dv.ch=ch;dv.bs=bs;dv.rn=rn;dv.pb=pb;",
      "var idx=m.track_device(dv);",
      "var ctl=globalThis._ma_ctl;",
      "Atomics.store(ctl,0,0);",
      "self.postMessage({type:'__raylibr_audio',action:'dev_init',",
      "idx:idx,pcm:sab,dt:dt,ch:ch,sr:sr,bs:bs});",
      "Atomics.wait(ctl,0,0);",
      "var st=Atomics.load(ctl,0);Atomics.store(ctl,0,0);",
      "if(st===2)return -1;",
      "dv.sr=ctl[1]||sr;",
      "dv._pb=globalThis._ma_resolve(",
      "'ma_device_process_pcm_frames_playback__webaudio');",
      "return idx;}"),

    paste0(
      "var o={};",
      "if(dt==m.device_type.playback&&sr!=0)o.sampleRate=sr;",
      "dv.webaudio=new(globalThis.AudioContext||",
      "globalThis.webkitAudioContext)(o);",
      "dv.webaudio.suspend();",
      "var ci=0,co=ch;if(dt!=m.device_type.playback)ci=ch;",
      "dv.scriptNode=dv.webaudio.createScriptProcessor(bs,ci,co);",
      "var _pb_fn=globalThis._ma_resolve(",
      "'ma_device_process_pcm_frames_playback__webaudio');",
      "var _cap_fn=globalThis._ma_resolve(",
      "'ma_device_process_pcm_frames_capture__webaudio');"),

    paste0(
      "dv.scriptNode.onaudioprocess=function(e){",
      "if(dv.intermediaryBufferView==null||",
      "dv.intermediaryBufferView.length==0)",
      "dv.intermediaryBufferView=new Float32Array(",
      "HEAPF32.buffer,pb,bs*ch);",
      "if(dt==m.device_type.capture||dt==m.device_type.duplex){",
      "for(var c=0;c<ch;c++){var ib=e.inputBuffer.getChannelData(c);",
      "var tb=dv.intermediaryBufferView;",
      "for(var f=0;f<bs;f++)tb[f*ch+c]=ib[f];}",
      "if(_cap_fn)_cap_fn(pd,bs,pb);}",
      "if(dt==m.device_type.playback||dt==m.device_type.duplex){",
      "if(_pb_fn)_pb_fn(pd,bs,pb);",
      "for(var c=0;c<e.outputBuffer.numberOfChannels;c++){",
      "var ob=e.outputBuffer.getChannelData(c);",
      "var tb=dv.intermediaryBufferView;",
      "for(var f=0;f<bs;f++)ob[f]=tb[f*ch+c];}}",
      "else{for(var c=0;c<e.outputBuffer.numberOfChannels;c++)",
      "e.outputBuffer.getChannelData(c).fill(0.0);}};"),

    paste0(
      "if(dt==m.device_type.capture||dt==m.device_type.duplex){",
      "navigator.mediaDevices.getUserMedia({audio:true,video:false})",
      ".then(function(s){dv.streamNode=dv.webaudio",
      ".createMediaStreamSource(s);",
      "dv.streamNode.connect(dv.scriptNode);",
      "dv.scriptNode.connect(dv.webaudio.destination);})",
      ".catch(function(e){});}",
      "if(dt==m.device_type.playback)",
      "dv.scriptNode.connect(dv.webaudio.destination);",
      "dv.pDevice=pd;return m.track_device(dv);};"),

    paste0(
      "globalThis._ma_dev_uninit=function(i){",
      "var d=globalThis.miniaudio.get_device_by_index(i);",
      "if(globalThis._ma_worker){",
      "self.postMessage({type:'__raylibr_audio',",
      "action:'dev_uninit',idx:i});",
      "}else{",
      "if(d.scriptNode!==undefined){",
      "d.scriptNode.onaudioprocess=function(e){};",
      "d.scriptNode.disconnect();d.scriptNode=undefined;}",
      "if(d.streamNode!==undefined){",
      "d.streamNode.disconnect();d.streamNode=undefined;}",
      "d.webaudio.close();d.webaudio=undefined;}",
      "d.pDevice=undefined;};"),

    paste0(
      "globalThis._ma_dev_start=function(i){",
      "var d=globalThis.miniaudio.get_device_by_index(i);",
      "d.state=globalThis.miniaudio.device_state.started;",
      "if(globalThis._ma_worker){",
      "self.postMessage({type:'__raylibr_audio',",
      "action:'dev_start',idx:i});",
      "globalThis._ma_gen_audio();return;}",
      "d.webaudio.resume();};"),

    paste0(
      "globalThis._ma_dev_stop=function(i){",
      "var d=globalThis.miniaudio.get_device_by_index(i);",
      "d.state=globalThis.miniaudio.device_state.stopped;",
      "if(globalThis._ma_worker){",
      "self.postMessage({type:'__raylibr_audio',",
      "action:'dev_stop',idx:i});return;}",
      "d.webaudio.suspend();};"),

    paste0(
      "globalThis._ma_gen_audio=function(){",
      "if(!globalThis.miniaudio||!globalThis._ma_worker)return;",
      "var m=globalThis.miniaudio;",
      "for(var i=0;i<m.devices.length;i++){var d=m.devices[i];",
      "if(!d||d.state!==m.device_state.started||!d._pb)continue;",
      "var hdr=d.pcmHdr;",
      "var wp=Atomics.load(hdr,0);var rp=Atomics.load(hdr,1);",
      "var rn=hdr[2];var used=(wp-rp+rn)%rn;var g=0;",
      "while(used<rn*3/4&&g<8){",
      "try{d._pb(d.pDevice,d.bs,d.pb);}catch(e){break;}",
      "var H=globalThis._ma_heap();if(!H)break;",
      "var src=new Float32Array(H.buffer,d.pb,d.bs*d.ch);",
      "var dst=d.pcmData;var off=(wp%rn)*d.ch;",
      "for(var s=0;s<d.bs*d.ch;s++)",
      "{dst[(off+s)%(rn*d.ch)]=src[s];}",
      "wp=(wp+d.bs)%rn;Atomics.store(hdr,0,wp);",
      "used=(wp-Atomics.load(hdr,1)+rn)%rn;g++;}}};"),

    "}")

  js_c_str <- paste0('        "', jh, '"', collapse = "\n")

  n_ok <- 0L

  # Block 1: capture_supported
  old <- paste0(
    '    return EM_ASM_INT({\n',
    '        return (navigator.mediaDevices !== undefined && navigator.mediaDevices.getUserMedia !== undefined);\n',
    '    }, 0) != 0; /* Must pass in a dummy argument for C99 compatibility. */')
  new <- paste0(
    '    return emscripten_run_script_int(\n',
    '        "(navigator.mediaDevices!==undefined&&navigator.mediaDevices.getUserMedia!==undefined)?1:0"\n',
    '    ) != 0;')
  if (grepl(old, m, fixed = TRUE)) {
    m <- str_replace1(m, old, new)
    n_ok <- n_ok + 1L
    message("miniaudio [1/10]: capture_supported")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: block 1 (capture_supported) not found")
  }

  # Block 2: sample rate detection
  old <- paste0(
    '    pDeviceInfo->nativeDataFormats[0].sampleRate = EM_ASM_INT({\n',
    '        try {\n',
    '            var temp = new (window.AudioContext || window.webkitAudioContext)();\n',
    '            var sampleRate = temp.sampleRate;\n',
    '            temp.close();\n',
    '            return sampleRate;\n',
    '        } catch(e) {\n',
    '            return 0;\n',
    '        }\n',
    '    }, 0);  /* Must pass in a dummy argument for C99 compatibility. */')
  new <- paste0(
    '    pDeviceInfo->nativeDataFormats[0].sampleRate = emscripten_run_script_int(\n',
    '        "try{var _t=new(globalThis.AudioContext||globalThis.webkitAudioContext)();"\n',
    '        "var _sr=_t.sampleRate;_t.close();_sr}catch(e){48000}"\n',
    '    );')
  if (grepl(old, m, fixed = TRUE)) {
    m <- str_replace1(m, old, new)
    n_ok <- n_ok + 1L
    message("miniaudio [2/10]: sample_rate_detect")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: block 2 (sample_rate_detect) not found")
  }

  # Block 3: device uninit (regex)
  pat3 <- paste0(
    "(?s)        EM_ASM\\(\\{\\s*var device = window\\.miniaudio\\.get_device_by_index\\(\\$0\\);",
    ".*?device\\.webaudio\\.close\\(\\);",
    ".*?\\}, pDevice->webaudio\\.deviceIndex\\);")
  repl3 <- paste0(
    '        {\n',
    '            char _cmd[64];\n',
    '            snprintf(_cmd, sizeof(_cmd), "globalThis._ma_dev_uninit(%d)", pDevice->webaudio.deviceIndex);\n',
    '            emscripten_run_script(_cmd);\n',
    '        }')
  res3 <- regex_replace1(m, pat3, repl3)
  m <- res3$text; n_ok <- n_ok + res3$n
  if (res3$n == 0L) patch_failures <<- patch_failures + 1L
  message(sprintf("miniaudio [3/10]: device_uninit %s", if (res3$n) "OK" else "NOT FOUND"))

  # Block 4: untrack device
  old <- paste0(
    '    EM_ASM({\n',
    '        window.miniaudio.untrack_device_by_index($0);\n',
    '    }, pDevice->webaudio.deviceIndex);')
  new <- paste0(
    '    {\n',
    '        char _cmd[64];\n',
    '        snprintf(_cmd, sizeof(_cmd), "globalThis.miniaudio.untrack_device_by_index(%d)", pDevice->webaudio.deviceIndex);\n',
    '        emscripten_run_script(_cmd);\n',
    '    }')
  if (grepl(old, m, fixed = TRUE)) {
    m <- str_replace1(m, old, new)
    n_ok <- n_ok + 1L
    message("miniaudio [4/10]: untrack_device")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: block 4 (untrack_device) not found")
  }

  # Block 5: device init (regex with lookbehind)
  pat5 <- paste0(
    "(?s)(?<!\\.)deviceIndex = EM_ASM_INT\\(\\{.*?\\},",
    " pConfig->deviceType, channels, sampleRate, periodSizeInFrames,",
    " pDevice->webaudio\\.pIntermediaryBuffer, pDevice\\);")
  repl5 <- paste0(
    '{\n',
    '            char _cmd[192];\n',
    '            snprintf(_cmd, sizeof(_cmd),\n',
    '                "globalThis._ma_dev_init(%d,%u,%u,%u,%u,%u)",\n',
    '                (int)pConfig->deviceType, channels, sampleRate, periodSizeInFrames,\n',
    '                (unsigned)(uintptr_t)pDevice->webaudio.pIntermediaryBuffer,\n',
    '                (unsigned)(uintptr_t)pDevice);\n',
    '            deviceIndex = emscripten_run_script_int(_cmd);\n',
    '        }')
  res5 <- regex_replace1(m, pat5, repl5)
  m <- res5$text; n_ok <- n_ok + res5$n
  if (res5$n == 0L) patch_failures <<- patch_failures + 1L
  message(sprintf("miniaudio [5/10]: device_init %s", if (res5$n) "OK" else "NOT FOUND"))

  # Block 6: get sample rate
  old <- '        sampleRate = (ma_uint32)EM_ASM_INT({ return window.miniaudio.get_device_by_index($0).webaudio.sampleRate; }, deviceIndex);'
  new <- paste0(
    '        {\n',
    '            char _cmd[128];\n',
    '            snprintf(_cmd, sizeof(_cmd),\n',
    '                "var _d=globalThis.miniaudio.get_device_by_index(%d);"\n',
    '                "_d.webaudio?_d.webaudio.sampleRate:(_d.sr||48000)", deviceIndex);\n',
    '            sampleRate = (ma_uint32)emscripten_run_script_int(_cmd);\n',
    '        }')
  if (grepl(old, m, fixed = TRUE)) {
    m <- str_replace1(m, old, new)
    n_ok <- n_ok + 1L
    message("miniaudio [6/10]: get_sample_rate")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: block 6 (get_sample_rate) not found")
  }

  # Block 7: device start
  old <- paste0(
    '    EM_ASM({\n',
    '        var device = window.miniaudio.get_device_by_index($0);\n',
    '        device.webaudio.resume();\n',
    '        device.state = window.miniaudio.device_state.started;\n',
    '    }, pDevice->webaudio.deviceIndex);')
  new <- paste0(
    '    {\n',
    '        char _cmd[64];\n',
    '        snprintf(_cmd, sizeof(_cmd), "globalThis._ma_dev_start(%d)", pDevice->webaudio.deviceIndex);\n',
    '        emscripten_run_script(_cmd);\n',
    '    }')
  if (grepl(old, m, fixed = TRUE)) {
    m <- str_replace1(m, old, new)
    n_ok <- n_ok + 1L
    message("miniaudio [7/10]: device_start")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: block 7 (device_start) not found")
  }

  # Block 8: device stop
  old <- paste0(
    '    EM_ASM({\n',
    '        var device = window.miniaudio.get_device_by_index($0);\n',
    '        device.webaudio.suspend();\n',
    '        device.state = window.miniaudio.device_state.stopped;\n',
    '    }, pDevice->webaudio.deviceIndex);')
  new <- paste0(
    '    {\n',
    '        char _cmd[64];\n',
    '        snprintf(_cmd, sizeof(_cmd), "globalThis._ma_dev_stop(%d)", pDevice->webaudio.deviceIndex);\n',
    '        emscripten_run_script(_cmd);\n',
    '    }')
  if (grepl(old, m, fixed = TRUE)) {
    m <- str_replace1(m, old, new)
    n_ok <- n_ok + 1L
    message("miniaudio [8/10]: device_stop")
  } else {
    patch_failures <<- patch_failures + 1L
    message("WARNING: block 8 (device_stop) not found")
  }

  # Block 9: context uninit (regex)
  pat9 <- "(?s)    EM_ASM\\(\\{\\s*if \\(typeof\\(window\\.miniaudio\\).*?delete window\\.miniaudio;.*?\\}\\s*\\}\\);"
  repl9 <- '    emscripten_run_script("globalThis._ma_ctx_uninit()");'
  res9 <- regex_replace1(m, pat9, repl9)
  m <- res9$text; n_ok <- n_ok + res9$n
  if (res9$n == 0L) patch_failures <<- patch_failures + 1L
  message(sprintf("miniaudio [9/10]: context_uninit %s", if (res9$n) "OK" else "NOT FOUND"))

  # Block 10: context init (regex — the big one)
  pat10 <- paste0(
    "(?s)resultFromJS = EM_ASM_INT\\(\\{.*?\\},",
    " ma_device_type_playback, ma_device_type_capture, ma_device_type_duplex,",
    " ma_device_state_stopped, ma_device_state_started\\);")
  repl10 <- paste0(
    "/* Initialize JS audio helper functions for SIDE_MODULE compatibility */\n",
    "    emscripten_run_script(\n",
    js_c_str, "\n",
    "    );\n",
    "    {\n",
    '        char _cmd[128];\n',
    '        snprintf(_cmd, sizeof(_cmd), "globalThis._ma_ctx_init(%d,%d,%d,%d,%d)",\n',
    '            ma_device_type_playback, ma_device_type_capture, ma_device_type_duplex,\n',
    '            ma_device_state_stopped, ma_device_state_started);\n',
    '        resultFromJS = emscripten_run_script_int(_cmd);\n',
    '    }')
  res10 <- regex_replace1(m, pat10, repl10)
  m <- res10$text; n_ok <- n_ok + res10$n
  if (res10$n == 0L) patch_failures <<- patch_failures + 1L
  message(sprintf("miniaudio [10/10]: context_init %s", if (res10$n) "OK" else "NOT FOUND"))

  write_file(path, m)
  message(sprintf("miniaudio.h patched (%d/10 EM_ASM blocks replaced)", n_ok))
}


# ===========================================================================
# Main
# ===========================================================================
patch_rcore()
patch_platform()
patch_miniaudio()

if (patch_failures > 0L) {
  message(sprintf("\nFATAL: %d patch(es) failed to apply. The upstream Raylib source may have changed.",
                  patch_failures))
  quit(status = 1)
}
