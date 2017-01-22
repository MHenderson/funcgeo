#' Superimpose two grobs side-by-side.
#'
#' @param g grob
#' @return A grob
#' @export
beside.grob <- function(p, q, m = 1, n = 1) {
  fg <- grid::frameGrob(layout = grid::grid.layout(1, 2))
  fg <- grid::packGrob(fg, p, col = 1, width = grid::unit(m/(m + n), "npc"))
  fg <- grid::packGrob(fg, q, col = 2, width = grid::unit(n/(m + n), "npc"))
  class(fg) <- c("picture", class(fg))
  return(fg)
}
