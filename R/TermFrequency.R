#' TermFrequency
#'
#' This function reads the data into the dataframe how many exams have been in a term
#' @return plot of the density of exams in a term
#' @export
#' @importFrom plotly plot_ly
#'
TermFrequency <- function(){

  DfDSE <- gradecalculator::mydata
  Students<-unique(DfDSE$Student)

  TermFreq <- table(DfDSE$Date)

  Density <- as.vector(TermFreq)
  Term <- names(TermFreq)

  p <- plot_ly(x = ~Term, y = ~Density, type = 'scatter', mode = 'lines')

  return(p)
}
