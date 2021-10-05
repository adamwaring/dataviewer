#' argonCard_helper
#'
#' @param title Title for the Card
#' @param icon Icon to display - must be wrapped in icon() or equivalent
#' @param status Bootstrap classes primary info secondary danger warning etc...
#' @param ... any number of additional shiny tags
#'
#' @description Creates new defaults for argonCard to give consistent look throughout app
#'
#' @return shiny.tag
#' @export
argonCard_helper = function(title, icon, status, ...){

  argonR::argonCard(

    width=12,
    title = title,
    hover_lift = T,
    shadow = T,
    shadow_size = 2,
    hover_shadow = T,
    border_level = 2,
    icon = icon,
    status = status,
    background_color = T,
    gradient = T,
    floating = T,

    ...

  )

}
