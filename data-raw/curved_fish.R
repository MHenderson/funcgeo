# These vectors are also used in cfish.R and should become internal package data.
X <- c(4,6,0,3,3,0,0,0,4,7,7,4,4,4,11,10,10,8,8,4,4,0,11,14,14,16,10,13,13,16,9,12,12,16,8,12,12,16,8,16,0,6,6,8,8,12,12,16,10,12,12,16,12,13,13,16,14,16)
Y <- c(4,0,3,4,4,8,8,3,5,6,6,10,10,5,0,4,4,8,8,13,13,16,0,2,2,2,4,5,5,4,6,7,7,6,8,9,9,8,12,10,16,15,15,16,16,12,12,12,16,14,14,13,16,15,15,14,16,15)

cfish_p <- grid::curveGrob(
  x1 = X[seq(1, 58, 2)]/16,
  y1 = Y[seq(1, 58, 2)]/16,
  x2 = X[seq(2, 58, 2)]/16,
  y2 = Y[seq(2, 58, 2)]/16,
  vp = grid::viewport(width = 1, height = 1),
  square = FALSE,
  curvature = 0.1,
  angle = 100,
  shape = -0.8,
  ncp = 5,
  inflect = TRUE,
  gp = grid::gpar(col = "ivory4", lwd = 2)
)

class(cfish_p) <- c("picture", class(cfish_p))
save(cfish_p, file = "data/cfish_p.rda")

X <- c(2,4,4,4,4,6,6,6,6,8,8,8,8,10,10,10,10,14,12,13,13,16,16,15,15,16,16,12,12,6,6,4,4,0,13,16,14,16,15,16,0,7,9,10,10,12,12,9,8,9,9,11,11,8,0,3,3,7,7,8,2,3,4,5,6,7)
Y <- c(0,5,5,7,0,5,5,7,0,5,5,8,0,6,6,9,0,11,0,4,4,8,8,10,10,16,16,10,10,7,7,7,7,8,0,6,0,4,0,2,10,11,12,10,10,12,12,12,15,13,13,15,15,15,12,13,13,15,15,16,16,13,16,14,16,15)

cfish_q <- grid::curveGrob(
  x1 = X[seq(1, 66, 2)]/16,
  y1 = Y[seq(1, 66, 2)]/16,
  x2 = X[seq(2, 66, 2)]/16,
  y2 = Y[seq(2, 66, 2)]/16,
  vp = grid::viewport(width = 1, height = 1),
  square = FALSE,
  curvature = 0.1,
  angle = 100,
  shape = -0.8,
  ncp = 5,
  inflect = TRUE,
  gp = grid::gpar(col = "ivory4", lwd = 2)
)

class(cfish_q) <- c("picture", class(cfish_q))
save(cfish_q, file = "data/cfish_q.rda")

X <- c(0,1,0,2,0,5,0,8,1,4,2,8,3,8,8,12,5,12,12,16,0,2,2,8,8,14,14,16,6,11,11,16,11,12,12,16,12,16,13,16,14,16,15,16)
Y <- c(12,14,8,12,4,10,0,8,1,0,2,0,3,2,2,0,5,3,3,0,16,12,12,8,8,6,6,4,16,10,10,6,16,12,12,8,12,16,13,10,14,12,15,14)

cfish_r <- grid::curveGrob(
  x1 = X[seq(1, 44, 2)]/16,
  y1 = Y[seq(1, 44, 2)]/16,
  x2 = X[seq(2, 44, 2)]/16,
  y2 = Y[seq(2, 44, 2)]/16,
  vp = grid::viewport(width = 1, height = 1),
  square = FALSE,
  curvature = 0.1,
  angle = 100,
  shape = -0.8,
  ncp = 5,
  inflect = TRUE,
  gp = grid::gpar(col = "ivory4", lwd = 2)
)

class(cfish_r) <- c("picture", class(cfish_r))
save(cfish_r, file = "data/cfish_r.rda")

X <- c(0,4,4,8,8,16,0,2,0,7,0,8,0,7,0,7,0,7,8,7,7,7,7,8,8,10,10,16,10,11,10,12,12,12,12,10,13,15,15,15,15,13,12,13,13,15,15,16,13,16,14,16,15,16)
Y <- c(0,2,2,2,2,0,4,1,6,4,8,6,10,8,12,10,14,13,16,13,13,8,8,6,6,4,4,0,16,10,6,4,4,7,7,6,7,5,5,8,8,7,16,13,13,9,9,8,13,14,11,12,9,10)

cfish_s <- grid::curveGrob(
  x1 = X[seq(1, 54, 2)]/16,
  y1 = Y[seq(1, 54, 2)]/16,
  x2 = X[seq(2, 54, 2)]/16,
  y2 = Y[seq(2, 54, 2)]/16,
  vp = grid::viewport(width = 1, height = 1),
  square = FALSE,
  curvature = 0.1,
  angle = 100,
  shape = -0.8,
  ncp = 5,
  inflect = TRUE,
  gp = grid::gpar(col = "ivory4", lwd = 2)
)

class(cfish_s) <- c("picture", class(cfish_s))
save(cfish_s, file = "data/cfish_s.rda")
