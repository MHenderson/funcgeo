#' Create a 2 by 2 grid pattern of pictures
#'
#' `quartet` returns a 2 by 2 grid pattern made up of the four input `grid::grob`
#' pictures: `p`, `q`, `r` and `s`. In the final grid `p` is in the top-left
#' position, `q` is in the top-right position, `r` is in the bottom-left
#' position and `s` is in the top-right position.
#'
#' @param p A `grid::grob` for the top-left position
#' @param q A `grid::grob` for the top-right position
#' @param r A `grid::grob` for the bottom-left position
#' @param s A `grid::grob` for the bottom-right position
#' @return A `grid::grob` made up of the four input pictures arranged in a 2 by 2 grid pattern.
#' @export
quartet <- function(p, q, r, s) {
  return(above(beside(p, q), beside(r, s)))
}
