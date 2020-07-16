# tidy functional geometry
library(sf)
library(tidyverse)

fish_p <- tibble(
   x = c(4,6,0,3,3,0,0,0,4,7,7,4,4,4,11,10,10,8,8,4,4,0,11,14,14,16,10,13,13,16,9,12,12,16,8,12,12,16,8,16,0,6,6,8,8,12,12,16,10,12,12,16,12,13,13,16,14,16)/16,
   y = c(4,0,3,4,4,8,8,3,5,6,6,10,10,5,0,4,4,8,8,13,13,16,0,2,2,2,4,5,5,4,6,7,7,6,8,9,9,8,12,10,16,15,15,16,16,12,12,12,16,14,14,13,16,15,15,14,16,15)/16,
  id = rep(1:29, each = 2)
)

fish_q <- tibble(
   x = c(2,4,4,4,4,6,6,6,6,8,8,8,8,10,10,10,10,14,12,13,13,16,16,15,15,16,16,12,12,6,6,4,4,0,13,16,14,16,15,16,0,7,9,10,10,12,12,9,8,9,9,11,11,8,0,3,3,7,7,8,2,3,4,5,6,7)/16,
   y = c(0,5,5,7,0,5,5,7,0,5,5,8,0,6,6,9,0,11,0,4,4,8,8,10,10,16,16,10,10,7,7,7,7,8,0,6,0,4,0,2,10,11,12,10,10,12,12,12,15,13,13,15,15,15,12,13,13,15,15,16,16,13,16,14,16,15)/16,
  id = rep(1:33, each = 2)
)

fish_r <- tibble(
   x = c(0,1,0,2,0,5,0,8,1,4,2,8,3,8,8,12,5,12,12,16,0,2,2,8,8,14,14,16,6,11,11,16,11,12,12,16,12,16,13,16,14,16,15,16)/16,
   y = c(12,14,8,12,4,10,0,8,1,0,2,0,3,2,2,0,5,3,3,0,16,12,12,8,8,6,6,4,16,10,10,6,16,12,12,8,12,16,13,10,14,12,15,14)/16,
  id = rep(1:22, each = 2)
)

fish_s <- tibble(
   x = c(0,4,4,8,8,16,0,2,0,7,0,8,0,7,0,7,0,7,8,7,7,7,7,8,8,10,10,16,10,11,10,12,12,12,12,10,13,15,15,15,15,13,12,13,13,15,15,16,13,16,14,16,15,16)/16,
   y = c(0,2,2,2,2,0,4,1,6,4,8,6,10,8,12,10,14,13,16,13,13,8,8,6,6,4,4,0,16,10,6,4,4,7,7,6,7,5,5,8,8,7,16,13,13,9,9,8,13,14,11,12,9,10)/16,
  id = rep(1:27, each = 2)
)

nill <- tibble(
  x = c(),
  y = c(),
  id = c()
)


# fish geometries ---------------------------------------------------------

convert_to_geometry <- function(X) {
  X %>%
    st_as_sf(coords = c("x", "y")) %>%
    group_by(id) %>%
    summarize() %>%
    st_cast("LINESTRING") %>%
    st_geometry() %>%
    st_union()
}

fish_p <- convert_to_geometry(fish_p)
fish_q <- convert_to_geometry(fish_q)
fish_r <- convert_to_geometry(fish_r)
fish_s <- convert_to_geometry(fish_s)

nill <- nill %>% st_as_sf(coords = c("x", "y")) %>% st_geometry() %>% st_union()

# rot ---------------------------------------------------------------------

# i need to rotate around centre
rot_a <- function(a) matrix(c(cos(a), sin(a), -sin(a), cos(a)), 2, 2)
rot <- function(p, a = pi/2) {
  M <- matrix(c(-1, 0, 0, 1), 2, 2)
  p * M * rot_a(a)
}

# flip --------------------------------------------------------------------

flip <- function(p) p * matrix(c(-1, 0, 0, 1), 2, 2)

# above -------------------------------------------------------------------

above <- function(p, q, m = 1, n = 1) {
  M <- matrix(c(1, 0, 0, m/(m + n)), 2, 2)
  N <- matrix(c(1, 0, 0, n/(m + n)), 2, 2)
  st_union(p * M, q * N + c(0, m/(m + n)))
}

# beside ------------------------------------------------------------------

beside <- function(p, q, m = 1, n = 1) {
  M <- matrix(c(m/(m + n), 0, 0, 1), 2, 2)
  N <- matrix(c(n/(m + n), 0, 0, 1), 2, 2)
  st_union(x = p * M, y = q * N + c(m/(m+n), 0))
}

# quartet -----------------------------------------------------------------

quartet <- function(p, q, r, s) {
  return(above(beside(p, q), beside(r, s)))
}

# cycle -------------------------------------------------------------------

cycle <- function(p) {
  return(quartet(p, rot(rot(rot(p))), rot(p), rot(rot(p))))
}

# nonet -------------------------------------------------------------------

nonet <- function(a, s, d, f, g, h, j, k, l) {
  C <- beside(f, beside(g, h, m = 1, n = 1), m = 1, n = 2)
  D <- beside(j, beside(k, l, m = 1, n = 1), m = 1, n = 2)
  B <- above(C, D, m = 1, n = 1)
  A <- beside(a, beside(s, d, m = 1, n = 1), m = 1, n = 2)
  above(A, B, m = 1, n = 2)
}

# circle limit ------------------------------------------------------------

t <- quartet(fish_p, fish_q, fish_r, fish_s)
u <- cycle(rot(fish_q))

side1 <- quartet(nill, nill, rot(t), t)
side2 <- quartet(side1, side1, rot(t), t)

corner1 <- quartet(nill, nill, nill, u)
corner2 <- quartet(corner1, side1, rot(side1), u)

corner <- nonet(
  corner2, side2, side2,
  rot(side2), u, rot(t),
  rot(side2), rot(t), rot(fish_q)
)

squarelimit <- cycle(corner)
