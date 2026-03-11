skip_on_cran()

test_that("foobar", {
  x <- table(mtcars$cyl)
  class(x) <- "foo"
  expect_snapshot(print(x))
})
