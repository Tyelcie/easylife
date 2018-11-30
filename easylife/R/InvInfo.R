#' read Invoice Info from elect invoice pdfs
#'
#' @description read invoice pdfs and extract main information. Current version
#' can take into account the file name, invoice No., date and price.
#' @param x path to the pdfs. Can be a vector for several files. Better set
#' working directory first.
#' @param dir path where the pdf invoice files stored. Default current path.
#' @return A data frame containing main information of those files.
#' @examples setwd('D://Invoice/')
#' Invfiles <- list.files(pattern = 'pdf$')
#' Inv <- InvInfo(Invfiles)
#' @import tm stringr
#'
#' @export

InvInfo <- function(x, dir = './'){
  Rpdf <- readPDF(control = list(text = '-layout'))
  PDFtxt <- Corpus(URISource(paste0(dir, x)),
                   readerControl = list(reader = Rpdf))

  Info <- data.frame()
  for (i in 1:length(PDFtxt)) {
    Cont <- PDFtxt[[i]][['content']]
    C.splt <- strsplit(Cont,split = '\r\n')[[1]]

    ## extract file name
    FileName <- names(PDFtxt[i])

    ## extract price
    SumP <- C.splt[grep('价税合计',C.splt)][[1]]
    Price <- str_extract(SumP,"\\-*\\d+\\.*\\d*")
    Price <- as.numeric(gsub(' *','',Price))

    ## extract Date
    Date <- strsplit(C.splt[grep('开票日期',C.splt)],split = '[：*\\:]')[[1]][2]
    Date <- gsub('[^0-9]', '', Date)
    Date <- as.Date(Date, format = '%Y%m%d')

    ## invoice No.
    NO <- strsplit(C.splt[grep('发票号码',C.splt)],split = '[：*\\:]')[[1]][2]
    NO <- gsub(' *','',NO)

    ## Company Name
    Name <- strsplit(C.splt[grep('名 *称',C.splt)],split = '[：*\\:]')[[3]][2]
    Name <- gsub(' *','',Name)

    Info1 <- data.frame(File = FileName,
                        Company = Name,
                        InvNo = NO,
                        Date = Date,
                        Price = Price)
    Info <- rbind(Info,Info1)
  }
  return(Info)
}
