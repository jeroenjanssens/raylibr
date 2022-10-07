library(raylibr)

width <- 30
height <- 26
scale <- 30

init_window(width * scale, height * scale, title = "Snake in R and Raylib")

snake <- list(as.integer(c(width, height) / 2))

walls <- c(lapply(1:width,  function(x) c(x, 1)),
           lapply(1:width,  function(x) c(x, height)),
           lapply(1:height, function(x) c(1, x)),
           lapply(1:height, function(x) c(width, x)))

`%on%` <- function(needle, haystack) {
  for (candidate in haystack) {
    if (all(candidate == needle)) return(TRUE)
  }
  FALSE
}

random_empty_cell <- function(w, h, nonempty) {
  pos <- c(sample(w, 1), sample(h, 1))
  while(pos %on% nonempty) pos <- c(sample(w, 1), sample(h, 1))
  pos
}

food <- random_empty_cell(width, height, c(walls, snake))

directions <- list(up = c(0, -1),
                   down = c(0, 1),
                   left = c(-1, 0),
                   right = c(1, 0))

direction <- c(0, 0)

set_target_fps(10)

while(!window_should_close()) {
  key_code <- get_key_pressed()
  key_name <- ifelse(key_code, names(key)[[match(key_code, key)]], NA)

  # Is our move valid?
  if (key_name %in% names(directions)) {
    new_direction <- directions[[key_name]]
    if (sum(abs(direction + new_direction)) > 0) {
      direction <- new_direction
    }
  }

  snake <- unique(snake)
  new_head <- snake[[1]] + direction

  if (new_head %on% c(walls, snake[-1])) {
    # ouch, restart
    direction <- c(0, 0)
    snake <- list(as.integer(c(width, height) / 2))
    food <- random_empty_cell(width, height, c(walls, snake))
  } else if (new_head %on% list(food)) {
    # grow
    snake <- c(list(new_head), snake)
    food <- random_empty_cell(width, height, c(walls, snake))
  } else {
    # just move
    snake <- c(list(new_head), head(snake, -1))
  }

  begin_drawing()
  clear_background("black")
  lapply(walls, function(x) { draw_rectangle_v((x - 1) * scale + 1, c(scale, scale) - 2, "sienna") } )
  lapply(snake, function(x) { draw_rectangle_v((x - 1) * scale + 1, c(scale, scale) - 2, "olivedrab") })
  draw_circle_v(food * scale - scale / 2, scale / 2 - 4, "red")
  draw_text(paste0("SCORE: ", length(snake) - 1), 4, 2, scale - 2, "white")
  end_drawing()
}

close_window()
