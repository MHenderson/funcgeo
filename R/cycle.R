#' Cycle
#'
#' @param p A picture
#' @return A picture
#' @export
cycle <- function(p) {
  return(quartet(p, rot(rot(rot(p))), rot(p), rot(rot(p))))
}
