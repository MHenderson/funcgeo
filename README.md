
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/MHenderson/funcgeo.svg?branch=master)](https://travis-ci.org/MHenderson/funcgeo) [![Coverage Status](https://img.shields.io/codecov/c/github/MHenderson/funcgeo/master.svg)](https://codecov.io/github/MHenderson/funcgeo?branch=master)

funcgeo
=======

The goal of **funcgeo** is to reproduce, using R, all pictures from the following two papers of Peter Henderson:

-   [Henderson, P. (1982). *Functional Geometry*.](http://users.ecs.soton.ac.uk/peter/funcgeo.pdf)
-   [Henderson, P. (2002). *Functional Geometry*.](http://eprints.soton.ac.uk/257577/1/funcgeo2.pdf)

Installation
------------

You can install **funcgeo** from my Drat repository on Github:

``` r
# install.packages("drat")
drat::addRepo("MHenderson")
install.packages("funcgeo")
```

Examples
--------

``` r
library(funcgeo)

plot(cycle(rot(fish_q)))
```

![](README_files/figure-markdown_github/unnamed-chunk-1-1.png)

``` r
plot(quartet(fish_p, fish_q, fish_r, fish_s))
```

![](README_files/figure-markdown_github/unnamed-chunk-2-1.png)

``` r
plot(cycle(rot(fish_q)))
```

![](README_files/figure-markdown_github/unnamed-chunk-3-1.png)

To save a picture as SVG, use the `svg` device.

``` r
svg("fish.svg", width = 3, height = 3)
plot(quartet(fish_p, fish_q, fish_r, fish_s))
dev.off()
```

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
