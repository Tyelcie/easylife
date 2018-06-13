\name{dice}
\alias{dice}
\title{Final decision maker!}
\usage{
dice(Point)
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
