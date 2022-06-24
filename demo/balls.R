library(raylibr)

width <- 800
height <- 600
n <- 500

sizes <- runif(n, 2, 20)
xs <- runif(n, sizes, width-sizes)
ys <- runif(n, sizes, height-sizes)
dxs <- rnorm(n)
dys <- rnorm(n)
cs <- sample(colors(), n)

lower_alpha <- function(x) {
  x <- color(x)
  x$a <- 200
  x
}

cs <- purrr::map(cs, lower_alpha)

set_target_fps(100)
init_window(width, height, "Bouncing Balls")

while (!window_should_close()) {
  xs <- xs + (dxs/2)
  ys <- ys + (dys/2)
  oobx <- (xs >= (width - sizes)) | (xs <= sizes)
  ooby <- (ys >= (height - sizes)) | (ys <= sizes)
  dxs[oobx] <- dxs[oobx] * -1
  dys[ooby] <- dys[ooby] * -1
  xs <- xs + (dxs/2)
  ys <- ys + (dys/2)

  begin_drawing()
  clear_background("white")
  draw_circles(xs, ys, sizes, cs)
  draw_text(paste0("fps: ", get_fps()), 20, 20, 20, list(b=200, a=200))
  end_drawing()
}

close_window()
