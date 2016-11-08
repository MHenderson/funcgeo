#' Rotate a grob.
#'
#' @param g A grob
#' @return Rotated grob
#' @export
rot.grob <- function(g, angle = 90) {
  g <- grid::editGrob(g, vp = grid::viewport(
    width  = ifelse(is.null(g$vp$width), 0.5, g$vp$width),
    height = ifelse(is.null(g$vp$height), 0.5, g$vp$height),
    angle  = ifelse(is.null(g$vp$angle), angle, g$vp$angle + angle))
  )
  return(g)
}
