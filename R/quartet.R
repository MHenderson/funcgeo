#' Quartet
#'
#' @param p A picture
#' @param q Another picture
#' @param r Yet another picture
#' @param s The last picture
#' @return A grob
#' @export
quartet <- function(p, q, r, s) {
  return(above(beside(p, q), beside(r, s)))
}
