test_that("as_color converts R color names to color objects", {
  c <- as_color("hotpink")
  expect_s3_class(c, "color")
  expect_equal(c$r, 255)
  expect_equal(c$g, 105)
  expect_equal(c$b, 180)
  expect_equal(c$a, 255)
})

test_that("as_color converts common color names", {
  r <- as_color("red")
  expect_equal(r$r, 255)
  expect_equal(r$g, 0)
  expect_equal(r$b, 0)

  g <- as_color("green")
  expect_equal(g$r, 0)
  expect_equal(g$g, 255)
  expect_equal(g$b, 0)

  b <- as_color("blue")
  expect_equal(b$r, 0)
  expect_equal(b$g, 0)
  expect_equal(b$b, 255)

  blk <- as_color("black")
  expect_equal(blk$r, 0)
  expect_equal(blk$g, 0)
  expect_equal(blk$b, 0)

  wht <- as_color("white")
  expect_equal(wht$r, 255)
  expect_equal(wht$g, 255)
  expect_equal(wht$b, 255)
})

test_that("as_color passes through color objects unchanged", {
  c <- color(42, 42, 42, 42)
  c2 <- as_color(c)
  expect_equal(c2$r, 42)
  expect_equal(c2$g, 42)
  expect_equal(c2$b, 42)
  expect_equal(c2$a, 42)
})

test_that("fade adjusts alpha channel", {
  f <- fade("red", 0.5)
  expect_s3_class(f, "color")
  expect_equal(f$r, 255)
  expect_equal(f$g, 0)
  expect_equal(f$b, 0)
  expect_equal(f$a, 127)
})

test_that("fade with 0 gives fully transparent", {
  f <- fade("red", 0)
  expect_equal(f$a, 0)
})

test_that("fade with 1 gives fully opaque", {
  f <- fade("red", 1)
  expect_equal(f$a, 255)
})

test_that("color_alpha adjusts alpha", {
  ca <- color_alpha("red", 0.5)
  expect_s3_class(ca, "color")
  expect_equal(ca$r, 255)
  expect_equal(ca$a, 127)
})

test_that("R color database is complete", {
  r_colors <- grDevices::colors()
  for (name in c("red", "blue", "green", "white", "black", "hotpink",
                  "dodgerblue", "sienna", "olivedrab", "moccasin")) {
    expect_true(name %in% r_colors)
    c <- as_color(name)
    expect_s3_class(c, "color")
  }
})

test_that("is_color accepts colors, names, packed RGBA values and rgba lists", {
  is_color <- raylibr:::is_color
  expect_true(is_color(color(255, 0, 0)))
  expect_true(is_color("red"))
  expect_true(is_color(0xFF0000FF))
  expect_true(is_color(0L))
  expect_true(is_color(list(r = 255, g = 0, b = 0, a = 255)))
})

test_that("is_color returns FALSE (not NA or an error) for non-colors", {
  is_color <- raylibr:::is_color
  for (x in list(42.5, -1, 2^32, NA_real_, c(1, 2), list(1, 2), "notacolor", NULL)) {
    expect_identical(is_color(x), FALSE)
  }
})
