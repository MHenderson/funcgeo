#' Cycle
#'
#' @param g grob
#' @return A grob
#' @export
cycle <- function(p) {
  return(quartet(p, rot(rot(rot(p))), rot(p), rot(rot(p))))
}
