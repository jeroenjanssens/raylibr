library(raylibr)

candidates <- c("red", "green", "blue", "orange", "black", "purple", "hotpink")
word <- ""
color <- ""

screen_size <- c(900, 600)
init_window(screen_size[1], screen_size[2], "Stroop Test")

font_size <- 200
font <- load_font_ex(file.path(system.file(package = "raylibr"), "demo_resources", "source-sans-pro-v14-latin-regular.ttf"), font_size)

while (!window_should_close()) {
  screen_size <- c(get_screen_width(), get_screen_height())

  if (get_key_pressed()) {
    prev_word <- word
    prev_color <- color
    while ((word == color) || (word == prev_word) || (color == prev_color)) {
      word <- sample(candidates, 1)
      color <- sample(candidates, 1)
    }
    text_size <- measure_text_ex(font, word, font_size, 0)
    text_pos <- screen_size / 2 - text_size / 2 - c(0, 20)
  }

  begin_drawing()
  clear_background("white")
  if (word != "") {
    draw_text_ex(font, word, text_pos, font_size, 0, color)
  }
  end_drawing()
}

close_window()
