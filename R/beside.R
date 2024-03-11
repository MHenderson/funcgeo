#' Superimpose two grobs, side-by-side.
#'
#' @param p grob
#' @param q grob
#' @param m An integer
#' @param n Another integer
#' @return A grob
#' @return A picture
#' @export
beside <- function(p, q, m = 1, n = 1) {
  UseMethod("beside", p)
}
