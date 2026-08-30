#!/usr/bin/env python3
"""Patch Raylib source for webR worker support.

Patches rcore.c and rcore_web_emscripten.c so Raylib works inside a
Web Worker (no DOM) with OffscreenCanvas, SharedArrayBuffer input,
and BroadcastChannel frame transfer.

Audio support: since Web Audio API (AudioContext) is not available in
Web Workers, we proxy audio through the main thread via SharedArrayBuffer
ring buffers.  The worker generates PCM data each frame; the main thread's
ScriptProcessorNode reads from the ring buffer for playback.
"""
import re
import sys

SQ = "'"


def replace_function_body(source, func_sig, new_body):
    """Replace the body of a C function identified by its signature."""
    pat = re.compile(re.escape(func_sig) + r'\s*\{.*?\n\}', re.DOTALL)
    repl = func_sig + '\n{\n' + new_body + '\n}'
    result, n = pat.subn(repl, source, count=1)
    if n == 0:
        print(f"WARNING: Could not find function: {func_sig}", file=sys.stderr)
    return result


def patch_rcore():
    with open("rcore.c") as f:
        c = f.read()

    c = c.replace(
        "#if defined(PLATFORM_MEMORY) || defined(PLATFORM_WEB)",
        "#if defined(PLATFORM_MEMORY) || defined(PLATFORM_WEB) || defined(PLATFORM_WEB_EMSCRIPTEN)")

    c = c.replace(
        '#elif defined(PLATFORM_WEB)\n    #include "platforms/rcore_web.c"',
        '#elif defined(PLATFORM_WEB_EMSCRIPTEN)\n    #include "platforms/rcore_web_emscripten.c"\n'
        '#elif defined(PLATFORM_WEB)\n    #include "platforms/rcore_web.c"')

    c = c.replace(
        '#elif defined(PLATFORM_WEB)\n    TRACELOG(LOG_INFO, "Platform backend: WEB (HTML5)");',
        '#elif defined(PLATFORM_WEB_EMSCRIPTEN)\n    TRACELOG(LOG_INFO, "Platform backend: WEB_EMSCRIPTEN (HTML5)");\n'
        '#elif defined(PLATFORM_WEB)\n    TRACELOG(LOG_INFO, "Platform backend: WEB (HTML5)");')

    old = '    #if defined(__linux__) || defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__EMSCRIPTEN__)'
    new = (
        '    #if defined(PLATFORM_WEB_EMSCRIPTEN)\n'
        '        {\n'
        '            char _wt[192];\n'
        '            snprintf(_wt, sizeof(_wt),\n'
        '                "if(!Module._rs)Module._rs=new Int32Array(new SharedArrayBuffer(4));"\n'
        '                "Atomics.wait(Module._rs,0,0,%d)", (int)(sleepSeconds*1000.0));\n'
        '            emscripten_run_script(_wt);\n'
        '        }\n'
        '    #elif defined(__linux__) || defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__EMSCRIPTEN__)'
    )
    c = c.replace(old, new, 1)

    with open("rcore.c", "w") as f:
        f.write(c)
    print("rcore.c patched")


def patch_platform():
    with open("platforms/rcore_web_emscripten.c") as f:
        p = f.read()

    # Add a worker-detection flag at the top of the file (after includes)
    worker_flag = (
        '\n// Worker mode detection for webR integration\n'
        'static int _raylibr_worker = -1;\n'
        'static int IsWorkerMode(void) {\n'
        '    if (_raylibr_worker < 0)\n'
        '        _raylibr_worker = emscripten_run_script_int(\n'
        f'            "typeof document==={SQ}undefined{SQ}?1:0");\n'
        '    return _raylibr_worker;\n'
        '}\n'
    )
    # Insert after the EM_JS block for SetCanvasIdJs
    insert_after = "});\n\n//----------------------------------------------------------------------------------\n// Module Functions Declaration"
    p = p.replace(insert_after, "});\n" + worker_flag + "\n//----------------------------------------------------------------------------------\n// Module Functions Declaration", 1)
    print("Worker detection flag added")

    # 1. Patch WindowShouldClose
    p = replace_function_body(p, 'bool WindowShouldClose(void)',
        '    emscripten_run_script("if(!Module._rs)Module._rs=new Int32Array(new SharedArrayBuffer(4));Atomics.wait(Module._rs,0,0,1)");\n'
        '    return CORE.Window.shouldClose;')
    print("WindowShouldClose patched")

    # 2. Patch SwapScreenBuffer — generate audio + transfer frame via self.postMessage
    p = replace_function_body(p, 'void SwapScreenBuffer(void)',
        '    emscripten_run_script("if(globalThis._ma_gen_audio)globalThis._ma_gen_audio()");\n'
        '    emscripten_run_script(\n'
        '        "if(Module._raylibr_wm&&Module.canvas){"\n'
        '        "var _gl=GL.currentContext?GL.currentContext.GLctx:null;"\n'
        '        "if(_gl){var _w=Module.canvas.width,_h=Module.canvas.height,"\n'
        '        "_px=new Uint8Array(_w*_h*4);"\n'
        '        "_gl.readPixels(0,0,_w,_h,_gl.RGBA,_gl.UNSIGNED_BYTE,_px);"\n'
        f'        "self.postMessage({{type:{SQ}__raylibr_frame{SQ},w:_w,h:_h,px:_px.buffer}},[_px.buffer]);"\n'
        '        "}}"\n'
        '    );')
    print("SwapScreenBuffer patched")

    # 3. Patch InitPlatform: add OffscreenCanvas/BC/SAB setup + worker-safe context creation
    init_js = (
        '    if (IsWorkerMode()) {\n'
        '        emscripten_run_script(\n'
        f'            "if(!Module.canvas){{var _c=new OffscreenCanvas(1,1);_c.id={SQ}canvas{SQ};Module.canvas=_c;}}"\n'
        f'            "if(!Module._raylibr_wm){{"\n'
        f'            "Module._raylibr_wm=true;"\n'
        f'            "try{{Module._raylibr_input=new Int32Array(new SharedArrayBuffer(32));"\n'
        f'            "self.postMessage({{type:{SQ}__raylibr_sab{SQ},sab:Module._raylibr_input.buffer}});}}catch(e){{}}"\n'
        '            "}"\n'
        '        );\n'
        '    }\n'
    )
    old_init = "    SetCanvasIdJs(platform.canvasId, 64);"
    p = p.replace(old_init, init_js + old_init, 1)
    print("InitPlatform: OffscreenCanvas setup added")

    # 4. Patch WebGL context creation: use GL.createContext() in worker mode
    old_ctx = (
        '        // Create WebGL context\n'
        '        platform.glContext = emscripten_webgl_create_context(platform.canvasId, &attribs);\n'
        '        if (platform.glContext == 0) return 0;\n'
        '\n'
        '        emscripten_webgl_make_context_current(platform.glContext);'
    )
    new_ctx = (
        '        // Create WebGL context (worker-compatible path)\n'
        '        if (IsWorkerMode()) {\n'
        '            char _glcmd[512];\n'
        '            snprintf(_glcmd, sizeof(_glcmd),\n'
        '                "Module.canvas.width=%d;Module.canvas.height=%d;"\n'
        f'                "var _a={{majorVersion:%d,minorVersion:0,alpha:true,depth:true,stencil:%s,antialias:%s,"\n'
        f'                "premultipliedAlpha:true,preserveDrawingBuffer:true,powerPreference:{SQ}default{SQ},"\n'
        '                "failIfMajorPerformanceCaveat:false,enableExtensionsByDefault:true};"\n'
        '                "var _h=GL.createContext(Module.canvas,_a);"\n'
        '                "_emscripten_webgl_make_context_current(_h);"\n'
        '                "String(_h)",\n'
        '                CORE.Window.screen.width, CORE.Window.screen.height,\n'
        '                attribs.majorVersion,\n'
        '                attribs.stencil ? "true" : "false",\n'
        '                attribs.antialias ? "true" : "false");\n'
        '            const char *_r = emscripten_run_script_string(_glcmd);\n'
        '            platform.glContext = _r ? atoi(_r) : 0;\n'
        '            if (platform.glContext == 0) return 0;\n'
        '        } else {\n'
        '            platform.glContext = emscripten_webgl_create_context(platform.canvasId, &attribs);\n'
        '            if (platform.glContext == 0) return 0;\n'
        '            emscripten_webgl_make_context_current(platform.glContext);\n'
        '        }'
    )
    count = p.count(old_ctx)
    p = p.replace(old_ctx, new_ctx)
    print(f"WebGL context creation patched ({count} occurrences)")

    # 5. Patch emscripten_set_window_title: skip in worker mode
    old_title = '    emscripten_set_window_title((CORE.Window.title != 0)? CORE.Window.title : " ");'
    new_title = '    if (!IsWorkerMode()) emscripten_set_window_title((CORE.Window.title != 0)? CORE.Window.title : " ");'
    p = p.replace(old_title, new_title, 1)
    print("Window title patched")

    # 6. Wrap all DOM event callback registrations in !IsWorkerMode()
    # Find the block from "Setup window/canvas events callbacks" to "Trigger resize callback"
    old_callbacks = (
        '    // Setup window/canvas events callbacks\n'
        '    emscripten_set_fullscreenchange_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, NULL, 1, EmscriptenFullscreenChangeCallback);\n'
        '    emscripten_set_resize_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, NULL, 1, EmscriptenResizeCallback);\n'
        '    emscripten_set_blur_callback(platform.canvasId, NULL, 1, EmscriptenFocusCallback);\n'
        '    emscripten_set_focus_callback(platform.canvasId, NULL, 1, EmscriptenFocusCallback);\n'
        '    emscripten_set_visibilitychange_callback(NULL, 1, EmscriptenVisibilityChangeCallback);\n'
        '\n'
        '    // Setup input events\n'
        '    emscripten_set_keypress_callback(platform.canvasId, NULL, 1, EmscriptenKeyboardCallback);\n'
        '    emscripten_set_keydown_callback(platform.canvasId, NULL, 1, EmscriptenKeyboardCallback);\n'
        '    emscripten_set_keyup_callback(platform.canvasId, NULL, 1, EmscriptenKeyboardCallback);\n'
        '\n'
        '    emscripten_set_click_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n'
        '    //emscripten_set_dblclick_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n'
        '    emscripten_set_mousedown_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n'
        '    emscripten_set_mouseup_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n'
        '    emscripten_set_mousemove_callback(platform.canvasId, NULL, 1, EmscriptenMouseCallback);\n'
        '    emscripten_set_mousemove_callback(platform.canvasId, NULL, 1, EmscriptenMouseMoveCallback);\n'
        '    emscripten_set_wheel_callback(platform.canvasId, NULL, 1, EmscriptenMouseWheelCallback);\n'
        '    emscripten_set_pointerlockchange_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, NULL, 1, EmscriptenPointerlockCallback);\n'
        '\n'
        '    emscripten_set_touchstart_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n'
        '    emscripten_set_touchend_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n'
        '    emscripten_set_touchmove_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n'
        '    emscripten_set_touchcancel_callback(platform.canvasId, NULL, 1, EmscriptenTouchCallback);\n'
        '\n'
        '    emscripten_set_gamepadconnected_callback(NULL, 1, EmscriptenGamepadCallback);\n'
        '    emscripten_set_gamepaddisconnected_callback(NULL, 1, EmscriptenGamepadCallback);\n'
        '\n'
        '    // Trigger resize callback to force initial size\n'
        '    EmscriptenResizeCallback(EMSCRIPTEN_EVENT_RESIZE, NULL, NULL);'
    )
    new_callbacks = '    if (!IsWorkerMode()) {\n' + old_callbacks + '\n    }'
    if old_callbacks in p:
        p = p.replace(old_callbacks, new_callbacks, 1)
        print("DOM event callbacks wrapped in worker check")
    else:
        print("WARNING: Could not find callback registration block", file=sys.stderr)

    # 7. Patch SetMouseCursor: skip DOM style manipulation in worker
    old_cursor = '        if (!CORE.Input.Mouse.cursorLocked) EM_ASM( { Module.canvas.style.cursor = UTF8ToString($0); }, cursorLUT[cursor]);'
    new_cursor = '        if (!CORE.Input.Mouse.cursorLocked && !IsWorkerMode()) EM_ASM( { Module.canvas.style.cursor = UTF8ToString($0); }, cursorLUT[cursor]);'
    if old_cursor in p:
        p = p.replace(old_cursor, new_cursor, 1)
        print("SetMouseCursor patched")

    # 8. Patch PollInputEvents: read input from SAB
    # SAB layout (8 x Int32 = 32 bytes):
    #  [0] mouse X,  [1] mouse Y,  [2] cursor on screen,
    #  [3] key pressed (consumed),  [4] left button,  [5] right button,
    #  [6] key-down bitmask (W=1,A=2,S=4,D=8,Left=16,Right=32,Up=64,Down=128,
    #       Space=256,[=512,]=1024,.=2048,,=4096,LShift=8192,RShift=16384),
    #  [7] char pressed (consumed)
    sab_input = (
        '    // Read input from SharedArrayBuffer (webR worker integration)\n'
        '    if (IsWorkerMode()) {\n'
        '        static bool _sab_prev_on = false;\n'
        '        const char *_istr = emscripten_run_script_string(\n'
        '            "Module._raylibr_input?"\n'
        '            "[Atomics.load(Module._raylibr_input,0),"\n'
        '            "Atomics.load(Module._raylibr_input,1),"\n'
        '            "Atomics.load(Module._raylibr_input,2),"\n'
        '            "Atomics.exchange(Module._raylibr_input,3,0),"\n'
        '            "Atomics.load(Module._raylibr_input,4),"\n'
        '            "Atomics.load(Module._raylibr_input,5),"\n'
        '            "Atomics.load(Module._raylibr_input,6),"\n'
        f'            "Atomics.exchange(Module._raylibr_input,7,0)].join({SQ},{SQ}):{SQ}{SQ}"\n'
        '        );\n'
        '        if (_istr && _istr[0]) {\n'
        '            int _mx=0,_my=0,_on=0,_kc=0,_mb0=0,_mb1=0,_kdb=0,_ch=0;\n'
        '            sscanf(_istr,"%d,%d,%d,%d,%d,%d,%d,%d",&_mx,&_my,&_on,&_kc,&_mb0,&_mb1,&_kdb,&_ch);\n'
        '            bool _now_on = (_on != 0);\n'
        '            if (_now_on && !_sab_prev_on) {\n'
        '                /* mouse just entered: suppress delta spike this frame */\n'
        '                CORE.Input.Mouse.previousPosition = (Vector2){(float)_mx,(float)_my};\n'
        '            }\n'
        '            CORE.Input.Mouse.currentPosition = (Vector2){(float)_mx,(float)_my};\n'
        '            CORE.Input.Mouse.cursorOnScreen = _now_on;\n'
        '            _sab_prev_on = _now_on;\n'
        '            CORE.Input.Mouse.currentButtonState[0] = _mb0;\n'
        '            CORE.Input.Mouse.currentButtonState[1] = _mb1;\n'
        '            if (_kc > 0 && _kc < MAX_KEYBOARD_KEYS) {\n'
        '                CORE.Input.Keyboard.currentKeyState[_kc] = 1;\n'
        '                if (CORE.Input.Keyboard.keyPressedQueueCount < MAX_KEY_PRESSED_QUEUE) {\n'
        '                    CORE.Input.Keyboard.keyPressedQueue[CORE.Input.Keyboard.keyPressedQueueCount] = _kc;\n'
        '                    CORE.Input.Keyboard.keyPressedQueueCount++;\n'
        '                }\n'
        '            }\n'
        '            static const int _kdb_keys[] = {87,65,83,68,263,262,265,264,32,91,93,46,44,340,344};\n'
        '            for (int _bi = 0; _bi < 15; _bi++) {\n'
        '                int _k = _kdb_keys[_bi];\n'
        '                if (_k < MAX_KEYBOARD_KEYS)\n'
        '                    CORE.Input.Keyboard.currentKeyState[_k] = (_kdb >> _bi) & 1;\n'
        '            }\n'
        '            if (_ch > 0) {\n'
        '                if (CORE.Input.Keyboard.charPressedQueueCount < MAX_CHAR_PRESSED_QUEUE) {\n'
        '                    CORE.Input.Keyboard.charPressedQueue[CORE.Input.Keyboard.charPressedQueueCount] = _ch;\n'
        '                    CORE.Input.Keyboard.charPressedQueueCount++;\n'
        '                }\n'
        '            }\n'
        '        }\n'
        '    }\n\n'
    )
    old_poll = "    CORE.Window.resizedLastFrame = false;\n}"
    idx = p.find(old_poll)
    if idx >= 0:
        p = p[:idx] + sab_input + p[idx:]
        print("PollInputEvents patched")
    else:
        print("WARNING: PollInputEvents patch target not found", file=sys.stderr)

    # 8. Patch GetTime: fix wrong calculation (should be /1000, not *1000)
    old_time = '    double time = emscripten_get_now()*1000.0;'
    new_time = '    double time = emscripten_get_now()/1000.0;'
    if old_time in p:
        p = p.replace(old_time, new_time, 1)
        print("GetTime fixed (was *1000, now /1000)")

    with open("platforms/rcore_web_emscripten.c", "w") as f:
        f.write(p)
    print("rcore_web_emscripten.c patched")


def patch_miniaudio():
    """Patch miniaudio.h: replace EM_ASM/EM_ASM_INT blocks with emscripten_run_script.

    EM_ASM embeds JavaScript at compile time, but those JS strings are NOT
    registered with the Emscripten runtime in SIDE_MODULE builds (webR).
    emscripten_run_script evaluates JS at runtime and works in any context.

    Audio in a Web Worker requires proxying to the main thread because
    AudioContext is not available in workers.  We use SharedArrayBuffer
    ring buffers for PCM data transfer and Atomics for synchronization.
    """
    path = "external/miniaudio.h"
    with open(path) as f:
        m = f.read()

    # ---- JS audio helper functions (C string literal lines) ----
    # Injected once via emscripten_run_script at ma_context_init__webaudio time.
    #
    # Worker mode: AudioContext is unavailable, so audio operations are proxied
    # to the main thread via postMessage + SharedArrayBuffer.  PCM data flows
    # through a ring buffer; Atomics.wait/notify synchronize init handshakes.
    #
    # Non-worker mode: uses AudioContext directly (original miniaudio behaviour).

    _jh = [
        "if(!globalThis._mah){",
        "globalThis._mah=1;",

        # Detect worker mode (no AudioContext available)
        "globalThis._ma_worker=(typeof AudioContext==='undefined'"
        "&&typeof webkitAudioContext==='undefined');",

        # Resolve WASM-exported C functions.
        # SIDE_MODULE exports live in GOT (Global Offset Table) as WebAssembly.Global
        # objects; their .value is a function table index.  We also check the classic
        # globalThis / Module / Module.asm paths for non-SIDE_MODULE builds.
        "globalThis._ma_resolve=function(name){"
        "var us='_'+name;"
        "if(typeof globalThis[us]==='function')return globalThis[us];"
        "if(typeof globalThis[name]==='function')return globalThis[name];"
        "if(typeof Module!=='undefined'){"
        "if(typeof Module[us]==='function')return Module[us];"
        "if(typeof Module[name]==='function')return Module[name];"
        "if(Module.asm&&typeof Module.asm[us]==='function')return Module.asm[us];"
        "if(Module.asm&&typeof Module.asm[name]==='function')return Module.asm[name];"
        "}"
        "var tbl=typeof wasmTable!=='undefined'?wasmTable:"
        "(Module&&Module.wasmTable?Module.wasmTable:"
        "(Module&&Module.__indirect_function_table?Module.__indirect_function_table:null));"
        "if(tbl){"
        "var got=typeof GOT!=='undefined'?GOT:(Module&&Module.GOT?Module.GOT:null);"
        "if(got){"
        "var g=got[name]||got[us];"
        "if(g&&typeof g.value==='number'){try{var f=tbl.get(g.value);if(typeof f==='function')return f;}catch(e){}}"
        "}}"
        "return null;};",

        # HEAPF32 accessor (handles different Emscripten environments)
        "globalThis._ma_heap=function(){"
        "return typeof HEAPF32!=='undefined'?HEAPF32:"
        "(Module&&Module.HEAPF32?Module.HEAPF32:null);};",

        # ---------- _ma_ctx_init ----------
        "globalThis._ma_ctx_init=function(a,b,c,d,e){"
        "if(typeof(globalThis.miniaudio)==='undefined'){",

        "globalThis.miniaudio={referenceCount:0};var m=globalThis.miniaudio;"
        "m.device_type={playback:a,capture:b,duplex:c};"
        "m.device_state={stopped:d,started:e};m.devices=[];"
        "m.track_device=function(d){"
        "for(var i=0;i<m.devices.length;i++){if(m.devices[i]==null){m.devices[i]=d;return i;}}"
        "m.devices.push(d);return m.devices.length-1;};"
        "m.untrack_device_by_index=function(i){"
        "m.devices[i]=null;"
        "while(m.devices.length>0&&m.devices[m.devices.length-1]==null)m.devices.pop();};"
        "m.get_device_by_index=function(i){return m.devices[i];};",

        # Worker: listen for unlock messages relayed from main thread
        "if(globalThis._ma_worker){"
        "self.addEventListener('message',function(ev){"
        "if(ev.data&&ev.data.type==='__raylibr_audio_unlock')"
        "self.postMessage({type:'__raylibr_audio',action:'unlock'});});"
        "}else{",

        # Non-worker: standard document-based audio unlock
        "m.unlock_event_types=['touchend','click'];"
        "m.unlock=function(){for(var i=0;i<m.devices.length;i++){var d=m.devices[i];"
        "if(d!=null&&d.webaudio!=null&&d.state===m.device_state.started){"
        "d.webaudio.resume().then(function(){"
        "var fn=globalThis._ma_resolve('ma_device__on_notification_unlocked');"
        "if(fn)fn(d.pDevice);},function(e){});}}"
        "m.unlock_event_types.map(function(t){"
        "document.removeEventListener(t,m.unlock,true);});};"
        "m.unlock_event_types.map(function(t){"
        "document.addEventListener(t,m.unlock,true);});"
        "}"
        "}",

        "globalThis.miniaudio.referenceCount+=1;"
        "if(globalThis._ma_worker){"
        "globalThis._ma_ctl=new Int32Array(new SharedArrayBuffer(64));"
        "self.postMessage({type:'__raylibr_audio',action:'init',"
        "ctl:globalThis._ma_ctl.buffer});}"
        "return 1;};",

        # ---------- _ma_ctx_uninit ----------
        "globalThis._ma_ctx_uninit=function(){"
        "if(typeof(globalThis.miniaudio)!=='undefined'){"
        "if(!globalThis._ma_worker){"
        "globalThis.miniaudio.unlock_event_types.map(function(t){"
        "document.removeEventListener(t,globalThis.miniaudio.unlock,true);});}"
        "globalThis.miniaudio.referenceCount-=1;"
        "if(globalThis.miniaudio.referenceCount===0){"
        "if(globalThis._ma_worker)"
        "self.postMessage({type:'__raylibr_audio',action:'uninit'});"
        "delete globalThis.miniaudio;}}};",

        # ---------- _ma_dev_init ----------
        "globalThis._ma_dev_init=function(dt,ch,sr,bs,pb,pd){"
        "if(typeof(globalThis.miniaudio)==='undefined')return -1;"
        "var m=globalThis.miniaudio;var dv={};"
        "dv.pDevice=pd;dv.state=m.device_state.stopped;",

        # Worker proxy path: create ring buffer SAB, ask main thread for AudioContext
        "if(globalThis._ma_worker){"
        "var rn=bs*8;var hb=16;"
        "var sab=new SharedArrayBuffer(hb+rn*ch*4);"
        "var hdr=new Int32Array(sab,0,4);"
        "hdr[0]=0;hdr[1]=0;hdr[2]=rn;hdr[3]=ch;"
        "dv.pcmSAB=sab;dv.pcmHdr=hdr;"
        "dv.pcmData=new Float32Array(sab,hb);"
        "dv.ch=ch;dv.bs=bs;dv.rn=rn;dv.pb=pb;"
        "var idx=m.track_device(dv);"
        "var ctl=globalThis._ma_ctl;"
        "Atomics.store(ctl,0,0);"
        "self.postMessage({type:'__raylibr_audio',action:'dev_init',"
        "idx:idx,pcm:sab,dt:dt,ch:ch,sr:sr,bs:bs});"
        "Atomics.wait(ctl,0,0);"
        "var st=Atomics.load(ctl,0);Atomics.store(ctl,0,0);"
        "if(st===2)return -1;"
        "dv.sr=ctl[1]||sr;"
        "dv._pb=globalThis._ma_resolve("
        "'ma_device_process_pcm_frames_playback__webaudio');"
        "return idx;}",

        # Non-worker path: original AudioContext + ScriptProcessorNode
        "var o={};"
        "if(dt==m.device_type.playback&&sr!=0)o.sampleRate=sr;"
        "dv.webaudio=new(globalThis.AudioContext||"
        "globalThis.webkitAudioContext)(o);"
        "dv.webaudio.suspend();"
        "var ci=0,co=ch;if(dt!=m.device_type.playback)ci=ch;"
        "dv.scriptNode=dv.webaudio.createScriptProcessor(bs,ci,co);"
        "var _pb_fn=globalThis._ma_resolve("
        "'ma_device_process_pcm_frames_playback__webaudio');"
        "var _cap_fn=globalThis._ma_resolve("
        "'ma_device_process_pcm_frames_capture__webaudio');",

        "dv.scriptNode.onaudioprocess=function(e){"
        "if(dv.intermediaryBufferView==null||"
        "dv.intermediaryBufferView.length==0)"
        "dv.intermediaryBufferView=new Float32Array("
        "HEAPF32.buffer,pb,bs*ch);"
        "if(dt==m.device_type.capture||dt==m.device_type.duplex){"
        "for(var c=0;c<ch;c++){var ib=e.inputBuffer.getChannelData(c);"
        "var tb=dv.intermediaryBufferView;"
        "for(var f=0;f<bs;f++)tb[f*ch+c]=ib[f];}"
        "if(_cap_fn)_cap_fn(pd,bs,pb);}"
        "if(dt==m.device_type.playback||dt==m.device_type.duplex){"
        "if(_pb_fn)_pb_fn(pd,bs,pb);"
        "for(var c=0;c<e.outputBuffer.numberOfChannels;c++){"
        "var ob=e.outputBuffer.getChannelData(c);"
        "var tb=dv.intermediaryBufferView;"
        "for(var f=0;f<bs;f++)ob[f]=tb[f*ch+c];}}"
        "else{for(var c=0;c<e.outputBuffer.numberOfChannels;c++)"
        "e.outputBuffer.getChannelData(c).fill(0.0);}};",

        "if(dt==m.device_type.capture||dt==m.device_type.duplex){"
        "navigator.mediaDevices.getUserMedia({audio:true,video:false})"
        ".then(function(s){dv.streamNode=dv.webaudio"
        ".createMediaStreamSource(s);"
        "dv.streamNode.connect(dv.scriptNode);"
        "dv.scriptNode.connect(dv.webaudio.destination);})"
        ".catch(function(e){});}"
        "if(dt==m.device_type.playback)"
        "dv.scriptNode.connect(dv.webaudio.destination);"
        "dv.pDevice=pd;return m.track_device(dv);};",

        # ---------- _ma_dev_uninit ----------
        "globalThis._ma_dev_uninit=function(i){"
        "var d=globalThis.miniaudio.get_device_by_index(i);"
        "if(globalThis._ma_worker){"
        "self.postMessage({type:'__raylibr_audio',"
        "action:'dev_uninit',idx:i});"
        "}else{"
        "if(d.scriptNode!==undefined){"
        "d.scriptNode.onaudioprocess=function(e){};"
        "d.scriptNode.disconnect();d.scriptNode=undefined;}"
        "if(d.streamNode!==undefined){"
        "d.streamNode.disconnect();d.streamNode=undefined;}"
        "d.webaudio.close();d.webaudio=undefined;}"
        "d.pDevice=undefined;};",

        # ---------- _ma_dev_start ----------
        "globalThis._ma_dev_start=function(i){"
        "var d=globalThis.miniaudio.get_device_by_index(i);"
        "d.state=globalThis.miniaudio.device_state.started;"
        "if(globalThis._ma_worker){"
        "self.postMessage({type:'__raylibr_audio',"
        "action:'dev_start',idx:i});"
        "globalThis._ma_gen_audio();return;}"
        "d.webaudio.resume();};",

        # ---------- _ma_dev_stop ----------
        "globalThis._ma_dev_stop=function(i){"
        "var d=globalThis.miniaudio.get_device_by_index(i);"
        "d.state=globalThis.miniaudio.device_state.stopped;"
        "if(globalThis._ma_worker){"
        "self.postMessage({type:'__raylibr_audio',"
        "action:'dev_stop',idx:i});return;}"
        "d.webaudio.suspend();};",

        # ---------- _ma_gen_audio ----------
        # Called from SwapScreenBuffer each frame (via emscripten_run_script).
        # Generates PCM data into the SharedArrayBuffer ring buffer so the
        # main thread's ScriptProcessorNode can read it for playback.
        "globalThis._ma_gen_audio=function(){"
        "if(!globalThis.miniaudio||!globalThis._ma_worker)return;"
        "var m=globalThis.miniaudio;"
        "for(var i=0;i<m.devices.length;i++){var d=m.devices[i];"
        "if(!d||d.state!==m.device_state.started||!d._pb)continue;"
        "var hdr=d.pcmHdr;"
        "var wp=Atomics.load(hdr,0);var rp=Atomics.load(hdr,1);"
        "var rn=hdr[2];var used=(wp-rp+rn)%rn;var g=0;"
        "while(used<rn*3/4&&g<8){"
        "try{d._pb(d.pDevice,d.bs,d.pb);}catch(e){break;}"
        "var H=globalThis._ma_heap();if(!H)break;"
        "var src=new Float32Array(H.buffer,d.pb,d.bs*d.ch);"
        "var dst=d.pcmData;var off=(wp%rn)*d.ch;"
        "for(var s=0;s<d.bs*d.ch;s++)"
        "{dst[(off+s)%(rn*d.ch)]=src[s];}"
        "wp=(wp+d.bs)%rn;Atomics.store(hdr,0,wp);"
        "used=(wp-Atomics.load(hdr,1)+rn)%rn;g++;}}};",

        # Close guard
        "}",
    ]
    js_c_str = '\n'.join(['        "' + line + '"' for line in _jh])

    n_ok = 0

    # ---- Block 1: ma_is_capture_supported__webaudio ----
    old = (
        '    return EM_ASM_INT({\n'
        '        return (navigator.mediaDevices !== undefined && navigator.mediaDevices.getUserMedia !== undefined);\n'
        '    }, 0) != 0; /* Must pass in a dummy argument for C99 compatibility. */'
    )
    new = (
        '    return emscripten_run_script_int(\n'
        '        "(navigator.mediaDevices!==undefined&&navigator.mediaDevices.getUserMedia!==undefined)?1:0"\n'
        '    ) != 0;'
    )
    if old in m:
        m = m.replace(old, new, 1)
        n_ok += 1
        print("miniaudio [1/10]: capture_supported")
    else:
        print("WARNING: block 1 (capture_supported) not found", file=sys.stderr)

    # ---- Block 2: sample rate detection in get_device_info ----
    # In a worker, AudioContext is unavailable; fall back to 48000 Hz.
    old = (
        '    pDeviceInfo->nativeDataFormats[0].sampleRate = EM_ASM_INT({\n'
        '        try {\n'
        '            var temp = new (window.AudioContext || window.webkitAudioContext)();\n'
        '            var sampleRate = temp.sampleRate;\n'
        '            temp.close();\n'
        '            return sampleRate;\n'
        '        } catch(e) {\n'
        '            return 0;\n'
        '        }\n'
        '    }, 0);  /* Must pass in a dummy argument for C99 compatibility. */'
    )
    new = (
        '    pDeviceInfo->nativeDataFormats[0].sampleRate = emscripten_run_script_int(\n'
        '        "try{var _t=new(globalThis.AudioContext||globalThis.webkitAudioContext)();"\n'
        '        "var _sr=_t.sampleRate;_t.close();_sr}catch(e){48000}"\n'
        '    );'
    )
    if old in m:
        m = m.replace(old, new, 1)
        n_ok += 1
        print("miniaudio [2/10]: sample_rate_detect")
    else:
        print("WARNING: block 2 (sample_rate_detect) not found", file=sys.stderr)

    # ---- Block 3: device uninit (ScriptProcessorNode path) ----
    m, n = re.subn(
        r'        EM_ASM\(\{\s*var device = window\.miniaudio\.get_device_by_index\(\$0\);'
        r'.*?device\.webaudio\.close\(\);'
        r'.*?\}, pDevice->webaudio\.deviceIndex\);',
        '        {\n'
        '            char _cmd[64];\n'
        '            snprintf(_cmd, sizeof(_cmd), "globalThis._ma_dev_uninit(%d)", pDevice->webaudio.deviceIndex);\n'
        '            emscripten_run_script(_cmd);\n'
        '        }',
        m, count=1, flags=re.DOTALL
    )
    n_ok += n
    print(f"miniaudio [3/10]: device_uninit {'OK' if n else 'NOT FOUND'}")

    # ---- Block 4: untrack device ----
    old = (
        '    EM_ASM({\n'
        '        window.miniaudio.untrack_device_by_index($0);\n'
        '    }, pDevice->webaudio.deviceIndex);'
    )
    new = (
        '    {\n'
        '        char _cmd[64];\n'
        '        snprintf(_cmd, sizeof(_cmd), "globalThis.miniaudio.untrack_device_by_index(%d)", pDevice->webaudio.deviceIndex);\n'
        '        emscripten_run_script(_cmd);\n'
        '    }'
    )
    if old in m:
        m = m.replace(old, new, 1)
        n_ok += 1
        print("miniaudio [4/10]: untrack_device")
    else:
        print("WARNING: block 4 (untrack_device) not found", file=sys.stderr)

    # ---- Block 5: device init ScriptProcessorNode (THE BIG ONE) ----
    # Negative lookbehind (?<!\.) ensures we match the standalone `deviceIndex`
    # in the #else path, not `pDevice->webaudio.deviceIndex` in the AudioWorklet path.
    m, n = re.subn(
        r'(?<!\.)deviceIndex = EM_ASM_INT\(\{.*?\},'
        r' pConfig->deviceType, channels, sampleRate, periodSizeInFrames,'
        r' pDevice->webaudio\.pIntermediaryBuffer, pDevice\);',
        '{\n'
        '            char _cmd[192];\n'
        '            snprintf(_cmd, sizeof(_cmd),\n'
        '                "globalThis._ma_dev_init(%d,%u,%u,%u,%u,%u)",\n'
        '                (int)pConfig->deviceType, channels, sampleRate, periodSizeInFrames,\n'
        '                (unsigned)(uintptr_t)pDevice->webaudio.pIntermediaryBuffer,\n'
        '                (unsigned)(uintptr_t)pDevice);\n'
        '            deviceIndex = emscripten_run_script_int(_cmd);\n'
        '        }',
        m, count=1, flags=re.DOTALL
    )
    n_ok += n
    print(f"miniaudio [5/10]: device_init {'OK' if n else 'NOT FOUND'}")

    # ---- Block 6: get sample rate after device init ----
    # In worker mode, device has .sr instead of .webaudio.sampleRate
    old = '        sampleRate = (ma_uint32)EM_ASM_INT({ return window.miniaudio.get_device_by_index($0).webaudio.sampleRate; }, deviceIndex);'
    new = (
        '        {\n'
        '            char _cmd[128];\n'
        '            snprintf(_cmd, sizeof(_cmd),\n'
        '                "var _d=globalThis.miniaudio.get_device_by_index(%d);"\n'
        '                "_d.webaudio?_d.webaudio.sampleRate:(_d.sr||48000)", deviceIndex);\n'
        '            sampleRate = (ma_uint32)emscripten_run_script_int(_cmd);\n'
        '        }'
    )
    if old in m:
        m = m.replace(old, new, 1)
        n_ok += 1
        print("miniaudio [6/10]: get_sample_rate")
    else:
        print("WARNING: block 6 (get_sample_rate) not found", file=sys.stderr)

    # ---- Block 7: device start ----
    old = (
        '    EM_ASM({\n'
        '        var device = window.miniaudio.get_device_by_index($0);\n'
        '        device.webaudio.resume();\n'
        '        device.state = window.miniaudio.device_state.started;\n'
        '    }, pDevice->webaudio.deviceIndex);'
    )
    new = (
        '    {\n'
        '        char _cmd[64];\n'
        '        snprintf(_cmd, sizeof(_cmd), "globalThis._ma_dev_start(%d)", pDevice->webaudio.deviceIndex);\n'
        '        emscripten_run_script(_cmd);\n'
        '    }'
    )
    if old in m:
        m = m.replace(old, new, 1)
        n_ok += 1
        print("miniaudio [7/10]: device_start")
    else:
        print("WARNING: block 7 (device_start) not found", file=sys.stderr)

    # ---- Block 8: device stop ----
    old = (
        '    EM_ASM({\n'
        '        var device = window.miniaudio.get_device_by_index($0);\n'
        '        device.webaudio.suspend();\n'
        '        device.state = window.miniaudio.device_state.stopped;\n'
        '    }, pDevice->webaudio.deviceIndex);'
    )
    new = (
        '    {\n'
        '        char _cmd[64];\n'
        '        snprintf(_cmd, sizeof(_cmd), "globalThis._ma_dev_stop(%d)", pDevice->webaudio.deviceIndex);\n'
        '        emscripten_run_script(_cmd);\n'
        '    }'
    )
    if old in m:
        m = m.replace(old, new, 1)
        n_ok += 1
        print("miniaudio [8/10]: device_stop")
    else:
        print("WARNING: block 8 (device_stop) not found", file=sys.stderr)

    # ---- Block 9: context uninit ----
    m, n = re.subn(
        r'    EM_ASM\(\{\s*if \(typeof\(window\.miniaudio\).*?delete window\.miniaudio;'
        r'.*?\}\s*\}\);',
        '    emscripten_run_script("globalThis._ma_ctx_uninit()");',
        m, count=1, flags=re.DOTALL
    )
    n_ok += n
    print(f"miniaudio [9/10]: context_uninit {'OK' if n else 'NOT FOUND'}")

    # ---- Block 10: context init (THE OTHER BIG ONE) ----
    m, n = re.subn(
        r'resultFromJS = EM_ASM_INT\(\{.*?\},'
        r' ma_device_type_playback, ma_device_type_capture, ma_device_type_duplex,'
        r' ma_device_state_stopped, ma_device_state_started\);',
        '/* Initialize JS audio helper functions for SIDE_MODULE compatibility */\n'
        '    emscripten_run_script(\n' +
        js_c_str + '\n'
        '    );\n'
        '    {\n'
        '        char _cmd[128];\n'
        '        snprintf(_cmd, sizeof(_cmd), "globalThis._ma_ctx_init(%d,%d,%d,%d,%d)",\n'
        '            ma_device_type_playback, ma_device_type_capture, ma_device_type_duplex,\n'
        '            ma_device_state_stopped, ma_device_state_started);\n'
        '        resultFromJS = emscripten_run_script_int(_cmd);\n'
        '    }',
        m, count=1, flags=re.DOTALL
    )
    n_ok += n
    print(f"miniaudio [10/10]: context_init {'OK' if n else 'NOT FOUND'}")

    with open(path, "w") as f:
        f.write(m)
    print(f"miniaudio.h patched ({n_ok}/10 EM_ASM blocks replaced)")


patch_rcore()
patch_platform()
patch_miniaudio()
