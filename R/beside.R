#' Superimpose two pictures side-by-side.
#'
#' `beside` returns a new picture made by placing the first input picture
#' beside the second input picture. The user can also provide arguments `m`
#' and `n` in which case the pictures will be placed so that they occupy the
#' output picture in a m:n ratio.
#'
#' @param p A `grid::grob` picture
#' @param q Another `grid::grob` picture
#' @param m An integer
#' @param n Another integer
#' @return A new `grid::grob` picture obtained by superimposing p and q, one beside the other.
#' @export
beside <- function(p, q, m = 1, n = 1) {
  fg <- grid::frameGrob(layout = grid::grid.layout(1, 2))
  fg <- grid::packGrob(fg, p, col = 1, width = grid::unit(m/(m + n), "npc"))
  fg <- grid::packGrob(fg, q, col = 2, width = grid::unit(n/(m + n), "npc"))
  return(fg)
}
