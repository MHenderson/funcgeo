% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quartet.R
\name{quartet}
\alias{quartet}
\title{Create a 2 by 2 grid pattern of pictures}
\usage{
quartet(p, q, r, s)
}
\arguments{
\item{p}{A `grid::grob` for the top-left position}

\item{q}{A `grid::grob` for the top-right position}

\item{r}{A `grid::grob` for the bottom-left position}

\item{s}{A `grid::grob` for the bottom-right position}
}
\value{
A `grid::grob` made up of the four input pictures arranged in a 2 by 2 grid pattern.
}
\description{
`quartet` returns a 2 by 2 grid pattern made up of the four input `grid::grob`
pictures: `p`, `q`, `r` and `s`. In the final grid `p` is in the top-left
position, `q` is in the top-right position, `r` is in the bottom-left
position and `s` is in the top-right position.
}
