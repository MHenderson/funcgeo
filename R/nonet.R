#' Nonet
#'
#' @param a A grob
#' @param s Another grob
#' @param d Yet another grob
#' @param f The last grob
#' @param g A grob
#' @param h Another grob
#' @param j Yet another grob
#' @param k The last grob
#' @param l The last grob
#' @return A grob
#' @export
nonet <- function(a, s, d, f, g, h, j, k, l) {  C <- beside(f, beside(g, h, m = 1, n = 1), m = 1, n = 2)
  D <- beside(j, beside(k, l, m = 1, n = 1), m = 1, n = 2)
  B <- above(C, D, m = 1, n = 1)
  A <- beside(a, beside(s, d, m = 1, n = 1), m = 1, n = 2)
  above(A, B, m = 1, n = 2)
}
