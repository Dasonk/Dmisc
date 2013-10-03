\name{sinkReset}
\alias{sinkReset}
\title{Resets any sink connections}
\usage{
  sinkReset()
}
\description{
  Resets any sinky connections.  This makes the appropriate
  number of calls to sink so that no matter how many
  diversions there have been the output will be go to
  standard out once more.
}
\details{
  closeAllConnections() is a better alternative.
}
\examples{
sink("fakefileasdfasdfasdf.txt")
2 + 2 # this will get sent to fakefileasdfasdfasdf.txt
sink("anotherfakefile.txt")
3 + 3 # sent to anoterfakefile.txt
sinkReset()
2 + 2 # results should display in console
}
\references{
  \url{http://stackoverflow.com/a/18730656/1003565}
}

