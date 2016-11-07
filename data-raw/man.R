man <- polygonGrob(
  x = c(6, 0, 0, 6, 6, 4, 4, 6, 8, 10, 10, 8, 8, 10, 10, 12, 12, 8, 8, 10, 8, 7, 6, 4, 6)/14,
  y = c(10, 10, 12, 12, 14, 16, 18, 20, 20, 18, 16, 14, 12, 12, 14, 14, 10, 10, 8, 0, 0, 4, 0, 0, 8)/20,
  vp = viewport(width = 1, height = 1)
)

class(man) <- c("picture", class(man))

save(man, file = "data/man.rda")
