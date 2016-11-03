#' Cycle
#'
#' @param g grob
#' @return A grob
#' @export
cycle <- function(p, q, r, s) {
  return(quartet(p, rot(rot(rot(q))), rot(r), rot(rot(s))))
}
