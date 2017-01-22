#' Superimpose two grobs, one above the other.
#'
#' @param q Another grob
#' @param m An integer
#' @param n Another integer
#' @return A new grob obtained by superimposing p and q, one above the other.
#' @export
above.grob <- function(p, q, m = 1, n = 1) {
  fg <- grid::frameGrob(layout = grid::grid.layout(2, 1))
  fg <- grid::packGrob(fg, p, row = 1, height = grid::unit(m/(m + n), "npc"))
  fg <- grid::packGrob(fg, q, row = 2, height = grid::unit(n/(m + n), "npc"))
  class(fg) <- c("picture", class(fg))
  return(fg)
}
