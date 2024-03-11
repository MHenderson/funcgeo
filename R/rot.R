#' Rotate a picture.
#'
#' @param picture A picture
#' @param angle An angle
#' @return Rotated picture
#' @export
rot <- function(picture, angle) {
  UseMethod("rot", picture)
}
