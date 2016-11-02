f <- linesGrob(
  x = c(.1, .9, .9, .2, .2, .6, .6, .2, .2, .1, .1),
  y = c(.9, .9, .8, .8, .6, .6, .5, .5, .1, .1, .9),
  vp = viewport(width = 1, height = 1)
)

save(f, "data-raw/f.rda")
