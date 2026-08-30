#include "raylib.h"
#include <stdlib.h>
#include <math.h>

#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#endif

#define N 1000
#define WIDTH 600
#define HEIGHT 400

float sizes[N], xs[N], ys[N], dxs[N], dys[N];
Color cs[N];

static float randf(float lo, float hi) {
    return lo + (float)rand() / (float)RAND_MAX * (hi - lo);
}

void update_frame(void) {
    for (int i = 0; i < N; i++) {
        xs[i] += dxs[i] / 2.0f;
        ys[i] += dys[i] / 2.0f;
        if (xs[i] >= WIDTH - sizes[i] || xs[i] <= sizes[i]) dxs[i] *= -1;
        if (ys[i] >= HEIGHT - sizes[i] || ys[i] <= sizes[i]) dys[i] *= -1;
        xs[i] += dxs[i] / 2.0f;
        ys[i] += dys[i] / 2.0f;
    }

    BeginDrawing();
    ClearBackground(WHITE);
    for (int i = 0; i < N; i++) {
        DrawCircle((int)xs[i], (int)ys[i], sizes[i], cs[i]);
    }
    DrawText(TextFormat("fps: %d", GetFPS()), 20, 20, 20, BLUE);
    EndDrawing();
}

int main(void) {
    SetRandomSeed(42);
    for (int i = 0; i < N; i++) {
        sizes[i] = randf(2, 20);
        xs[i] = randf(sizes[i], WIDTH - sizes[i]);
        ys[i] = randf(sizes[i], HEIGHT - sizes[i]);
        dxs[i] = randf(-2, 2);
        dys[i] = randf(-2, 2);
        cs[i] = (Color){
            (unsigned char)GetRandomValue(50, 230),
            (unsigned char)GetRandomValue(50, 230),
            (unsigned char)GetRandomValue(50, 230),
            180
        };
    }

    InitWindow(WIDTH, HEIGHT, "raylibr: Bouncing Balls");
    SetTargetFPS(60);

#ifdef __EMSCRIPTEN__
    emscripten_set_main_loop(update_frame, 0, 1);
#else
    while (!WindowShouldClose()) update_frame();
#endif

    CloseWindow();
    return 0;
}
