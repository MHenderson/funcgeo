#' plot.picture
#'
#' @param x A picture
#' @param ... Anything else.
#' @return grid.draw(picture)
#' @export
plot.picture <- function(x, ...) {
  grid::grid.draw(x)
}
