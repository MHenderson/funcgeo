#' Rotate a grob.
#'
#' @param g A grob
#' @return Rotated grob
#' @export
rot.grob <- function(g, angle = 90) {
  g <- grid::editGrob(g, vp = grid::viewport(
    angle  = ifelse(is.null(g$vp$angle), angle, g$vp$angle + angle))
  )
  return(g)
}
