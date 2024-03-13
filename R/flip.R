#' Flip a grob.
#'
#' @param g A grob
#' @return Flipped grob
#' @export
flip <- function(g) {
  grid::editGrob(g, x = grid::unit(1, "npc") - g$x)
}
