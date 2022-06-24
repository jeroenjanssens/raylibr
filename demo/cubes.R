library(raylibr)

init_audio_device()
music <- load_music_stream("demo/mini1111.xm")

init_window(900, 600, "R & Raylib: Waving Cubes and Music")
cam <- camera_3d(position = c(30, 20, 30), target = c(0, 0, 0), up = c(0, 1, 0))
num_blocks <- 15
blocks <- seq(num_blocks) - 1

play_music_stream(music)
set_target_fps(100)

while(!window_should_close()) {
  update_music_stream(music)
  time <- get_time()
  scale <- (2 + sin(time)) * 0.7
  camera_time <- time * 0.3
  cam$position[c("x", "z")] <- c(cos(camera_time), sin(camera_time)) * 40

  begin_drawing()
  clear_background("white")
  begin_mode_3d(cam)
  draw_grid(10, 5)

  for (x in blocks) {
    for (y in blocks) {
      for (z in blocks) {
        block_scale = (x + y + z) / 30
        scatter = sin(block_scale * 20 + time * 4)
        cube_pos = (c(x, y, z) - num_blocks / 2) * scale * c(3, 2, 3) + scatter
        cube_size = (2.4 - scale) * block_scale
        cube_color = color_from_hsv(((x + y + z) * 18) %% 360, 0.75, 0.9)
        draw_cube(cube_pos, cube_size, cube_size, cube_size, cube_color)
      }
    }
  }

  end_mode_3d()
  end_drawing()
}

close_window()
unload_music_stream(music)
close_audio_device()
