#' dataModal
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
dataModal = function(ns){
  modalDialog(

    title = "Create a new dataset",

    easyClose = T,

    # do some checking of valid inputs here and do not show OK button until all valid i.e. upload complete and URL provided etc.

    textInput(ns("dataset_name"), "Name", placeholder = "Identifier for the dataset..."),
    selectInput(ns("dataset_type"), "Type", c("Structured", "Time-Series", "Image"), "Structured"),
    selectInput(ns("dataset_location"), "Location", c("Local", "URL")),

    conditionalPanel(
      condition = "input.dataset_location == 'Local'",
      ns = ns,
      fileInput(ns("dataset_file"), "Upload a local dataset")
    ),

    conditionalPanel(
      condition = "input.dataset_location == 'URL'",
      ns = ns,
      textInput(ns("dataset_url"), "Enter Dataset URL", placeholder = "https://archive.ics.uci.edu/ml/machine-learning-databases/arrhythmia/arrhythmia.data")
    ),

    conditionalPanel(
      condition = "input.dataset_location == 'URL'",
      ns = ns,
      selectInput(ns("cache"), "Cache data?", c("Yes", "No"), "No")
    ),

    conditionalPanel(
      condition = "input.cache == 'Yes'",
      ns = ns,
      textInput(ns("cache_dir"), "Enter Cache path", value = "./cache/cached_datasets/")
    ),

    footer = tagList(
      modalButton("Cancel"),
      actionButton(ns("submit"), "Submit")
    )

  )
}
