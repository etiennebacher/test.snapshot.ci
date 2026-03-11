test_that("print.describe_posterior", {
  m <- insight::download_model("brms_zi_3")
  skip_if(is.null(m))
  expect_snapshot(describe_posterior(m, verbose = FALSE), variant = "windows")
})
