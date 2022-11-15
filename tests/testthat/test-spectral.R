test_that(
  "The spectral_signature() returns a dataframe",
  {
    data(ukb_accel)
    p <-   spectral_signature(ukb_accel[1:100, ])
    expect_true(inherits(p, "data.frame"))
  }
)

test_that(
  "The spectral_signature() errors when no time or freq column.",
  {
    data(iris)
    expect_error(spectral_signature(iris))
  }
)
