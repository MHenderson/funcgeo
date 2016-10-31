#' flip
#' @export
flip <- function(g) {
  grid::editGrob(g, x = unit(1, "npc") - g$x)
}
