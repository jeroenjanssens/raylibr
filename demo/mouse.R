library(raylibr)

width <- 600
height <- 600

init_window(width, height, "Mouse test")

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
      d <- vector_2_distance(mp, from)
      m <- max(l - d, 0)
      to <- vector_2_move_towards(from, mp, -m/4)
      dd <- vector_2_distance(mp, to)
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
