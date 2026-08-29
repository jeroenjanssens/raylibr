test_that("color construction and field access", {
  c <- color(255, 105, 180, 255)
  expect_s3_class(c, "color")
  expect_equal(c$r, 255)
  expect_equal(c$g, 105)
  expect_equal(c$b, 180)
  expect_equal(c$a, 255)
})

test_that("color field assignment", {
  c <- color(100, 100, 100, 255)
  c$r <- 200
  expect_equal(c$r, 200)
  c$g <- 50
  expect_equal(c$g, 50)
  c$b <- 25
  expect_equal(c$b, 25)
  c$a <- 128
  expect_equal(c$a, 128)
})

test_that("color print and as.character", {
  c <- color(1, 2, 3, 4)
  expect_equal(as.character(c), "color(r = 1, g = 2, b = 3, a = 4)")
  expect_output(print(c), "color\\(r = 1, g = 2, b = 3, a = 4\\)")
})

test_that("color .DollarNames", {
  c <- color(0, 0, 0, 0)
  expect_equal(.DollarNames(c), c("r", "g", "b", "a"))
})

test_that("color bracket access works like dollar", {
  c <- color(10, 20, 30, 40)
  expect_equal(c["r"], 10)
  expect_equal(c[["g"]], 20)
})

test_that("rectangle construction and field access", {
  r <- rectangle(10, 20, 100, 200)
  expect_s3_class(r, "rectangle")
  expect_equal(r$x, 10)
  expect_equal(r$y, 20)
  expect_equal(r$width, 100)
  expect_equal(r$height, 200)
})

test_that("rectangle field assignment", {
  r <- rectangle(10, 20, 100, 200)
  r$x <- 50
  expect_equal(r$x, 50)
  r$width <- 300
  expect_equal(r$width, 300)
})

test_that("rectangle print and as.character", {
  r <- rectangle(1, 2, 3, 4)
  expect_equal(as.character(r), "rectangle(x = 1, y = 2, width = 3, height = 4)")
  expect_output(print(r), "rectangle\\(x = 1, y = 2, width = 3, height = 4\\)")
})

test_that("bounding_box construction and field access", {
  bb <- bounding_box(c(0, 0, 0), c(1, 1, 1))
  expect_s3_class(bb, "bounding_box")
  expect_equal(unname(bb$min), c(0, 0, 0))
  expect_equal(unname(bb$max), c(1, 1, 1))
  expect_equal(names(bb$min), c("x", "y", "z"))
})

test_that("bounding_box field assignment", {
  bb <- bounding_box(c(0, 0, 0), c(1, 1, 1))
  bb$min <- c(-1, -1, -1)
  expect_equal(unname(bb$min), c(-1, -1, -1))
})

test_that("ray construction and field access", {
  r <- ray(c(0, 0, 0), c(1, 0, 0))
  expect_s3_class(r, "ray")
  expect_equal(unname(r$position), c(0, 0, 0))
  expect_equal(unname(r$direction), c(1, 0, 0))
  expect_equal(names(r$position), c("x", "y", "z"))
})

test_that("camera_2d construction and field access", {
  cam <- camera_2d(c(0, 0), c(100, 100), 0, 1.5)
  expect_s3_class(cam, "camera_2d")
  expect_equal(unname(cam$offset), c(0, 0))
  expect_equal(unname(cam$target), c(100, 100))
  expect_equal(names(cam$offset), c("x", "y"))
  expect_equal(cam$rotation, 0)
  expect_equal(cam$zoom, 1.5)
})

test_that("camera_2d field assignment", {
  cam <- camera_2d(c(0, 0), c(0, 0), 0, 1)
  cam$zoom <- 2.0
  expect_equal(cam$zoom, 2.0)
  cam$rotation <- 45
  expect_equal(cam$rotation, 45)
})

test_that("camera_3d construction and field access", {
  cam <- camera_3d(c(0, 10, 10), c(0, 0, 0), c(0, 1, 0), 45,
                   camera_projection$perspective)
  expect_s3_class(cam, "camera_3d")
  expect_equal(unname(cam$position), c(0, 10, 10))
  expect_equal(unname(cam$target), c(0, 0, 0))
  expect_equal(unname(cam$up), c(0, 1, 0))
  expect_equal(names(cam$position), c("x", "y", "z"))
  expect_equal(cam$fovy, 45)
  expect_equal(cam$projection, 0)
})

test_that("camera_3d field assignment", {
  cam <- camera_3d(c(0, 10, 10), c(0, 0, 0), c(0, 1, 0), 45, 0)
  cam$fovy <- 60
  expect_equal(cam$fovy, 60)
  cam$position <- c(5, 5, 5)
  expect_equal(unname(cam$position), c(5, 5, 5))
})
