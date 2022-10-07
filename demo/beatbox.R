library(raylibr)

files <- list.files(file.path(system.file(package = "raylibr"), "demo_resources", "beatbox-samples"), full.names = TRUE)
ids <- sub("^.*\\/([a-z0-9]+)\\.wav$", "\\1", files)
texts <- c()
lives <- c()
angles <- c()
max_life <- 30

init_audio_device()
sounds <- lapply(files, load_sound)

s <- 600
init_window(s, s, "Beatbox like Jeroen")
set_target_fps(30)

background <- load_texture(file.path(system.file(package = "raylibr"), "demo_resources","beatbox.png"))

while (!window_should_close()) {
  k <- get_key_pressed()
  if (k == key$space) {
    message("Pressed Space: Stopping all sounds")
    stop_sound_multi()
  } else if ((k >= key$a) && (k <= key$z)) {
    keyname <- tolower(rawToChar(as.raw(k)))
    ix <- k - key$a + 1
    if (is_key_down(key$left_shift) || is_key_down(key$right_shift)) {
      ix <- ix + 26
      keyname <- toupper(keyname)
    }
    texts <- c(texts, ids[ix])
    lives <- c(lives, max_life)
    play_sound_multi(sounds[[ix]])
    message(paste0("Pressed ", keyname, ": Playing ", files[[ix]]))
  }

  lives <- lives - 1
  keep <- lives > 0
  lives <- lives[keep]
  texts <- texts[keep]

  begin_drawing()
  clear_background("black")
  draw_texture(background, 0, 0, "white")

  for (t in seq_along(texts)) {
    draw_text(texts[t], 320 + 2*(max_life - lives[t]), 290 + 1.5*(max_life - lives[t]), 20 + (max_life - lives[t]), fade("white", lives[t] / max_life))
  }

  end_drawing()
}

close_window()
close_audio_device()
