#' Weighted Average
#'
#' Takes in a dataframe and the list of students, calculates weighted average of all the courses of the students and computes the final degree classification
#' @param DfDSE it's the dataframe of the file to be processed
#' @param Students it's the list of students which you want to calculate the final degree classification
#' @return final degree classification
#' @export
#'
weightedaverage<- function (DfDSE, Students){

  result<- vector()

  Cfus<-unique(DfDSE$Student)

  for(Student in Students){
    i <- DfDSE$Student == Student
    scores<-DfDSE$Score[i]
    cfu<-DfDSE$Cfu[i]
    result<- c(result, weighted.mean(scores, cfu, na.rm = TRUE)*110/30)
  }
  return(result)
}

DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/gradecalculator/FileDse.csv")
Students<-unique(DfDSE$Student)
weightedaverage(DfDSE, Students)
