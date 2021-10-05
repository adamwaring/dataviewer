#' structured_summarise UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_structured_summarise_ui <- function(id){
  ns <- NS(id)
  tagList(

  )
}

#' structured_summarise Server Functions
#'
#' @noRd
mod_structured_summarise_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_structured_summarise_ui("structured_summarise_ui_1")

## To be copied in the server
# mod_structured_summarise_server("structured_summarise_ui_1")
