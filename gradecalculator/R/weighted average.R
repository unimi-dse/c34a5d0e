#' Weighted Average
#'
#' Takes in a csv file path, calculates weighted average of all the courses of the students and computes the final degree classification
#' @param csvpath it's the path of the file to be processed
#' @return final degree classification
#' @export
weightedaverage<- function (csvpath){
  DfDSE <- read.csv(csvpath)
  result<- vector()

  Students<-unique(DfDSE$Student)
  Cfus<-unique(DfDSE$Student)
  for(Student in Students){
    i <- DfDSE$Student == Student
    scores<-DfDSE$Score[i]
    cfu<-DfDSE$Cfu[i]
    result<- c(result, weighted.mean(scores, cfu, na.rm = TRUE)*110/30)
  }
  return(result)
}
