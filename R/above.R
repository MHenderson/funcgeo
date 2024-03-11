#' Superimpose two pictures, one above the other.
#'
#' @param p A picture
#' @param q Another picture
#' @param m An integer
#' @param n Another integer
#' @return A picture
#' @export
above <- function(p, q, m, n) {
  UseMethod("above")
}
