library(raylibr)

shader_files <- list.files(file.path(system.file(package = "raylibr"), "demo_resources", "model"),
                           pattern = "*.fs", full.names = TRUE)
shader_files <- c("/none.fs", shader_files)
shader_names <- sub("^.*\\/([a-z0-9_]+)\\.fs$", "\\1", shader_files)

screen_width <- 600
screen_height <- 450

init_window(screen_width, screen_height, "R & Raylib: 3D Model and Post-Processing Shaders")

church_model <- load_model(file.path(system.file(package = "raylibr"), "demo_resources", "model", "church.obj"))
church_texture <- load_texture(file.path(system.file(package = "raylibr"), "demo_resources", "model", "church_diffuse.png"))
set_model_texture(church_model, 0, material_map_index$diffuse, church_texture)
church_position <- c(0, 0, 0)

shaders <- lapply(shader_files, function(x) { load_shader("", x) })
current_shader <- 1
target <- load_render_texture(screen_width, screen_height)

cam <- camera_3d(c(2, 3, 2), c(0, 1, 0), fovy = 70)
set_camera_mode(cam, camera_mode$orbital)
set_target_fps(60)

while (!window_should_close()) {
  cam <- update_camera(cam)

  if (is_key_pressed(key$right)) current_shader <- current_shader + 1
  if (is_key_pressed(key$left)) current_shader <- current_shader - 1
  current_shader <- ((current_shader - 1) %% length(shaders)) + 1

  begin_texture_mode(target)
  clear_background()
  begin_mode_3d(cam)
  draw_model(church_model, church_position, 0.1, "white")
  draw_grid(10, 1)
  end_mode_3d()
  end_texture_mode()

  begin_drawing()
  clear_background()
  begin_shader_mode(shaders[[current_shader]])
  draw_texture_rec(target$texture,
                   rectangle(0, 0, target$texture$width, -target$texture$height),
                   c(0,0), "white")
  end_shader_mode()
  draw_rectangle(0, 0, screen_width, 50, fade("white", 0.7))
  draw_text(paste0("shader ", current_shader, "/", length(shader_names), ": ",
                   shader_names[current_shader]),
            15, 15, 20, "black")
  end_drawing()
}

lapply(shaders, unload_shader)
unload_texture(church_texture)
unload_model(church_model)
unload_render_texture(target)

close_window()

