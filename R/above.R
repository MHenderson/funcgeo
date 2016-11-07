#' Above
#'
#' @param g grob
#' @return A grob
#' @export
above <- function(p, q, m = 1, n = 1) {
  class(p) <- class(p)[-1]
  class(q) <- class(q)[-1]
  g <- gridExtra::arrangeGrob(p, q, ncol = 1, heights = c(n*m/(n + 1), m^2/(m + 1)))
  class(g) <- c("picture", class(g))
  return(g)
}
