#' Flip a picture.
#'
#' @param picture A picture
#' @return Flipped picture
#' @export
flip <- function(g) {
  UseMethod("flip", g)
}
