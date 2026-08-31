library(raylibr)

test_that("update_camera does not error", {
  skip_on_ci()
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(
    position   = c(10, 10, 10),
    target     = c(0, 0, 0),
    up         = c(0, 1, 0),
    fovy       = 45,
    projection = camera_projection$perspective
  )

  expect_no_error(update_camera(cam, camera_mode$free))
  expect_no_error(update_camera_pro(cam, c(0, 0, 0), c(0, 0, 0), 0))
})

test_that("draw_line_strip / draw_triangle_fan / draw_triangle_strip accept matrix input", {
  skip_on_ci()
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()

  pts <- matrix(c(10, 20, 30, 40, 10, 30, 50, 70), ncol = 2)
  expect_no_error(draw_line_strip(pts, "red"))

  pts <- matrix(c(50, 10, 90, 50, 50, 50, 10, 50), ncol = 2)
  expect_no_error(draw_triangle_fan(pts, "blue"))

  pts <- matrix(c(10, 30, 50, 70, 10, 30, 10, 30), ncol = 2)
  expect_no_error(draw_triangle_strip(pts, "green"))

  end_drawing()
})

test_that("spline drawing functions accept matrix input", {
  skip_on_ci()
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()

  pts <- matrix(c(10, 30, 60, 90, 10, 50, 20, 80), ncol = 2)
  expect_no_error(draw_spline_linear(pts, 2.0, "red"))
  expect_no_error(draw_spline_basis(pts, 2.0, "blue"))
  expect_no_error(draw_spline_catmull_rom(pts, 2.0, "green"))

  pts3 <- matrix(c(10, 50, 90, 10, 50, 90), ncol = 2)
  expect_no_error(draw_spline_bezier_quadratic(pts3, 2.0, "yellow"))

  pts4 <- matrix(c(10, 30, 70, 90, 10, 80, 80, 10), ncol = 2)
  expect_no_error(draw_spline_bezier_cubic(pts4, 2.0, "purple"))

  end_drawing()
})

test_that("draw_triangle_strip_3d accepts 3-column matrix", {
  skip_on_ci()
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  begin_mode_3d(camera_3d(c(5, 5, 5), c(0, 0, 0), c(0, 1, 0), 45,
                          camera_projection$perspective))

  pts <- matrix(c(0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0), ncol = 3)
  expect_no_error(draw_triangle_strip_3d(pts, "red"))

  end_mode_3d()
  end_drawing()
})
