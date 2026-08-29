test_that("key codes are correct", {
  expect_equal(key$a, 65)
  expect_equal(key$z, 90)
  expect_equal(key$zero, 48)
  expect_equal(key$nine, 57)
  expect_equal(key$space, 32)
  expect_equal(key$escape, 256)
  expect_equal(key$enter, 257)
  expect_equal(key$tab, 258)
  expect_equal(key$backspace, 259)
  expect_equal(key$right, 262)
  expect_equal(key$left, 263)
  expect_equal(key$down, 264)
  expect_equal(key$up, 265)
  expect_equal(key$f1, 290)
  expect_equal(key$f12, 301)
})

test_that("mouse button codes are correct", {
  expect_equal(mouse_button$left, 0)
  expect_equal(mouse_button$right, 1)
  expect_equal(mouse_button$middle, 2)
  expect_equal(mouse_button$side, 3)
  expect_equal(mouse_button$extra, 4)
  expect_equal(mouse_button$forward, 5)
  expect_equal(mouse_button$back, 6)
})

test_that("camera modes are correct", {
  expect_equal(camera_mode$custom, 0)
  expect_equal(camera_mode$free, 1)
  expect_equal(camera_mode$orbital, 2)
  expect_equal(camera_mode$first_person, 3)
  expect_equal(camera_mode$third_person, 4)
})

test_that("camera projections are correct", {
  expect_equal(camera_projection$perspective, 0)
  expect_equal(camera_projection$orthographic, 1)
})

test_that("flags have correct values", {
  expect_equal(flag$vsync_hint, 0x00000040)
  expect_equal(flag$fullscreen_mode, 0x00000002)
  expect_equal(flag$window_resizable, 0x00000004)
  expect_equal(flag$msaa_4x_hint, 0x00000020)
  expect_equal(flag$window_highdpi, 0x00002000)
})

test_that("log levels are correct", {
  expect_equal(log$all, 0)
  expect_equal(log$trace, 1)
  expect_equal(log$debug, 2)
  expect_equal(log$info, 3)
  expect_equal(log$warning, 4)
  expect_equal(log$error, 5)
  expect_equal(log$fatal, 6)
  expect_equal(log$none, 7)
})

test_that("shader uniform types are correct", {
  expect_equal(shader_uniform$float, 0)
  expect_equal(shader_uniform$vec2, 1)
  expect_equal(shader_uniform$vec3, 2)
  expect_equal(shader_uniform$vec4, 3)
  expect_equal(shader_uniform$int, 4)
})

test_that("material map indices are correct", {
  expect_equal(material_map_index$albedo, 0)
  expect_equal(material_map_index$metalness, 1)
  expect_equal(material_map_index$normal, 2)
})

test_that("mouse cursor types are correct", {
  expect_equal(mouse_cursor$default, 0)
  expect_equal(mouse_cursor$arrow, 1)
  expect_equal(mouse_cursor$ibeam, 2)
  expect_equal(mouse_cursor$crosshair, 3)
  expect_equal(mouse_cursor$pointing_hand, 4)
})

test_that("all enum lists are named lists", {
  expect_type(key, "list")
  expect_type(mouse_button, "list")
  expect_type(camera_mode, "list")
  expect_type(camera_projection, "list")
  expect_type(flag, "list")
  expect_type(log, "list")
  expect_type(shader_uniform, "list")
  expect_type(material_map_index, "list")
  expect_type(mouse_cursor, "list")

  expect_true(all(nchar(names(key)) > 0))
  expect_true(all(nchar(names(mouse_button)) > 0))
  expect_true(all(nchar(names(flag)) > 0))
})
