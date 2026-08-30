#include "raylib.h"
#include <math.h>

#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#endif

void update_frame(void) {
    float t = GetTime();
    float alpha = (sinf(t * 2.0f) + 1.0f) / 2.0f;

    BeginDrawing();
    ClearBackground(BLACK);

    for (int i = 10; i >= 1; i--) {
        float radius = i * 18.0f;
        unsigned char v = (unsigned char)(255.0f * (float)i / 10.0f * alpha);
        DrawCircle(300, 200, radius, (Color){v, 0, (unsigned char)(255 - v), 255});
    }

    unsigned char a = (unsigned char)(255.0f * alpha);
    DrawText("hello,", 225, 120, 64, (Color){0, 0, 0, a});
    DrawText("world!", 225, 220, 64, (Color){0, 0, 0, a});
    DrawFPS(10, 10);

    EndDrawing();
}

int main(void) {
    InitWindow(600, 400, "raylibr: Hello, World!");
    SetTargetFPS(60);

#ifdef __EMSCRIPTEN__
    emscripten_set_main_loop(update_frame, 0, 1);
#else
    while (!WindowShouldClose()) {
        update_frame();
    }
#endif

    CloseWindow();
    return 0;
}
