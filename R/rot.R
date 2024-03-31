#' Rotate a picture
#'
#' `rot` returns a new picture, made by rotating the input picture. If no angle
#' is specified then the new picture will be rotated clockwise by 90 degrees. A
#' different angle can be specified with the `angle` argument.
#'
#' @param g A `grid::grob` picture
#' @param angle An angle
#' @return A rotated `grid::grob` picture
#' @export
rot <- function(g, angle = 90) {
  grid::editGrob(g, vp = grid::viewport(
    angle  = ifelse(is.null(g$vp$angle), angle, g$vp$angle + angle))
  )
}
