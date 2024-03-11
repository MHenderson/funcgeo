#' Rotate a picture.
#'
#' @param g A picture
#' @param angle An angle
#' @return Rotated picture
#' @export
rot <- function(g, angle) {
  UseMethod("rot", g)
}
