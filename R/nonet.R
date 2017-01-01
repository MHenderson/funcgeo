#' Nonet
#'
#' @param a A picture
#' @param s Another picture
#' @param d Yet another picture
#' @param f The last picture
#' @param g A picture
#' @param h Another picture
#' @param j Yet another picture
#' @param k The last picture
#' @param l The last picture
#' @return A grob
#' @export
nonet <- function(a, s, d, f, g, h, j, k, l) {  C <- beside(f, beside(g, h, m = 1, n = 1), m = 1, n = 2)
  D <- beside(j, beside(k, l, m = 1, n = 1), m = 1, n = 2)
  B <- above(C, D, m = 1, n = 1)
  A <- beside(a, beside(s, d, m = 1, n = 1), m = 1, n = 2)
  above(A, B, m = 1, n = 2)
}
