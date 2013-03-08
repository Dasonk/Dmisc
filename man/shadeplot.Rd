\name{shadeplot}
\alias{shadeplot}
\title{Shade a section of a pdf}
\usage{
  shadeplot(func = dnorm, xlim = c(-3, 3), ylim = NULL,
    shadelim = c(0, 1), col = "red", xlab = "x",
    ylab = expression(paste(f[X](x))), main = "", ...)
}
\arguments{
  \item{func}{The density function to be plotted (dnorm,
  dt, df)}

  \item{xlim}{The x-limits for the plotting region}

  \item{ylim}{The y-limits for the plotting region.  If
  left as NULL then it will automatically use a reasonable
  ylimit for the upper bound by figuring out the highest
  point in your plotting region}

  \item{shadelim}{A vector containing the upper endpoint
  and the lower endpoint of the region you want to shade}

  \item{col}{The color of the shaded region}

  \item{xlab}{Label for the x-axis}

  \item{ylab}{Label for the y-axis}

  \item{main}{Title for the plot}

  \item{\ldots}{Additional parameters to pass onto the
  density function.  For instance if you wanted to plot a
  normal density with a mean of 5 and sd of 2 you would
  also pass in mean=5, sd=2 in the parameter list (assuming
  you used dnorm as your 'func').}
}
\description{
  Plot a pdf and shade a section of it.
}

