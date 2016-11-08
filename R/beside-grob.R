#' Superimpose two grobs side-by-side.
#'
#' @param g grob
#' @return A grob
#' @export
beside.grob <- function(p, q, m = 1, n = 1) {
  g <- gridExtra::arrangeGrob(p, q, ncol = 2, widths = c(n*m/(n + 1), m^2/(m + 1)))
  class(g) <- c("picture", class(g))
  return(g)
}
