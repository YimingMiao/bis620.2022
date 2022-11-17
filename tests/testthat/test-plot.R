test_that(
  "The accel_plot() returns a ggplot object.",
  {
    data(ukb_accel)
    p <- accel_plot(ukb_accel[1:100, ])
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The accel_plot() errors when no time or freq column.",
  {
    data(iris)
    expect_error(accel_plot(iris))
  }
)

test_that(
  "The accel_plot() is correct for time-series data.",
  {
    data(ukb_accel)
    p <- accel_plot(ukb_accel[1:100, ])
    vdiffr::expect_doppelganger("first-100-samples", p)
  }
)

test_that(
  "The accel_plot() returns a ggplot object if column name is `freq`.",
  {
    # test_df <- data.frame(freq = sample(1:100, 100, replace=T),
    #                       X = runif(100, -1, 1),
    #                       Y = runif(100, -1, 1))
    # p <- accel_plot(test_df)
    p <- accel_plot(spectral_signature(ukb_accel[1:100, ]))
    expect_true(inherits(p, "gg"))
  }
)

