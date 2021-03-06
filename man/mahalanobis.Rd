\name{mahalanobisDistance}
\alias{mahalanobisDistance}
\title{Mahalanobis Distance}
\usage{
  mahalanobisDistance(x, x.mean, x.cov,
    whichlines = c(0.975, 0.9, 0.75), m = 360)
}
\arguments{
  \item{x}{data}

  \item{x.mean}{mean value}

  \item{x.cov}{coveriance value}

  \item{whichlines}{the confidence values}

  \item{m}{the number of values to return for each line}
}
\value{
  list containing mdX and mdY values.
}
\description{
  Modified version of the code provided in the
  \code{\link[chemometrics]{drawMahal}} package
}

