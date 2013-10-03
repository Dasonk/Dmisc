\name{linFinder}
\alias{linFinder}
\title{Finds linear combinations}
\usage{
  linFinder(mat, prefix = "Column_")
}
\arguments{
  \item{mat}{An input matrix}

  \item{prefix}{Character string.  What to prefer the
  output columns with.}
}
\description{
  Finds linear combinations of columns that make up
  linearly dependent columns
}
\examples{
mat <- matrix(c(1,1,0,1,0,1,1,0,0,1,1,0,1,1,0,1,0,1,0,1), byrow=TRUE, ncol=5, nrow=4)
linFinder(mat)
}

