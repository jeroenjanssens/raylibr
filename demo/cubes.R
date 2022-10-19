library(raylibr)

init_audio_device()
music <- load_music_stream(file.path(system.file(package = "raylibr"), "demo_resources","mini1111.xm"))

init_window(600, 400, "R & Raylib: Waving Cubes and Music")

cam <- camera_3d(position = c(30, 20, 30))

num_blocks <- 15
blocks <- seq(num_blocks) - 1

play_music_stream(music)
set_target_fps(300)

xyz <- as.matrix(expand.grid(blocks, blocks, blocks))
block_scale <- rowSums(xyz) / 30
cube_color <- lapply((rowSums(xyz) * 18) %% 360, color_from_hsv, 0.75, 0.9)

while (!window_should_close()) {
  update_music_stream(music)
  time <- get_time()
  scale <- (2 + sin(time)) * 0.7
  camera_time <- time * 0.3
  cam$position[c("x", "z")] <- c(cos(camera_time), sin(camera_time)) * 40

  scatter <- sin(block_scale * 20 + time * 4)
  cube_pos <- (xyz - num_blocks / 2) * scale * c(3, 2, 3) + scatter
  cube_size <- (2.4 - scale) * block_scale

  begin_drawing()
  clear_background("white")
  begin_mode_3d(cam)
  draw_grid(10, 5)
  draw_cube(cube_pos, cube_size, cube_size, cube_size, cube_color)
  end_mode_3d()
  draw_fps(10, 10)
  end_drawing()
}

close_window()
unload_music_stream(music)
close_audio_device()
