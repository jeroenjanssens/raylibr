library(raylibr)

test_that("Raylib log messages go through R's message stream", {
  skip_if_no_gl()
  set_trace_log_level(log_level$info)
  on.exit(set_trace_log_level(log_level$warning))
  msg <- capture.output({
    set_config_flags(flag$window_hidden)
    init_window(10L, 10L, "test")
    close_window()
  }, type = "message")
  expect_true(any(grepl("^INFO: ", msg)))
})

test_that("only warnings and errors are logged by default", {
  skip_if_no_gl()
  msg <- capture.output({
    set_config_flags(flag$window_hidden)
    init_window(10L, 10L, "test")
    close_window()
  }, type = "message")
  expect_false(any(grepl("^INFO: ", msg)))
})
