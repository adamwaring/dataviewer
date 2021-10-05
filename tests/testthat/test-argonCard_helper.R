test_that("returns object of class shiny.tag", {

  testthat::expect_equal(
    class(dataviewer::argonCard_helper("x", icon=icon("table"), "primary")),
    "shiny.tag"
  )


})
