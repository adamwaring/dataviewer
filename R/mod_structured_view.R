#' structured_view UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_structured_view_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' structured_view Server Functions
#'
#' @noRd 
mod_structured_view_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_structured_view_ui("structured_view_ui_1")
    
## To be copied in the server
# mod_structured_view_server("structured_view_ui_1")
