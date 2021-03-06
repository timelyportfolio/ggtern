\name{geom_smooth}
\alias{GeomSmoothtern}
\alias{geom_smooth}
\title{Add a smoothed conditional mean (MODIFIED)}
\usage{
  geom_smooth(mapping = NULL, data = NULL,
    stat = "smoothtern", position = "identity",
    limitarea = TRUE, fullrange = FALSE, ...)
}
\arguments{
  \item{limitarea}{logical value to indicate whether
  smoothed data is discared outside of the ternary plot
  area, when this is set to \code{TRUE}, the value of
  \code{fullrange} has no meaning, since the full-range
  becomes essentially becomes limited by the ternary plot
  area. When set to \code{FALSE}, \code{fullarea} behaves
  as per normal.}

  \item{fullrange}{extend the range to the edge of the
  plotting panel.}

  \item{mapping}{The aesthetic mapping, usually constructed
  with \code{\link{aes}} or \code{\link{aes_string}}. Only
  needs to be set at the layer level if you are overriding
  the plot defaults.}

  \item{data}{A layer specific dataset - only needed if you
  want to override the plot defaults.}

  \item{stat}{The statistical transformation to use on the
  data for this layer.}

  \item{position}{The position adjustment to use for
  overlappling points on this layer}

  \item{...}{other arguments passed on to
  \code{\link{layer}}. This can include aesthetics whose
  values you want to set, not map. See \code{\link{layer}}
  for more details.}
}
\description{
  \code{geom_smooth} is a function that provides additional
  functionality to the standard
  \code{\link[ggplot2]{geom_smooth}} function in the event
  that it is being used on a \code{ggtern} object.
  Parameters are the same, with the exception of the
  introduction of the \code{limitarea} parameter.
}

