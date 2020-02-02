#' TermFrequency
#'
#' This function reads the data into the dataframe how many exams have been in a term
#' @return plot of the density of exams in a term
#' @export
#'
TermFreqency <- function(){
DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/FileDse.csv")
Students<-unique(DfDSE$Student)

TermFreq <- table(DfDSE$Date)

Density <- as.vector(TermFreq)
Term <- names(TermFreq)

p <- plot_ly(x = ~Term, y = ~Density, type = 'scatter', mode = 'lines')

return(p)
}