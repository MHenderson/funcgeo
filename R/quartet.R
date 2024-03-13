#' Quartet
#'
#' @param p A grob
#' @param q Another grob
#' @param r Yet another grob
#' @param s The last grob
#' @return A grob
#' @export
quartet <- function(p, q, r, s) {
  return(above(beside(p, q), beside(r, s)))
}
