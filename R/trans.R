#' transpose a data frame
#' @param x a data frame to be transposed
#' @param row.names logic to define if the new rowname should be of the original colnames
#' @param col.names similar to the row.names
#' @import data.table

trans <- function(x,row.names = T,col.names = T){
  y <- transpose(x)
  if(row.names){
    rownames(y) <- colnames(x)
  }
  if(col.names){colnames(y) <- rownames(x)
  }
  return(y)
}
