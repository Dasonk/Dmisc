% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dinvnorm.R
\name{dinvnorm}
\alias{dinvnorm}
\title{Inverse of dnorm}
\usage{
dinvnorm(y, mu, sigma)
}
\arguments{
\item{y}{Numeric. The value to take the inverse normal of}

\item{mu}{Numeric. The mean of the normal.}

\item{sigma}{Numeric. The standard deviation of the normal.}
}
\description{
Inverse of dnorm.  Provides the two values that solve
y = dnorm(x, mu, sigma)
}
\note{
Inspired by a stackoverflow question that I can't seem to find anymore
}
