# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' play a dice-tossing game
#'
#' @param any options you're considering
dice <- function(Points){
  Num <- sample(1:length(Points),1)
  plot.new()
  text(0.5,0.5,Points[Num],cex = 4)
  return(Points[Num])
}

#' transpose a data frame
#' @param x a data frame to be transposed
#' @param row.names logic to define if the new rowname should be of the original colnames
#' @param col.names similar to the row.names
#' @importFrom data.table,'transpose'
trans <- function(x,row.names = T,col.names = T){
  y <- transpose(x)
  if(row.names){
    rownames(y) <- colnames(x)
  }
  if(col.names){colnames(y) <- rownames(x)
  }
  return(y)
}
