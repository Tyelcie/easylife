#' transpose a data frame
#' @param x a data frame to be transposed
#' @param row.names logic to define if the new rowname should be of the original colnames
#' @param col.names similar to the row.names
#' @import data.table
#' @details Transpose a data frame probably with dimnames. If there are
#' column names or row names, you can determine wether to have them also
#' transposed.

trans <- function(x,row.names = T,col.names = T){
  y <- transpose(x)
  if(row.names){
    rownames(y) <- colnames(x)
  }
  if(col.names){colnames(y) <- rownames(x)
  }
  return(y)
}
