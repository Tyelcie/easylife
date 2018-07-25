#' transpose a data frame
#' @param x a data frame to be transposed
#' @param row.names logical to define if the new rowname should be of the original colnames
#' @param col.names similar to the row.names
#' @import data.table
#' @details Transpose a data frame probably with dimnames. If there are
#' column names or row names, you can determine wether to have them also
#' transposed.
#' @examples df <- data.frame(A = c(1:4),B = c(2:5),C = c(3,6))
#' rownames(df) <- letters[1:4]
#' trans(df)
#'
#' @export
trans <- function(x,row.names = T,col.names = T){
  y <- transpose(x)
  if(row.names){
    rownames(y) <- colnames(x)
  }
  if(col.names){colnames(y) <- rownames(x)
  }
  return(y)
}
