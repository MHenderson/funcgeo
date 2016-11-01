#' Flip
#'
#' @param g grob
#' @return A grob
#' @export
#' @export
flip <- function(g) {
  grid::editGrob(g, x = unit(1, "npc") - g$x)
}
