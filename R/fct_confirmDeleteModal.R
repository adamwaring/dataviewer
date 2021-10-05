#' confirmDeleteModal
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
confirmDeleteModal = function(ns){

  modalDialog(

    "Are you sure you want to delete? This action will also delete any cached data.",

    footer = tagList(actionButton(ns(paste0("confirmDelete", i)), "Delete"),
                     modalButton("Cancel"))
  )

}
