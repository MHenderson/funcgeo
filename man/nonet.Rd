% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nonet.R
\name{nonet}
\alias{nonet}
\title{Create a 3 by 3 grid pattern of pictures}
\usage{
nonet(a, s, d, f, g, h, j, k, l)
}
\arguments{
\item{a}{A `grid::grob` for the top-left position}

\item{s}{A `grid::grob` for the top-middle position}

\item{d}{A `grid::grob` for the top-right position}

\item{f}{A `grid::grob` for the middle-left position}

\item{g}{A `grid::grob` for the centre position}

\item{h}{A `grid::grob` for the middle-right position}

\item{j}{A `grid::grob` for the bottom-left position}

\item{k}{A `grid::grob` for the bottom-middle position}

\item{l}{A `grid::grob` for the bottom-right position}
}
\value{
A `grid::grob` made up of the nine input pictures arranged in a 3 by 3 grid pattern.
}
\description{
`nonet` returns a 3 by 3 grid pattern made up of the nine input `grid::grob`
pictures: `a`, `s`, `d`, `f`, `g`, `h`, `j`, `k`, `l`.
In the final grid `a` is in the top-left
position, `s` is in the top-middle position, `d` is in the top-right
position, `f` is in the middle-left position, `g` is in the centre position,
`h` is in the middle-right position, `j` is in the bottom-left position,
`k` is in the bottom-middle position and `l` is in the bottom-right position.
}
