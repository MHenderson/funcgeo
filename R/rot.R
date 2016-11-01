#' Rotate
#'
#' @param g grob
#' @return A grob
#' @export
rot <- function(g, angle = 90) {
  grid::editGrob(g, vp = viewport(
    width  = ifelse(is.null(g$vp$width), 0.5, g$vp$width),
    height = ifelse(is.null(g$vp$height), 0.5, g$vp$height),
    angle  = ifelse(is.null(g$vp$angle), angle, g$vp$angle + angle))
  )
}
