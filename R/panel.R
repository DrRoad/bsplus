#' Panel
#'
#' This function makes it a little easier to make Bootstrap-friendly panels;
#' it wraps the [htmltools::tags()] function for panels
#'
#' @param id         character, unique identifier
#' @param panel_type character, one of the standard Bootstrap types
#' @param heading    character (HTML) or [htmltools::tagList()],
#'   content for the heading
#' @param body       character (HTML) or [htmltools::tagList()],
#'   content for the body
#' @param ...        character (HTML) or [htmltools::tagList()],
#'   other content
#' @param footer     character (HTML) or [htmltools::tagList()],
#'   content for the footer
#'
#' @return [htmltools::tag()], `<button/>`
#' @examples
#' library("htmltools")
#'
#' bs_panel(
#'   panel_type = "primary",
#'   heading = tags$h3("title"),
#'   body = tags$p("Some very important content")
#' )
#' @seealso \url{http://getbootstrap.com/css/#panels}
#' @export
#'
bs_panel <- function(
  id = NULL,
  panel_type = c("default", "primary", "success", "info", "warning", "danger"),
  heading = NULL,
  body = NULL,
  ...,
  footer = NULL
){

  panel_type <- match.arg(panel_type)

  htmltools::tags$div(
    id = id,
    class = glue::glue("panel panel-{panel_type}"),
    heading,
    body,
    ...,
    footer
  )

}
