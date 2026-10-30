library(raylibr)

# raygui used to keep the font of the first window. After that window was
# closed its glyph data was freed, so text vanished in later windows and R
# could crash once the memory was reused.
test_that("raygui text works across many windows in one session", {
  skip_if_no_gl()
  widths <- integer(0)
  for (i in 1:20) {
    set_config_flags(flag$window_hidden)
    init_window(100L, 100L, "test")
    # A stale font gives 0 or garbage such as 2147483647
    widths[i] <- gui_get_text_width("Hello")
    begin_drawing()
    gui_label(rectangle(0, 0, 100, 20), "Hello")
    gui_button(rectangle(0, 30, 100, 20), "Button")
    end_drawing()
    close_window()
  }
  expect_gt(widths[1], 0)
  expect_equal(widths, rep(widths[1], 20))
})
