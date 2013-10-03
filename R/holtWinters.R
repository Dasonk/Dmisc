#' Holt winters smoothing no seasonality
#' 
#' Holt winters smoothing with no seasonality
#' 
#' @param y Vector. The data to smooth.
#' @param alpha Numeric.  A smoothing parameter
#' @param beta Numeric. A smoothing parameter
holtWinters <- function(y, alpha = .5, beta = .5){
    n <- length(y)
    yhat <- numeric(n)
    yhat[1:2] <- NA
    a <- numeric(n)
    a[1] <- NA
    a[2] <- y[2]
    b <- numeric(n)
    b[1] <- NA
    b[2] <- y[2] - y[1]
    for(i in seq(3, n)){
        yhat[i] <- a[i-1] + b[i-1]
        a[i] <- alpha*y[i] + (1-alpha)*yhat[i]
        b[i] <- beta*(a[i] - a[i-1]) + (1-beta)*(b[i-1])
    }
    
    dat <- data.frame(y = y, yhat = yhat, a = a, b = b)
    class(dat) <- c("holtwinters", class(dat))
    return(dat)
}

hwoptim <- function(y){
    n <- length(y)
    id <- seq(3, n)
    ll <- function(par){
        j <- holtwinters(y, par[1], par[2])
        sum( (j[id, 2] - j[id,1])^2 )
    }
    
    optim(c(.5,.5), ll)
}



plot.holtwinters <- function(obj){
    plot(obj[,1], type = "l")
    id <- seq(3, nrow(obj))
    lines(id, j[id, 2], col = "red")
}
# 
# x <- 1:100
# y <- 2 + .2*x + rnorm(100)
# p <- hwoptim(y)
# j <- holtwinters(y, p$par[1], p$par[2])
# 
# y <- arima.sim(100, model = list(ar = c(.2)))
# p <- hwoptim(y)
# j <- holtwinters(y, p$par[1], p$par[2])
# plot(j)