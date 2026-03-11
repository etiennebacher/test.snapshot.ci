test_that("foobar", {
  skip_on_cran()
  skip_if_offline()

  x <- table(mtcars$cyl)
  class(x) <- "foo"
  expect_snapshot(print(x), variant = "windows")
})
