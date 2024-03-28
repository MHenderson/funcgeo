#' Flip a picture
#'
#' `flip` returns a new picture made by flipping the input picture along
#' its vertical centre axis.
#'
#' @param g A `grid::grob` picture
#' @return A flipped `grid::grob` picture
#' @export
flip <- function(g) {
  grid::editGrob(g, x = grid::unit(1, "npc") - g$x)
}
