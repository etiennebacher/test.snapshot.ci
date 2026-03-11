test_that("print.my_class", {
  m <- table(mtcars$mpg)
  # class(m) <- c("my_class", class(m))
  expect_snapshot(m)
})
