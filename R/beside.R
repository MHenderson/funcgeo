#' Beside
#'
#' @param g grob
#' @return A grob
#' @export
beside <- function(p, q, m = 1, n = 1) {
  gridExtra::arrangeGrob(p, q, ncol = 2, widths = c(n*m/(n + 1), m^2/(m + 1)))
}
