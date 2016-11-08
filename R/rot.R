#' Rotate a picture.
#'
#' @param picture A picture
#' @return Rotated picture
#' @export
rot <- function(picture, ...) {
  UseMethod("rot", picture)
}
