\name{permutations}
\alias{permutations}
\title{Generate permutations}
\usage{
  permutations(x)
}
\arguments{
  \item{x}{The vector to create permutations of}
}
\description{
  Generates all length(x)! permutations of the elements in
  a vector x.  If there are duplicate elements in x then
  there will be repeated 'permuations' in the result.
}
\details{
  The result is a list where each element is a vector
  containing one of the permutations.
}
\examples{
permutations(1:3)
permuations(c("a", "b", "c"))
permutations(c("raptors", "are", "horrible"))
}

