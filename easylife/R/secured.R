#' let's communicate in secret!
#' @param x a word to be secured
#' @description to transcode a word to it's opposite in alphabet, vowel by vowel, consonant by consonant.
#' @examples secured('Li Xunhuan')
#' @return secured / unsecured strings.
#'
#' @export
secured <- function(x){
  let <- unlist(strsplit(x,split = ''))
  vowel <- c('a','e','i','o','u')
  consonant <- letters[!(letters %in% vowel)]
  VOWEL <- c('A','E','I','O','U')
  CONSONANT <- LETTERS[!(LETTERS %in% VOWEL)]
  se.let <- NULL
  for (i in 1:length(let)) {
    if(let[i] %in% vowel){
      se.let1 <- vowel[6-match(let[i],vowel)]
    }else{
      if(let[i] %in% VOWEL){
        se.let1 <- VOWEL[6-match(let[i],VOWEL)]
      }else{
        if(let[i] %in% consonant){
          se.let1 <- consonant[22-match(let[i],consonant)]
        }else{
          if(let[i] %in% CONSONANT){
            se.let1 <- CONSONANT[22-match(let[i],CONSONANT)]
          }else{
            se.let1 <- let[i]
          }
        }
      }
    }
    se.let <- c(se.let,se.let1)
  }
  se.x <- paste(se.let,collapse = '')
  return(se.x)
}
