\name{getArgs}
\alias{getArgs}
\title{Get function arguments}
\usage{
  getArgs()
}
\description{
  Gets the function arguments nicely.  Does not return
  arguments that are set by defaults
}
\examples{
test <- function(x=1, y=2, z=3){getArgs()}
}
\author{
  Hong Ooi (from StackOverflow)
}
\references{
  \url{http://stackoverflow.com/a/17257053/1003565}
}

