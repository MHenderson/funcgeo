#' Create a 2 by 2 grid pattern of rotated pictures
#'
#' `cycle` returns a 2 by 2 grid pattern of four pictures, each obtained from
#' the input `grid::grob` picture `p`. In the top left position of the grid
#' is `p`, in the bottom-right position is the picture `p` rotated by 90 degrees.
#' In the bottom-left position `p` is rotated through 180 degrees and in the
#' top-right position `p` is rotated through 270 degrees.
#'
#' @param p A `grid::grob` for the top-left position
#' @return A `grid::grob` made up of rotations of the four input pictures arranged in a 2 by 2 grid pattern.
#' @export
cycle <- function(p) {
  return(quartet(p, rot(rot(rot(p))), rot(p), rot(rot(p))))
}
