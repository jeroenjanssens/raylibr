library(raylibr)

test_that("matrix_identity is 4x4 identity", {
  m <- matrix_identity()
  expect_true(is.matrix(m))
  expect_equal(dim(m), c(4, 4))
  expect_equal(diag(m), c(1, 1, 1, 1))
  expect_equal(sum(m), 4)
})

test_that("matrix_determinant of identity is 1", {
  expect_equal(matrix_determinant(matrix_identity()), 1)
})

test_that("matrix_trace of identity is 4", {
  expect_equal(matrix_trace(matrix_identity()), 4)
})

test_that("matrix_transpose", {
  m <- matrix_translate(1, 2, 3)
  mt <- matrix_transpose(m)
  expect_equal(m[1, 4], mt[4, 1])
})

test_that("matrix_invert round-trips", {
  m <- matrix_translate(1, 2, 3)
  inv <- matrix_invert(m)
  product <- matrix_multiply(m, inv)
  expect_equal(product, matrix_identity(), tolerance = 0.001)
})

test_that("matrix_add and matrix_subtract", {
  a <- matrix_identity()
  b <- matrix_identity()
  s <- matrix_add(a, b)
  expect_equal(diag(s), c(2, 2, 2, 2))
  d <- matrix_subtract(s, a)
  expect_equal(d, a, tolerance = 0.001)
})

test_that("matrix_multiply", {
  a <- matrix_translate(1, 0, 0)
  b <- matrix_translate(0, 2, 0)
  c <- matrix_multiply(a, b)
  expect_true(is.matrix(c))
})

test_that("matrix_translate", {
  m <- matrix_translate(5, 10, 15)
  expect_true(is.matrix(m))
  v <- vector3_transform(c(0, 0, 0), m)
  expect_equal(unname(v), c(5, 10, 15), tolerance = 0.001)
})

test_that("matrix_scale", {
  m <- matrix_scale(2, 3, 4)
  v <- vector3_transform(c(1, 1, 1), m)
  expect_equal(unname(v), c(2, 3, 4), tolerance = 0.001)
})

test_that("matrix_rotate_x/y/z", {
  mx <- matrix_rotate_x(0)
  expect_equal(mx, matrix_identity(), tolerance = 0.001)
  my <- matrix_rotate_y(0)
  expect_equal(my, matrix_identity(), tolerance = 0.001)
  mz <- matrix_rotate_z(0)
  expect_equal(mz, matrix_identity(), tolerance = 0.001)
})

test_that("matrix_rotate produces rotation matrix", {
  m <- matrix_rotate(c(0, 0, 1), pi / 2)
  expect_true(is.matrix(m))
  expect_equal(matrix_determinant(m), 1, tolerance = 0.001)
})

test_that("matrix_perspective returns 4x4", {
  m <- matrix_perspective(45 * pi / 180, 1.0, 0.1, 100.0)
  expect_equal(dim(m), c(4, 4))
})

test_that("matrix_ortho returns 4x4", {
  m <- matrix_ortho(-1, 1, -1, 1, 0.1, 100)
  expect_equal(dim(m), c(4, 4))
})

test_that("matrix_look_at returns 4x4", {
  m <- matrix_look_at(c(0, 0, 5), c(0, 0, 0), c(0, 1, 0))
  expect_equal(dim(m), c(4, 4))
})

test_that("matrix_decompose round-trips compose", {
  t <- c(1, 2, 3)
  r <- quaternion_identity()
  s <- c(1, 1, 1)
  m <- matrix_compose(t, r, s)
  d <- matrix_decompose(m)
  expect_equal(unname(d$translation), t, tolerance = 0.01)
  expect_equal(unname(d$scale), s, tolerance = 0.01)
})

test_that("matrix_frustum returns 4x4", {
  m <- matrix_frustum(-1, 1, -1, 1, 1, 100)
  expect_equal(dim(m), c(4, 4))
})

test_that("matrix_multiply_value", {
  m <- matrix_identity()
  m2 <- matrix_multiply_value(m, 2)
  expect_equal(diag(m2), c(2, 2, 2, 2))
})
