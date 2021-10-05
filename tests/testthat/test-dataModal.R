test_that("returns object of class shiny.tag", {

  testthat::expect_equal(
    class(dataviewer::dataModal(ns=NS(namespace = "test"))),
    "shiny.tag"
  )


})
