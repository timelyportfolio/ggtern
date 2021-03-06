\name{theme_ticksoutside}
\alias{theme_ticksinside}
\alias{theme_ticksoutside}
\title{Place Ticks Inside or Outside}
\usage{
  theme_ticksoutside()

  theme_ticksinside()
}
\description{
  \code{theme_ticksoutside} is a function that ensures the
  ticks are placed OUTSIDE of the plot area, whereas,
  \code{theme_ticksinside} is a function that ensures the
  ticks are placed INSIDE of the plot area (opposite to
  \code{theme_ticksoutside})
}
\examples{
data(Feldspar)
ggtern(data=Feldspar,aes(Ab,An,Or)) +
  geom_point() +
  theme_bw() +
  theme_nogrid() +
  theme_ticksinside()
}

