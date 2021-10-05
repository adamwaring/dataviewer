#' datasets UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_datasets_ui <- function(id){
  ns <- NS(id)

  argonDash::argonTabItem(
    tabName = "dataset",

    mod_datasets_table_ui(ns("datasets_table_ui_1"))
  )

}

#' datasets Server Functions
#'
#' @noRd
mod_datasets_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    mod_datasets_table_server("datasets_table_ui_1")

  })

}

## To be copied in the UI
# mod_datasets_ui("datasets_ui_1")

## To be copied in the server
# mod_datasets_server("datasets_ui_1")
