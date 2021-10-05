#' helpers
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
argonCard_helper = function(title, icon_name, status, ...){

  argonR::argonCard(

    width=12,
    title = title,
    hover_lift = T,
    shadow = T,
    shadow_size = 2,
    hover_shadow = T,
    border_level = 2,
    icon = icon(icon_name),
    status = status,
    background_color = T,
    gradient = T,
    floating = T,

    ...

  )

}
