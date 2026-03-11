skip_on_cran()

test_that("foobar", {
  x <- table(mtcars$cyl)
  expect_snapshot(print(x))
})
