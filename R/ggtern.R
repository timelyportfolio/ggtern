#' ggtern Constructor
#' 
#' Plots in \code{ggtern} are instigated via the default constructor: \code{ggtern(...)}, which is essentially a convenience wrapper for the following: 
#' \code{ggplot{...} + coord_tern()}, indeed, if one wishes to use \code{ggplot{...} + coord_tern()} then this is quite satisfactory.
#' @inheritParams ggplot2::ggplot
#' @aliases constructor
#' @return \code{ggtern(...)} returns an object of class \code{ggplot}.
#' @examples
#' \donttest{
#'  data(Feldspar)
#'  ggtern(data=Feldspar,aes(An,Ab,Or)) + geom_point()
#' }
#' @export
ggtern <- function(data=NULL,...){ggplot(data=data,...) + coord_tern()}







