#' plot.picture
#'
#' @param picture A picture
#' @return grid.draw(picture)
#' @export
plot.picture <- function(x, ...) {
  grid::grid.draw(x)
}
