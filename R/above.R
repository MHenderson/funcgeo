#' Superimpose two pictures, one above the other.
#'
#' @param p A picture
#' @return A picture
#' @export
above <- function(picture, ...) {
  UseMethod("above", picture)
}
