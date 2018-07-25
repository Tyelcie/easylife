#' play a dice-tossing game
#'
#' @description When you don't know what to do, this helps you to make a
#' final decision via a simulated coin tossing or dice tossing game.
#' @param Points a character vector specifying all the options you're
#' wagging amongst.
#' @examples Points <- c('Do the Laundry','Homework','Cook','Go to Bed')
#'
#' @export
dice <- function(Points){
  Num <- sample(1:length(Points),1)
  plot.new()
  text(0.5,0.5,Points[Num],cex = 4)
  return(Points[Num])
}
