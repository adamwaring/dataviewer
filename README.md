
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dataviewer

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/adamwaring/dataviewer/workflows/R-CMD-check/badge.svg)](https://github.com/adamwaring/dataviewer/actions)
[![Codecov test
coverage](https://codecov.io/gh/adamwaring/dataviewer/branch/master/graph/badge.svg)](https://codecov.io/gh/adamwaring/dataviewer?branch=master)
<!-- badges: end -->

This app contains the components for a data input and viewer module for
an app.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("adamwaring/dataviewer")
```

## Example

The available datasets are listed in a table with some summary
information. These can be deleted by selecting the delete button.

![Argon table showing available
datasets](inst/app/www/argon_table_example.PNG)

New datasets can also be uploaded. Clicking the button launches a
dataset input modal.

![Dataset input modal](inst/app/www/dataset_input_modal.PNG)

By clicking on the view button next to datasets they are rendered as
DataTables.

![DT render](inst/app/www/dataset_render.PNG)
