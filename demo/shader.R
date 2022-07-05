library(raylibr)
library(here)

init_window(800, 450, "Shader")

t <- load_texture(here("demo", "space.png"))
s <- load_shader("", here("demo", "wave.fs"))

loc_seconds <- get_shader_location(s, "secondes")
loc_freq_x <- get_shader_location(s, "freqX")
loc_freq_y <- get_shader_location(s, "freqY")
loc_amp_x <- get_shader_location(s, "ampX")
loc_amp_y <- get_shader_location(s, "ampY")
loc_speed_x <- get_shader_location(s, "speedX")
loc_speed_y <- get_shader_location(s, "speedY")

freq_x <- 25
freq_y <- 25
amp_x <- 5
amp_y <- 5
speed_x <- 8
speed_y <- 8

screen_size <- c(get_screen_width(), get_screen_height())
l <- get_shader_location(s, "size")
set_shader_value(s, l, screen_size)
set_shader_value(s, loc_freq_x, freq_x)
set_shader_value(s, loc_freq_y, freq_y)
set_shader_value(s, loc_amp_x, amp_x)
set_shader_value(s, loc_amp_y, amp_y)
set_shader_value(s, loc_speed_x, speed_x)
set_shader_value(s, loc_speed_y, speed_y)

seconds <- 0
set_target_fps(60)

while (!window_should_close()) {
  seconds <- seconds + get_frame_time()
  set_shader_value(s, loc_seconds, seconds)

  begin_drawing()
  clear_background("white")
  begin_shader_mode(s)
  draw_texture(t, 0, 0, "white")
  draw_texture(t, t$width, 0, "white")
  end_shader_mode()
  end_drawing()
}

unload_shader(s)

close_window()


