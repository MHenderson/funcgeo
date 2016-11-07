#' plot.picture
#'
#' @param picture A picture
#' @return grid.draw(picture)
#' @export
plot.picture <- function(picture) {
  class(picture) <- class(picture)[-1]
  grid::grid.draw(picture)
}
