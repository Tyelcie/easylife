#' play a dice-tossing game
#'
#' @description When you don't know what to do, this helps you to make a
#' final decision via a simulated coin tossing or dice tossing game.
#' @param ... please specify all the options you're wagging amongst.
#' @examples dice('Do the Laundry','Homework','Cook','Go to Bed')
#' @return Whatever it returns, gonna do it! It is said that the true point
#' of tossing is that, when waiting for the coin or dice in the air you finally
#' know your hope. hehe
#'
#' @export
dice <- function(...){
  message('tossing...')
  Sys.sleep(3)
  Rslt <- sample(c(...),1)
  par(family='STHeitiSC-Medium')
  plot.new()
  text(0.5,0.5,Rslt,cex = 4)
  return(Rslt)
}
