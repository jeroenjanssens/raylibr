library(raylibr)

test_that("text_to_upper converts to uppercase", {
  expect_equal(text_to_upper("hello"), "HELLO")
  expect_equal(text_to_upper("Hello World"), "HELLO WORLD")
})

test_that("text_to_lower converts to lowercase", {
  expect_equal(text_to_lower("HELLO"), "hello")
  expect_equal(text_to_lower("Hello World"), "hello world")
})

test_that("text_to_pascal converts to PascalCase", {
  result <- text_to_pascal("hello_world")
  expect_type(result, "character")
  expect_true(nchar(result) > 0)
})

test_that("text_to_snake converts to snake_case", {
  result <- text_to_snake("HelloWorld")
  expect_type(result, "character")
  expect_true(nchar(result) > 0)
})

test_that("text_to_camel converts to camelCase", {
  result <- text_to_camel("hello_world")
  expect_type(result, "character")
  expect_true(nchar(result) > 0)
})

test_that("text_to_integer parses integer string", {
  result <- text_to_integer("42")
  expect_equal(result, 42L)
})

test_that("text_to_integer returns 0 for non-numeric", {
  result <- text_to_integer("abc")
  expect_equal(result, 0L)
})

test_that("text_to_float parses float string", {
  result <- text_to_float("3.14")
  expect_equal(result, 3.14, tolerance = 0.001)
})

test_that("text_subtext extracts substring", {
  result <- text_subtext("hello world", 0, 5)
  expect_equal(result, "hello")
})

test_that("text_replace replaces substring", {
  result <- text_replace("hello world", "world", "R")
  expect_equal(result, "hello R")
})

test_that("text_insert inserts text at position", {
  result <- text_insert("hello", " world", 5)
  expect_equal(result, "hello world")
})

test_that("text_find_index finds substring position", {
  result <- text_find_index("hello world", "world")
  expect_equal(result, 6L)
})

test_that("text_find_index returns -1 when not found", {
  result <- text_find_index("hello world", "xyz")
  expect_equal(result, -1L)
})

test_that("text_remove_spaces removes all spaces", {
  result <- text_remove_spaces("hello world")
  expect_equal(result, "helloworld")
})

test_that("get_codepoint_count counts unicode codepoints", {
  expect_equal(get_codepoint_count("hello"), 5L)
  expect_equal(get_codepoint_count(""), 0L)
})
