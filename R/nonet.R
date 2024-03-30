#' Create a 3 by 3 grid pattern of pictures
#'
#' `nonet` returns a 3 by 3 grid pattern made up of the nine input `grid::grob`
#' pictures: `a`, `s`, `d`, `f`, `g`, `h`, `j`, `k`, `l`.
#' In the final grid `a` is in the top-left
#' position, `s` is in the top-middle position, `d` is in the top-right
#' position, `f` is in the middle-left position, `g` is in the centre position,
#' `h` is in the middle-right position, `j` is in the bottom-left position,
#' `k` is in the bottom-middle position and `l` is in the bottom-right position.
#'
#' @param a A `grid::grob` for the top-left position
#' @param s A `grid::grob` for the top-middle position
#' @param d A `grid::grob` for the top-right position
#' @param f A `grid::grob` for the middle-left position
#' @param g A `grid::grob` for the centre position
#' @param h A `grid::grob` for the middle-right position
#' @param j A `grid::grob` for the bottom-left position
#' @param k A `grid::grob` for the bottom-middle position
#' @param l A `grid::grob` for the bottom-right position
#' @return A `grid::grob` made up of the nine input pictures arranged in a 3 by 3 grid pattern.
#' @export
nonet <- function(a, s, d, f, g, h, j, k, l) {
  C <- beside(f, beside(g, h, m = 1, n = 1), m = 1, n = 2)
  D <- beside(j, beside(k, l, m = 1, n = 1), m = 1, n = 2)
  B <- above(C, D, m = 1, n = 1)
  A <- beside(a, beside(s, d, m = 1, n = 1), m = 1, n = 2)
  above(A, B, m = 1, n = 2)
}
