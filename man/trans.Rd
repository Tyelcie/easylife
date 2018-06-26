\name{trans}
\alias{trans}
\title{
Transpose a data frame
}
\description{
Transpose a data frame probably with dimnames
}
\usage{
trans(x,row.names = T,col.names = T)
}
\arguments{
  \item{x}{a data frame to be transposed}
  \item{row.names}{logic to define if the new rowname should be of the original colnames}
  \item{col.names}{similar to the row.names}
}
\details{
Transpose a data frame probably with dimnames. If there are colnames or rownames, you can determine wether to have them also transposed.
}
\value{
A transposed data frame.
}
\references{
}
\author{Tyelcie}
\note{}
\seealso{}
\examples{
## create a data frame
df <- data.frame(A = c(1:3),B = LETTERS[1:3],row.names = letters[1:3])
df # view
## transpose it with dimnames
trans(df,row.names = T,col.names = T)
