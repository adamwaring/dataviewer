#' confirmDeleteModal
#'
#' @param ns namespace
#' @param i dataset to confirm delete for
#'
#' @description Launches a modal to check whether the user wants to delete
#'
#' @return shiny.tag
#' @export
confirmDeleteModal = function(ns, i){

  modalDialog(

    "Are you sure you want to delete? This action will also delete any cached data.",

    footer = tagList(actionButton(ns(paste0("confirmDelete", i)), "Delete"),
                     modalButton("Cancel"))
  )

}
