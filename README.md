
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2022

<!-- badges: start -->

[![R-CMD-check](https://github.com/YimingMiao/bis620.2022/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/YimingMiao/bis620.2022/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/YimingMiao/bis620.2022/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/YimingMiao/bis620.2022/actions/workflows/test-coverage.yaml)
[![Codecov test
coverage](https://codecov.io/gh/YimingMiao/bis620.2022/branch/main/graph/badge.svg)](https://app.codecov.io/gh/YimingMiao/bis620.2022?branch=main)
[![lint](https://github.com/YimingMiao/bis620.2022/actions/workflows/lint.yaml/badge.svg)](https://github.com/YimingMiao/bis620.2022/actions/workflows/lint.yaml)
<!-- badges: end -->

The package `bis620.2022` contains the UKBiobank Accelerometry Data, and
has functions to plot the time series and create spectral signatures by
taking the modulus of Fourier coefficients of the channels.

[coverage
page](https://app.codecov.io/gh/YimingMiao/bis620.2022?branch=main)

[lint
result](https://github.com/YimingMiao/bis620.2022/actions/workflows/lint.yaml)

## Installation

You can install the development version of bis620.2022 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("YimingMiao/bis620.2022")
```

## Example

``` r
library(bis620.2022)
```

This are some examples showing basic usage of the package:

Acquire data:

``` r
data(ukb_accel)
```

Plot the time-series data:

``` r
accel_plot(ukb_accel[1:1000,])
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

Plot the spectral signatures:

``` r
ukb_accel[1:1000,] |>
  spectral_signature(take_log = FALSE) |>
  accel_plot()
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />
