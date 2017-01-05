#' Superimpose two grobs, one above the other.
#'
#' @param q Another grob
#' @param m An integer
#' @param n Another integer
#' @return A new grob obtained by superimposing p and q, one above the other.
#' @export
above.grob <- function(p, q, m = 1, n = 1) {
  g <- gridExtra::arrangeGrob(p, q, ncol = 1, heights = c(m/(m + n), n/(m + n)))
  class(g) <- c("picture", class(g))
  return(g)
}
