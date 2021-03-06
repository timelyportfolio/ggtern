\name{ternaryscales}
\alias{scale_L}
\alias{scale_L_continuous}
\alias{scale_R}
\alias{scale_R_continuous}
\alias{scale_T}
\alias{scale_T_continuous}
\alias{ternaryscales}
\title{Ternary Continuous Scales}
\usage{
  scale_T_continuous(name = NULL,
    breaks = getOption("tern.breaks.default"),
    minor_breaks = getOption("tern.breaks.default.minor"),
    labels = 100 * breaks, limits = waiver())

  scale_L_continuous(name = NULL,
    breaks = getOption("tern.breaks.default"),
    minor_breaks = getOption("tern.breaks.default.minor"),
    labels = 100 * breaks, limits = waiver())

  scale_R_continuous(name = NULL,
    breaks = getOption("tern.breaks.default"),
    minor_breaks = getOption("tern.breaks.default.minor"),
    labels = 100 * breaks, limits = waiver())
}
\arguments{
  \item{breaks}{the major breaks}

  \item{minor_breaks}{the minor breaks}

  \item{labels}{the major labels}

  \item{limits}{the range of the scale}

  \item{name}{the name of the scale}
}
\description{
  Create continuous scales for the top (T), left (L) and
  right(R) species in the ternary diagram, and, control the
  appearance of the labels, the limits, major and minor
  breaks.
}
\details{
  At the moment, only continuous scales are availa ble for
  \code{ggtern} T, L and R axes - log scales are NOT
  available. If one is interested in merely controling the
  limits (ranges) of the T, L and R species, it is much
  easier to use the \code{tern_limits(...)} function or its
  aliasses, click \code{\link[=tern_limits]{HERE}} for
  further information.
}
\section{Top Apex Species}{
  \code{scale_T_continuous} creates a continuous scale for
  the top (T) species in the ternary diagram
}

\section{Left Apex Species}{
  \code{scale_L_continuous} creates a continuous scale for
  the left (L) species in the ternary diagram
}

\section{Right Apex Species}{
  \code{scale_R_continuous} creates a continuous scale for
  the right (R) species in the ternary diagram
}
\examples{
\donttest{
  data(Feldspar)
  plot <- ggtern(data=Feldspar,aes(An,Ab,Or)) +
          geom_point() +
          scale_T_continuous(breaks=seq(0,1,0.2),minor_breaks=seq(0,1,0.1)) +
          scale_L_continuous(breaks=seq(0,1,0.2),minor_breaks=seq(0,1,0.1))
  plot
}
}

