test_that("returns object of class shiny.tag", {

  testthat::expect_equal(
    class(confirmDeleteModal(ns=NS(namespace = "test"), 1)),
    "shiny.tag"
  )


})
