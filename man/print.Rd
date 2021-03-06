\name{print.ggtern}
\alias{print.ggplot}
\alias{print.ggtern}
\title{Draw plot on current graphics device.}
\usage{
  \method{print}{ggtern} (x, newpage = is.null(vp),
    vp = NULL, ...)

  \method{print}{ggplot} (x, newpage = is.null(vp),
    vp = NULL, ...)
}
\arguments{
  \item{x}{plot to display}

  \item{newpage}{draw new (empty) page first?}

  \item{vp}{viewport to draw plot in}

  \item{...}{other arguments not used by this method}
}
\description{
  \code{print.ggtern} is the default print function for
  \code{\link{ggtern}} objects.

  \code{print.ggplot} is the default print function for
  \code{ggplot} objects.
}
\keyword{hplot}

