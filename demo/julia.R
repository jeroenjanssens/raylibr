library(raylibr)
library(here)

points_of_interest <- list(
  c(-0.348827, 0.607167),
  c(-0.786268, 0.169728),
  c(-0.8, 0.156),
  c(0.285, 0.0),
  c(-0.835, -0.2321),
  c(-0.70176, -0.3842)
)

init_window(960, 540, "raylibr demo - julia sets")

s <- load_shader("", here("demo", "julia_set.fs"))

target <- load_render_texture(get_screen_width(), get_screen_height())
current_c <- points_of_interest[[1]]

zoom <- 1
offset <- c(get_screen_width(), get_screen_height()) / -2
offset_speed <- c(0, 0)

loc_c <- get_shader_location(s, "c")
loc_zoom <- get_shader_location(s, "zoom")
loc_offet <- get_shader_location(s, "offset")

set_shader_value(s, get_shader_location(s, "screenDims"),
                 c(get_screen_width(), get_screen_height()))

set_shader_value(s, loc_c, current_c)
set_shader_value(s, loc_zoom, zoom)
set_shader_value(s, loc_offet, offset)

increment_speed <- 0
show_controls <- TRUE
pause <- FALSE

set_target_fps(60)

while (!window_should_close()) {
  k <- get_key_pressed()

  if (k >= key$one && k <= key$six) {
    current_c <- points_of_interest[[k - key$one + 1]]
    zoom <- 1
    offset <- c(get_screen_width(), get_screen_height()) / -2
    offset_speed <- c(0, 0)
    set_shader_value(s, loc_c, current_c)
  }

  if (k == key$space) pause <- !pause
  if (k == key$enter) show_controls <- !show_controls

  if (!pause) {
    if (k == key$right) increment_speed <- increment_speed + 1
    if (k == key$left) increment_speed <- increment_speed - 1

    if (is_mouse_button_down(mouse_button$left) ||
        is_mouse_button_down(mouse_button$right)) {

      if (is_mouse_button_down(mouse_button$left)) zoom <- zoom * 1.003
      if (is_mouse_button_down(mouse_button$right)) zoom <- zoom / 1.003

      mouse_pos <- get_mouse_position()
      offset_speed <- mouse_pos - (c(get_screen_width(), get_screen_height()) / 2)
      offset <- offset + get_frame_time() * offset_speed
    } else {
      offset_speed <- c(0, 0)
    }

    set_shader_value(s, loc_zoom, zoom)
    set_shader_value(s, loc_offet, offset)

    current_c <- current_c + get_frame_time() * increment_speed * 0.0005
    set_shader_value(s, loc_c, current_c)
  }

  begin_texture_mode(target)
  clear_background("black")
  draw_rectangle(0, 0, get_screen_width(), get_screen_height(), "black")
  end_texture_mode()

  begin_drawing()
  clear_background("black")
  begin_shader_mode(s)
  draw_texture_ex(target$texture, c(0, 0), 0, 1, "white")
  end_shader_mode()

  if (show_controls) {
    draw_text("Press mouse buttons right/left to zoom in/out and move", 10, 15, 12, "white");
    draw_text("Press Enter to toggle these controls", 10, 30, 12, "white");
    draw_text("Press [1 - 6] to change point of interest", 10, 45, 12, "white");
    draw_text("Press Left or Right to change speed", 10, 60, 12, "white");
    draw_text("Press Space to pause movement animation", 10, 75, 12, "white");
  }

  end_drawing()

}

unload_shader(s)
unload_render_texture(target)
close_window()
