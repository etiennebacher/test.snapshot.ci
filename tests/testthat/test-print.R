test_that("print", {
  expect_snapshot(table(mtcars$mpg))
})
