\name{trainTest}
\alias{trainTest}
\title{Create training/testing sets}
\usage{
  trainTest(dat, p.train = 0.7, sort = FALSE)
}
\arguments{
  \item{dat}{A data.frame or matrix that you want to split
  into training/testing sets.  It is assumed that each row
  is a separate observation}

  \item{p.train}{Numeric.  A number between 0 and 1
  dictating what percentage of the data will be put in the
  training set}

  \item{sort}{Logical.  Whether you want the
  training/testing sets to be sorted in the same order as
  the original data.}
}
\description{
  Split a dataset into training and testing sets based on a
  training/testing percentage
}
\examples{
trainTest(mtcars)
}

