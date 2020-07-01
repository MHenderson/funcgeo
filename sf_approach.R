# tidy functional geometry

library(sf)
library(tidyverse)

fish_p <-
  tibble::tibble(
    x = c(4,6,0,3,3,0,0,0,4,7,7,4,4,4,11,10,10,8,8,4,4,0,11,14,14,16,10,13,13,16,9,12,12,16,8,12,12,16,8,16,0,6,6,8,8,12,12,16,10,12,12,16,12,13,13,16,14,16)/16,
    y = c(4,0,3,4,4,8,8,3,5,6,6,10,10,5,0,4,4,8,8,13,13,16,0,2,2,2,4,5,5,4,6,7,7,6,8,9,9,8,12,10,16,15,15,16,16,12,12,12,16,14,14,13,16,15,15,14,16,15)/16,
    id = rep(1:29, each = 2)
  )

fish_p_sf <- sf::st_as_sf(fish_p, coords = c("x", "y"))

ggplot(fish_p_sf) +
  geom_sf()

fish_p_lines_sf <- fish_p_sf %>%
  group_by(id) %>%
  summarize() %>%
  sf::st_cast("LINESTRING")

fish_p <- st_geometry(fish_p_lines_sf)

fish_p %>%
  ggplot() +
    geom_sf()

# rot ---------------------------------------------------------------------

rot_a <- function(a) matrix(c(cos(a), sin(a), -sin(a), cos(a)), 2, 2)
rot <- function(p, a = pi/2) p * rot_a(a)

fish_p %>%
  rot() %>%
  rot() %>%
  rot() %>%
  rot() %>%
  ggplot() +
    geom_sf()

# flip --------------------------------------------------------------------

flip <- function(p) p * matrix(c(-1, 0, 0, 1), 2, 2)

fish_p %>%
  flip() %>%
  ggplot() +
    geom_sf()

# above -------------------------------------------------------------------

above <- function(p, q) st_union(p*0.5, q*0.5 + c(0, 0.5))

above(fish_p, fish_p)  %>%
  ggplot() +
  geom_sf()

# beside ------------------------------------------------------------------

beside <- function(p, q) st_union(p*0.5, q*0.5 + c(0.5, 0))

fish_p %>%
  beside(fish_p) %>%
  ggplot() +
  geom_sf()


# quartet -----------------------------------------------------------------

quartet <- function(p, q, r, s) {
  return(above(beside(p, q), beside(r, s)))
}

quartet(fish_p, fish_p, fish_p, fish_p) %>%
  ggplot() +
  geom_sf()
