\name{linfinder}
\alias{linfinder}
\title{Finds linear combinations}
\usage{
  linfinder(mat, prefix = "Column_")
}
\arguments{
  \item{mat}{An input matrix}
}
\description{
  Finds linear combinations of columns that make up
  linearly dependent columns
}
\examples{
mat <- matrix(c(1,1,0,1,0,1,1,0,0,1,1,0,1,1,0,1,0,1,0,1), byrow=TRUE, ncol=5, nrow=4)
linfinder(mat)
}

