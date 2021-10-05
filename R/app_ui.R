#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  shiny::tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    argonDash::argonDashPage(
      title = "Argon Dashboard Demo",
      author = "David",
      description = "Argon Dash Test",
      sidebar = argonSidebar,
      #navbar = argonNav,
      header = argonHeader,
      body = argonDash::argonDashBody(
        argonDash::argonTabItems(
          mod_datasets_ui("datasets_ui_1")
        )
      ),
      footer = argonFooter
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){

  add_resource_path(
    'www', app_sys('app/www')
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'dataviewer'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}

