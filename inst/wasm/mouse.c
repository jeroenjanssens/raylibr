#include "raylib.h"
#include "raymath.h"
#include <math.h>

#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#endif

#define WIDTH 600
#define HEIGHT 600
#define N 23
#define REACH 100.0f

float xs[N], ys[N];

void update_frame(void) {
    Vector2 mp = GetMousePosition();

    BeginDrawing();
    ClearBackground(BLACK);

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            Vector2 from = {xs[i], ys[j]};
            float d = Vector2Distance(mp, from);
            float m = fmaxf(REACH - d, 0);
            Vector2 to = Vector2MoveTowards(from, mp, -m / 4.0f);
            float dd = Vector2Distance(mp, to);
            if (dd < REACH / 2.0f) {
                DrawLineV(to, mp, WHITE);
            }
            DrawCircleV(to, 3, ColorFromHSV(REACH - m, 0.9f, 0.9f));
        }
    }

    DrawFPS(10, 10);
    EndDrawing();
}

int main(void) {
    for (int i = 0; i < N; i++) {
        xs[i] = (float)(i + 4) / (float)(N + 7) * WIDTH;
        ys[i] = (float)(i + 4) / (float)(N + 7) * HEIGHT;
    }

    InitWindow(WIDTH, HEIGHT, "raylibr: Mouse Test");
    SetTargetFPS(60);

#ifdef __EMSCRIPTEN__
    emscripten_set_main_loop(update_frame, 0, 1);
#else
    while (!WindowShouldClose()) update_frame();
#endif

    CloseWindow();
    return 0;
}
