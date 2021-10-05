#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd

app_server <- function( input, output, session ) {
  # Your application server logic
  mod_datasets_server("datasets_ui_1")

  #mod_datasets_table_server("datasets_table_ui_1")
}
