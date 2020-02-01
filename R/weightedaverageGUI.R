#' Weighted Average
#'
#' This function reads the data into the dataframe and give us the trend of the final grades
#' @return the trend of the final degree classification
#' @export
#'
weightedaverageGUI<- function (){
  DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/gradecalculator/FileDse.csv")
  Students<-unique(DfDSE$Student)
p <- plot_ly(
  x = Students,
  y = weightedaverage(DfDSE, Students),
  name = "SF Zoo",
  type = "bar"
)

return(p)
}
