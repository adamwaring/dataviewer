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
  tagList(
 
  )
}
    
#' datasets Server Functions
#'
#' @noRd 
mod_datasets_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_datasets_ui("datasets_ui_1")
    
## To be copied in the server
# mod_datasets_server("datasets_ui_1")
