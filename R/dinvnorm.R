#' Inverse of dnorm
#' 
#' Inverse of dnorm.  Provides the two values that solve
#' y = dnorm(x, mu, sigma)
#' 
#' @param y Numeric. The value to take the inverse normal of
#' @param mu Numeric. The mean of the normal.
#' @param sigma Numeric. The standard deviation of the normal.
#' 
#' @note Inspired by a stackoverflow question that I can't seem to find anymore
#' @export
dinvnorm <- function(y, mu, sigma){
    pm <- sqrt(-2*sigma^2*log(sqrt(2*pi)*sigma*y))
    out <- mu + c(-1,1)*pm
    return(out)
}
