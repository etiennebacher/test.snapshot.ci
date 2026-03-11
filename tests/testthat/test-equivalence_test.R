skip_on_cran()

test_that("equivalence test, rstanarm", {
  skip_if_not_installed("curl")
  skip_if_offline()
  skip_if_not_installed("httr2")
  m <- insight::download_model("stanreg_merMod_5")

  out <- equivalence_test(m, verbose = FALSE)
  expect_snapshot(print(out))
})


test_that("equivalence test, df", {
  skip_if_not_installed("curl")
  skip_if_offline()
  skip_if_not_installed("httr2")
  m <- insight::download_model("stanreg_merMod_5")
  params <- as.data.frame(m)[1:5]

  out <- equivalence_test(params, verbose = FALSE)
  expect_snapshot(print(out))
})
