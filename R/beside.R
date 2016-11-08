#' Superimpose two grobs, side-by-side.
#'
#' @param p A picture
#' @return A picture
#' @export
beside <- function(picture, ...) {
  UseMethod("beside", picture)
}
