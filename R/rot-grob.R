#' Rotate a grob.
#'
#' @param g A grob
#' @param angle An angle
#' @return Rotated grob
#' @export
rot.grob <- function(g, angle = 90) {
  grid::editGrob(g, vp = grid::viewport(
    angle  = ifelse(is.null(g$vp$angle), angle, g$vp$angle + angle))
  )
}
