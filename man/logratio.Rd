\name{logratio}
\alias{isomLR}
\alias{isomLRinv}
\alias{log-ratio}
\alias{logratio}
\title{Log-ratio Transformations}
\usage{
  isomLR(x)

  isomLRinv(x.ilr)
}
\arguments{
  \item{x}{2D object to transform}

  \item{x.ilr}{2D object to transform}
}
\value{
  \code{isomLRinv} returns the transformed data

  \code{isomLRinv} returns the inverse-transformed data
}
\description{
  Log-ratio and Inverse Log-ratio transformations, for use
  as part of the \code{\link{geom_confidence}} geometry.
}
\details{
  \code{isomLR} is a function which executes the Log-ratio
  transformation as per the algorithm based on that
  provided in \code{\link[robCompositions]{isomLR}}.

  \code{isomLRinv} is a function which executes the Inverse
  isometric log-ratio transformation as per the algorithm
  based on that provided in
  \code{\link[robCompositions]{isomLRinv}}.

  The above functions are based on those provided as part
  of the robCompositions package.
}
\references{
  References are provided in the original
  \code{\link[robCompositions]{isomLR}} documentation.
}

