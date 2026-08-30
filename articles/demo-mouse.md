# Mouse Test

A grid of dots that react to the mouse cursor: each dot moves away from
the pointer proportional to proximity, and its color shifts with
[`color_from_hsv()`](https://jeroenjanssens.github.io/raylibr/reference/color_from_hsv.md)
based on how far it was pushed. This demo exercises mouse input
([`get_mouse_position()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_position.md),
[`is_cursor_on_screen()`](https://jeroenjanssens.github.io/raylibr/reference/is_cursor_on_screen.md),
[`set_mouse_cursor()`](https://jeroenjanssens.github.io/raylibr/reference/set_mouse_cursor.md)),
raymath functions
([`vector2_distance()`](https://jeroenjanssens.github.io/raylibr/reference/vector2_distance.md),
[`vector2_move_towards()`](https://jeroenjanssens.github.io/raylibr/reference/vector2_move_towards.md)),
and
[`draw_circle_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle_v.md)
/
[`draw_line_v()`](https://jeroenjanssens.github.io/raylibr/reference/draw_line_v.md)
for rendering.

## Try it

Move your mouse over the canvas to interact with the dots.

## Run

``` r

demo("mouse", package = "raylibr")
```

## Source code

``` r

library(raylibr)

width <- 600
height <- 600

init_window(width, height, "R & Raylib: Mouse Test")

n <- 31
xs <- tail(head(seq(0, width, length.out = n), - 4), - 4)
ys <- tail(head(seq(0, height, length.out = n), - 4), - 4)

l <- 100

while(!window_should_close()) {

  mp <- get_mouse_position()

  begin_drawing()
  clear_background("black")

  if (is_cursor_on_screen()) {
    set_mouse_cursor(mouse_cursor$crosshair)
  } else {
    set_mouse_cursor(mouse_cursor$default)
  }

  for (x in xs) {
    for (y in ys) {
      from <- c(x, y)
      d <- vector2_distance(mp, from)
      m <- max(l - d, 0)
      to <- vector2_move_towards(from, mp, -m/4)
      dd <- vector2_distance(mp, to)
      if (dd < l/2) {
        draw_line_v(to, mp, "white")
      }
      draw_circle_v(to, 3, color_from_hsv(l - m, 0.9, 0.9))
    }
  }

  draw_fps(10, 10)
  end_drawing()
}

set_mouse_cursor(mouse_cursor$default)
close_window()
```
