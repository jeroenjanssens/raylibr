library(raylibr)

init_window(600, 400, "Hello, World!")

while (!window_should_close()) {
  begin_drawing()
  clear_background("black")
  draw_circle(300, 200, 50, "red")
  end_drawing()
}

close_window()

