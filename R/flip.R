#' Flip a picture.
#'
#' @param picture A picture
#' @return Flipped picture
#' @export
flip <- function(picture, ...) {
  UseMethod("flip", picture)
}
