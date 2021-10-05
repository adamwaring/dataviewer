#' datasets_table UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_datasets_table_ui <- function(id){
  ns <- NS(id)
  tagList(

    argonCard_helper("Available Datasets", "table", "info",

                     uiOutput(ns("argonTable")),

                     argonDash::argonDropNavDivider(), br(),

                     actionButton(ns("new_dataset"), "Upload a new dataset", icon = icon("upload"))
    ),

    argonCard_helper("View dataset", "table", "info",
                     DT::DTOutput(ns("vis_data"))
    )

  )
}

#' datasets_table Server Functions
#'
#' @noRd
mod_datasets_table_server <- function(id){
  moduleServer( id, function(input, output, session){

    vals = reactiveValues(trigger=0)

    ns <- session$ns

    observeEvent(input$new_dataset, {

      showModal(dataModal(ns=ns))

    })

    observeEvent(input$submit, {

      removeModal()

      # need to check inputs and check dataset !!!!!!!!!!!!!!!!!!!!

      update_data_cache(input$dataset_type,
                        input$dataset_file,
                        input$dataset_location,
                        input$dataset_url,
                        input$dataset_name,
                        input$cache,
                        input$cache_dir)

      # refresh argonTable
      vals$trigger = vals$trigger + 1


    })

    # need logic for each view and each delete
    lapply(1:length(readLines("cache/datasets.txt")), function(i){

      observeEvent(input[[paste0("delete", i)]], {

        showModal(confirmDeleteModal(ns=ns))

      })

      observeEvent(input[[paste0("confirmDelete", i)]], {

        removeModal()

        delete_dataset(i)

        # refresh argonTable
        vals$trigger = vals$trigger + 1
      })

      observeEvent(input[[paste0("view", i)]], {

        output$vis_data <- DT::renderDT(view_dataset(i))

      })


    })

    observeEvent(vals$trigger, {

      output$argonTable <- renderUI({

        datasets_argon_table(ns=ns)

      })

    })

  })
}

## To be copied in the UI
# mod_datasets_table_ui("datasets_table_ui_1")

## To be copied in the server
# mod_datasets_table_server("datasets_table_ui_1")
