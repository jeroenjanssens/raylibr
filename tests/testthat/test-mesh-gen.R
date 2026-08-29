library(raylibr)

test_that("mesh generation functions return mesh objects", {
  init_window(100, 100, "test")
  on.exit(close_window())

  m <- gen_mesh_cube(1, 1, 1)
  expect_true(is_mesh(m))

  m <- gen_mesh_sphere(1, 16, 16)
  expect_true(is_mesh(m))

  m <- gen_mesh_plane(10, 10, 1, 1)
  expect_true(is_mesh(m))

  m <- gen_mesh_cylinder(1, 2, 16)
  expect_true(is_mesh(m))

  m <- gen_mesh_cone(1, 2, 16)
  expect_true(is_mesh(m))

  m <- gen_mesh_torus(0.5, 1, 16, 16)
  expect_true(is_mesh(m))

  m <- gen_mesh_knot(0.5, 1, 16, 16)
  expect_true(is_mesh(m))

  m <- gen_mesh_poly(6, 1)
  expect_true(is_mesh(m))

  m <- gen_mesh_hemi_sphere(1, 16, 16)
  expect_true(is_mesh(m))
})

test_that("get_mesh_bounding_box returns a bounding_box", {
  init_window(100, 100, "test")
  on.exit(close_window())

  m <- gen_mesh_cube(1, 1, 1)
  bb <- get_mesh_bounding_box(m)
  expect_true(is_bounding_box(bb))
})
