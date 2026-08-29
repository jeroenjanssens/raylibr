test_that("is_web returns FALSE on desktop", {
  expect_false(is_web())
})

test_that("run_game_loop exists and is a function", {
  expect_true(is.function(run_game_loop))
})

test_that("raylibr_resource resolves paths", {
  path <- raylibr_resource("test.txt")
  expect_true(is.character(path))
})
