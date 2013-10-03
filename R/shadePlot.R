
#' Shade a section of a pdf
#' 
#' Plot a pdf and shade a section of it.
#' 
#' @param func The density function to be plotted (dnorm, dt, df)
#' @param xlim The x-limits for the plotting region 
#' @param ylim The y-limits for the plotting region.  If left
#'   as NULL then it will automatically use a reasonable ylimit
#'   for the upper bound by figuring out the highest point
#'   in your plotting region
#' @param shadelim A vector containing the upper endpoint
#'   and the lower endpoint of the region you want to shade
#' @param col The color of the shaded region
#' @param xlab Label for the x-axis
#' @param ylab Label for the y-axis
#' @param main Title for the plot
#' @param \ldots Additional parameters to pass onto the density
#'   function.  For instance if you wanted to plot a normal density
#'   with a mean of 5 and sd of 2 you would also pass in mean=5, sd=2
#'   in the parameter list (assuming you used dnorm as your 'func').
#'   
#' @export
shadePlot <- function(func = dnorm, 
                      xlim = c(-3,3), 
                      ylim = NULL, 
                      shadelim = c(0, 1),
                      col = "red", 
                      xlab = "x", 
                      ylab = expression(paste(f[X](x))), 
                      main = "", 
                      ...){
    
    xs <- seq(xlim[1], xlim[2], length.out = 1000)
    ys <- func(xs, ...)
    
    # Find appropriate shading region
    lb <- max(shadelim[1], xlim[1])
    ub <- min(shadelim[2], xlim[2])
    
    # Make sure plot has lower bound of y = 0
    xy <- xy.coords(xs, ys)
    if (is.null(ylim)){
        ylim <- range(xy$y[is.finite(xy$y)])
        ylim[1] <- 0
    }
    
    # Plot the function
    plot(xs, ys, type = "l", xlim = xlim, ylim = ylim, xlab = xlab, ylab = ylab, main = main)
    
    # Find which xs are inside of our bounds
    idx <- ((xs >= lb) & (xs <= ub))
    
    # Shade the appropriate region.
    polygon(c(lb, lb, xs[idx], ub, ub), c(0, func(lb, ...), ys[idx], func(ub, ...), 0), col = col) 
}