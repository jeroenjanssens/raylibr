test_that("is_vector_2 works correctly", {
  expect_true(is_vector_2(c(1, 2)))
  expect_true(is_vector_2(c(0.5, 0.5)))
  expect_false(is_vector_2(1))
  expect_false(is_vector_2(c(1, 2, 3)))
  expect_false(is_vector_2("a"))
  expect_false(is_vector_2(c("a", "b")))
})

test_that("is_vector_3 works correctly", {
  expect_true(is_vector_3(c(1, 2, 3)))
  expect_false(is_vector_3(c(1, 2)))
  expect_false(is_vector_3(c(1, 2, 3, 4)))
  expect_false(is_vector_3(1))
})

test_that("is_vector_4 works correctly", {
  expect_true(is_vector_4(c(1, 2, 3, 4)))
  expect_false(is_vector_4(c(1, 2, 3)))
  expect_false(is_vector_4(c(1, 2, 3, 4, 5)))
  expect_false(is_vector_4(1))
})

test_that("is_color recognizes color objects", {
  c <- color(255, 0, 0, 255)
  expect_true(is_color(c))
})

test_that("is_color recognizes R color names", {
  expect_true(is_color("red"))
  expect_true(is_color("hotpink"))
  expect_true(is_color("dodgerblue3"))
  expect_false(is_color("notacolor"))
})

test_that("is_color recognizes integer color values", {
  expect_true(is_color(0))
  expect_true(is_color(255))
})

test_that("is_raylib_matrix works correctly", {
  m <- matrix(0, nrow = 4, ncol = 4)
  expect_true(is_raylib_matrix(m))
  expect_false(is_raylib_matrix(matrix(0, 3, 3)))
  expect_false(is_raylib_matrix(matrix(0, 4, 3)))
  expect_false(is_raylib_matrix(1))
  expect_false(is_raylib_matrix("not a matrix"))
})

test_that("is_music works correctly", {
  expect_false(is_music("not_music"))
  expect_false(is_music(42))
})
