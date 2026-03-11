test_that("print.describe_posterior", {
  m <- table(mtcars$mpg)
  class(m) <- c("describe_posterior", class(m))
  expect_snapshot(m, variant = "windows")
})
