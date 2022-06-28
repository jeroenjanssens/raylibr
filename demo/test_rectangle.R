library(raylibr)

# rect <- rectangle(1, 2, 3, 4)
# rect
# rect[["y"]] <- 66
#
# rect
# rect$x
# rect
# rect$y
# rect$width
# rect$height
#
# rect$x <- 5
# rect$y <- 6
# rect
#
# rect$y
#
# rect$x <- rect$x + 1
# rect


init_window(600, 600, "test rectangle")

image <- load_image("demo/beatbox.png")
for (i in seq(100)) {
  image_draw_pixel(image, i, i, "white")
}
texture <- load_texture_from_image(image)

while(!window_should_close()) {
  begin_drawing()
  clear_background("white")
  draw_texture(texture, pos_x = 0, pos_y = 0, "white")
  end_drawing()
}

close_window()
