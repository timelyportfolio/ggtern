#' 2d density estimation - (ggtern version)
#'
#' Patched version of the 2d density estimation.
#' @inheritParams ggtern::stat_density2d
#' @importFrom MASS kde2d
#' @name stat_density2d
#' @aliases StatDensity2dtern
#' @export
#' @seealso \code{\link[ggtern]{geom_density2d}}
stat_density2d <- function (mapping = NULL, data = NULL, geom = "density2dtern", position = "identity", na.rm = FALSE, contour = TRUE, n = 100, ...) {
  StatDensity2dtern$new(mapping = mapping, data = data,geom=geom,geometry=geom,position = position, na.rm = na.rm, contour = contour, n = n,...)
}

StatDensity2dtern <- proto(Statnew, {
  objname <- "density2dtern"
  default_geom <- function(.) GeomDensity2dTern
  #default_aes <- function(.) aes(colour = "#3366FF")
  required_aes <- c("x", "y")
  calculate <- function(., data, scales, na.rm = FALSE, contour = TRUE, n = 100, geometry="Density2dTern",...) {
    if(empty(data)){return(data.frame())}
    
    #ggtern
    last_coord <- get_last_coord()
    if(inherits(last_coord,"ternary"))
      data <- trytransform(data,last_coord)
    
    df <- data.frame(data[, which(colnames(data) %in% c("x", "y","weight"))])
    df <- remove_missing(df, na.rm, name = "stat_density2d", finite = TRUE)
    
    #ggtern
    xlim <- ifthenelse(inherits(last_plot(),"ggtern"),c(1,0),scale_dimension(scales$x))
    ylim <- ifthenelse(inherits(last_plot(),"ggtern"),c(1,0),scale_dimension(scales$y))
    
    w <- df$weight
    if(is.numeric(w) & length(unique(w)) > 1){
      dens <- safe.call(kde2d.weighted, list(x = df$x, y = df$y, w=w, n = n,lims = c(xlim,ylim), ...))
      dens$z <- (dens$z - min(dens$z))/(max(dens$z) - min(dens$z))
      dens$z <- dens$z*diff(range(w)) + min(w)
    }else{
      dens <- safe.call(kde2d, list(x = df$x, y = df$y, n = n,lims = c(xlim,ylim), ...))
    }
    df <- with(dens, data.frame(expand.grid(x = x, y = y), z = as.vector(z)))
    
    #ggtern
    if(inherits(last_coord,"ternary")){
      df <- sink_density(df,remove=!identical(geometry,"polygon"),coord=last_coord)
    }
    df$group <- data$group[1]
    
    if (contour) {
      StatContour$calculate(df, scales,...)     
    } else {
      names(df) <- c("x", "y", "density", "group")
      df$level <- 1
      df$piece <- 1
      df
    }
  }  
})