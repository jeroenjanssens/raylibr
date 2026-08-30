#include "raylib.h"
#include <stdlib.h>

#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#endif

#define GRID_W 20
#define GRID_H 16
#define SCALE 30
#define MAX_SNAKE 320

typedef struct { int x, y; } Cell;

Cell snake[MAX_SNAKE];
int snake_len;
Cell food;
int dx, dy;

static int cell_on_snake(int x, int y) {
    for (int i = 0; i < snake_len; i++)
        if (snake[i].x == x && snake[i].y == y) return 1;
    return 0;
}

static int cell_on_wall(int x, int y) {
    return x <= 0 || x > GRID_W || y <= 0 || y > GRID_H;
}

static void place_food(void) {
    do {
        food.x = GetRandomValue(2, GRID_W - 1);
        food.y = GetRandomValue(2, GRID_H - 1);
    } while (cell_on_snake(food.x, food.y));
}

static void reset_game(void) {
    snake_len = 1;
    snake[0] = (Cell){GRID_W / 2, GRID_H / 2};
    dx = 0; dy = 0;
    place_food();
}

void update_frame(void) {
    int key = GetKeyPressed();
    if (key == KEY_UP    && dy !=  1) { dx =  0; dy = -1; }
    if (key == KEY_DOWN  && dy != -1) { dx =  0; dy =  1; }
    if (key == KEY_LEFT  && dx !=  1) { dx = -1; dy =  0; }
    if (key == KEY_RIGHT && dx != -1) { dx =  1; dy =  0; }

    if (dx != 0 || dy != 0) {
        Cell new_head = {snake[0].x + dx, snake[0].y + dy};
        int hit_wall = cell_on_wall(new_head.x, new_head.y);
        int hit_self = 0;
        for (int i = 1; i < snake_len; i++)
            if (snake[i].x == new_head.x && snake[i].y == new_head.y) hit_self = 1;

        if (hit_wall || hit_self) {
            reset_game();
        } else if (new_head.x == food.x && new_head.y == food.y) {
            for (int i = snake_len; i > 0; i--) snake[i] = snake[i - 1];
            snake[0] = new_head;
            snake_len++;
            place_food();
        } else {
            for (int i = snake_len - 1; i > 0; i--) snake[i] = snake[i - 1];
            snake[0] = new_head;
        }
    }

    BeginDrawing();
    ClearBackground(BLACK);

    // Walls
    Color sienna = {160, 82, 45, 255};
    for (int x = 1; x <= GRID_W; x++) {
        DrawRectangle((x - 1) * SCALE + 1, 0 * SCALE + 1, SCALE - 2, SCALE - 2, sienna);
        DrawRectangle((x - 1) * SCALE + 1, (GRID_H - 1) * SCALE + 1, SCALE - 2, SCALE - 2, sienna);
    }
    for (int y = 1; y <= GRID_H; y++) {
        DrawRectangle(0 * SCALE + 1, (y - 1) * SCALE + 1, SCALE - 2, SCALE - 2, sienna);
        DrawRectangle((GRID_W - 1) * SCALE + 1, (y - 1) * SCALE + 1, SCALE - 2, SCALE - 2, sienna);
    }

    // Snake
    Color olive = {107, 142, 35, 255};
    for (int i = 0; i < snake_len; i++) {
        DrawRectangle((snake[i].x - 1) * SCALE + 1, (snake[i].y - 1) * SCALE + 1,
                      SCALE - 2, SCALE - 2, olive);
    }

    // Food
    DrawCircle(food.x * SCALE - SCALE / 2, food.y * SCALE - SCALE / 2, SCALE / 2 - 4, RED);

    DrawText(TextFormat("SCORE: %d", snake_len - 1), 4, 2, SCALE - 2, WHITE);
    EndDrawing();
}

int main(void) {
    InitWindow(GRID_W * SCALE, GRID_H * SCALE, "raylibr: Snake");
    SetTargetFPS(10);
    reset_game();

#ifdef __EMSCRIPTEN__
    emscripten_set_main_loop(update_frame, 0, 1);
#else
    while (!WindowShouldClose()) update_frame();
#endif

    CloseWindow();
    return 0;
}
