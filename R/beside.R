#' beside
#' @export
beside <- function(m, n, p, q) {
  gridExtra::arrangeGrob(p, q, ncol = 2, widths = c(n*m/(n + 1), m^2/(m + 1)))
}
