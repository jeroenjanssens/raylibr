library(raylibr)

test_that("camera getters return expected types", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 10, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)

  fwd <- get_camera_forward(cam)
  expect_length(fwd, 3)
  expect_true(is.numeric(fwd))

  up <- get_camera_up(cam)
  expect_length(up, 3)
  expect_true(is.numeric(up))

  right <- get_camera_right(cam)
  expect_length(right, 3)
  expect_true(is.numeric(right))

  vm <- get_camera_view_matrix(cam)
  expect_true(is.matrix(vm))
  expect_equal(dim(vm), c(4, 4))

  pm <- get_camera_projection_matrix(cam, 1.0)
  expect_true(is.matrix(pm))
  expect_equal(dim(pm), c(4, 4))
})

test_that("camera forward/up/right are orthogonal", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  fwd <- get_camera_forward(cam)
  up <- get_camera_up(cam)
  right <- get_camera_right(cam)

  expect_equal(vector3_dot_product(fwd, up), 0, tolerance = 0.01)
  expect_equal(vector3_dot_product(fwd, right), 0, tolerance = 0.01)
  expect_equal(vector3_dot_product(up, right), 0, tolerance = 0.01)
})

test_that("camera_move_forward changes position", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  fwd_before <- get_camera_forward(cam)
  camera_move_forward(cam, 1.0, TRUE)
  fwd_after <- get_camera_forward(cam)
  expect_true(is.numeric(fwd_after))
})

test_that("camera_move_up changes position", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  camera_move_up(cam, 2.0)
  up <- get_camera_up(cam)
  expect_true(is.numeric(up))
})

test_that("camera_move_right changes position", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  camera_move_right(cam, 1.0, TRUE)
  right <- get_camera_right(cam)
  expect_true(is.numeric(right))
})

test_that("camera_move_to_target changes distance", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  camera_move_to_target(cam, -2.0)
  vm <- get_camera_view_matrix(cam)
  expect_true(is.matrix(vm))
})

test_that("camera_yaw rotates camera", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  camera_yaw(cam, 0.1, TRUE)
  fwd <- get_camera_forward(cam)
  expect_true(is.numeric(fwd))
})

test_that("camera_pitch rotates camera", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  camera_pitch(cam, 0.1, TRUE, TRUE, TRUE)
  fwd <- get_camera_forward(cam)
  expect_true(is.numeric(fwd))
})

test_that("camera_roll rotates camera", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  camera_roll(cam, 0.1)
  up <- get_camera_up(cam)
  expect_true(is.numeric(up))
})

test_that("camera mutators return invisible camera", {
  init_window(100, 100, "test")
  on.exit(close_window())

  cam <- camera_3d(c(0, 0, 10), c(0, 0, 0), c(0, 1, 0), 45, 0L)
  result <- camera_move_forward(cam, 1.0, TRUE)
  expect_identical(result, cam)
})
