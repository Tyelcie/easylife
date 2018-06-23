\name{dice}
\alias{dice}
\title{Final decision maker!}
\usage{
dice(Points)
}
\description{
When you don't know what to do...This helps you to make a final decision via a simulated coin tossing or dice tossing.
}
\arguments{
\item{Points}{a character vector specifying all the options you're wagging amongst. Of course it is not necessarily to be a length of 2 or 6, any length is ok.}
}
\value{
No matter what you get, go to do it ~.~
}
\examples{
Points <- c('洗锅','洗碗','洗衣服','拖地','做作业','睡觉')
dice(Points)
}

\name{trans}
\alias{trans.data.frame}
\title{transpose a data frame}
\usage{
trans(x,row.names = T,col.names = T)
}
\description{
}
\arguments{
\item{x}{a data frame to be transposed}
\item{row.names}{a logic value to define if the new rowname should be of the original colnames}
\item{col.names}{similar to row.names}
}
\value{
A data frame transposed from the input data frame
}
\examples{
A <- data.frame(A = c(1:3),B = c(letters[1:3]),row.names = letters[3:5])
B <- trans(A)
}
