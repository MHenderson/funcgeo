#' Quartet
#'
#' @param g grob
#' @return A grob
#' @export
quartet<- function(p, q, r, s) {
  return(above(beside(p, q), beside(r, s)))
}
