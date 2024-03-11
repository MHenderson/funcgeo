#' Flip a picture.
#'
#' @param g A picture
#' @return Flipped picture
#' @export
flip <- function(g) {
  UseMethod("flip", g)
}
