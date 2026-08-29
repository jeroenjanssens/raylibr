library(raylibr)

raylibr_has <- function(name) exists(name, mode = "function", envir = asNamespace("raylibr"))

test_that("get_spline_point_linear interpolates correctly", {
  pt <- get_spline_point_linear(c(0, 0), c(10, 10), 0.5)
  expect_length(pt, 2)
  expect_equal(unname(pt[1]), 5, tolerance = 0.01)
  expect_equal(unname(pt[2]), 5, tolerance = 0.01)
})

test_that("get_spline_point_linear at t=0 returns start", {
  pt <- get_spline_point_linear(c(0, 0), c(10, 10), 0)
  expect_equal(unname(pt[1]), 0, tolerance = 0.01)
  expect_equal(unname(pt[2]), 0, tolerance = 0.01)
})

test_that("get_spline_point_linear at t=1 returns end", {
  pt <- get_spline_point_linear(c(0, 0), c(10, 10), 1)
  expect_equal(unname(pt[1]), 10, tolerance = 0.01)
  expect_equal(unname(pt[2]), 10, tolerance = 0.01)
})

test_that("get_spline_point_basis returns a Vector2", {
  pt <- get_spline_point_basis(c(0, 0), c(3, 3), c(6, 6), c(10, 10), 0.5)
  expect_length(pt, 2)
  expect_true(is.numeric(pt))
})

test_that("get_spline_point_catmull_rom returns a Vector2", {
  pt <- get_spline_point_catmull_rom(c(0, 0), c(3, 3), c(6, 6), c(10, 10), 0.5)
  expect_length(pt, 2)
  expect_true(is.numeric(pt))
})

test_that("get_spline_point_bezier_quad returns a Vector2", {
  pt <- get_spline_point_bezier_quad(c(0, 0), c(5, 10), c(10, 0), 0.5)
  expect_length(pt, 2)
  expect_true(is.numeric(pt))
  expect_equal(unname(pt[1]), 5, tolerance = 0.01)
})

test_that("get_spline_point_bezier_cubic returns a Vector2", {
  pt <- get_spline_point_bezier_cubic(c(0, 0), c(3, 10), c(7, 10), c(10, 0), 0.5)
  expect_length(pt, 2)
  expect_true(is.numeric(pt))
  expect_equal(unname(pt[1]), 5, tolerance = 0.01)
})

test_that("draw_spline_segment_* functions exist in namespace", {
  expect_true(raylibr_has("draw_spline_segment_linear"))
  expect_true(raylibr_has("draw_spline_segment_basis"))
  expect_true(raylibr_has("draw_spline_segment_catmull_rom"))
  expect_true(raylibr_has("draw_spline_segment_bezier_quadratic"))
  expect_true(raylibr_has("draw_spline_segment_bezier_cubic"))
})

test_that("draw_spline_* manual wrappers exist in namespace", {
  expect_true(raylibr_has("draw_spline_linear"))
  expect_true(raylibr_has("draw_spline_basis"))
  expect_true(raylibr_has("draw_spline_catmull_rom"))
  expect_true(raylibr_has("draw_spline_bezier_quadratic"))
  expect_true(raylibr_has("draw_spline_bezier_cubic"))
})
