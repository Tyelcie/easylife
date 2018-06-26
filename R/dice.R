#' play a dice-tossing game
#'
#' @param any options you're considering
dice <- function(Points){
  Num <- sample(1:length(Points),1)
  plot.new()
  text(0.5,0.5,Points[Num],cex = 4)
  return(Points[Num])
}
