test_that("init_window rejects non-integer width", {
  expect_error(init_window("bad", 480, "title"),
               "`width` must be an integer")
})

test_that("init_window rejects non-integer height", {
  expect_error(init_window(640, "bad", "title"),
               "`height` must be an integer")
})

test_that("init_window rejects non-string title", {
  expect_error(init_window(640, 480, 42),
               "`title` must be a string")
})

test_that("color rejects non-integer r", {
  expect_error(color("a", 0, 0, 0),
               "`r` must be a non-negative integer")
})

test_that("color rejects negative values", {
  expect_error(color(-1, 0, 0, 0),
               "`r` must be a non-negative integer")
})

test_that("rectangle rejects non-numeric x", {
  expect_error(rectangle("x", 0, 100, 200),
               "`x` must be a number")
})

test_that("set_target_fps rejects non-integer fps", {
  expect_error(set_target_fps("fast"),
               "`fps` must be an integer")
})

test_that("camera_2d rejects bad offset", {
  expect_error(camera_2d("bad", c(0, 0), 0, 1),
               "`offset` must be")
})

test_that("camera_3d rejects bad position", {
  expect_error(camera_3d("bad", c(0, 0, 0), c(0, 1, 0), 45, 0),
               "`position` must be")
})

test_that("bounding_box rejects bad min", {
  expect_error(bounding_box("bad", c(1, 1, 1)),
               "`min` must be")
})

test_that("ray rejects bad position", {
  expect_error(ray("bad", c(1, 0, 0)),
               "`position` must be")
})

test_that("color error messages include friendly type info", {
  expect_error(color(c(1, 2), 0, 0, 0), "numeric vector")
  expect_error(color(TRUE, 0, 0, 0), "logical")
})

test_that("struct field access rejects invalid field names", {
  c <- color(0, 0, 0, 0)
  expect_error(c$invalid, "no property")

  r <- rectangle(0, 0, 0, 0)
  expect_error(r$invalid, "no property")
})
