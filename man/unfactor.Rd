\name{unfactor}
\alias{unfactor}
\title{Change factors to characters}
\usage{
  unfactor(df)
}
\arguments{
  \item{df}{The dataframe you wish to change the factors
  into characters}
}
\description{
  Change factors to characters in a dataframe
}
\examples{
df <- data.frame(a = letters[1:5], x = 1:5, y = LETTERS[1:5], stringsAsFactors = TRUE)
str(df)
df <- unfactor(df)
str(df)
}

