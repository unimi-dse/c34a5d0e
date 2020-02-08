#' Weighted Average
#'
#' Takes the list of students, calculates weighted average of all the courses of the students and computes the final degree classification
#' @param Students it's the list of students which you want to calculate the final degree classification
#' @param DfDSE it's the dataframe that contains all the exams and info about DSE's students
#'
#' @return final degree classification
#'
#'
#' @export
#'
#' @importFrom stats weighted.mean
#'
weightedaverage<- function (Students, DfDSE){

  if(missing(DfDSE))
    DfDSE <- gradecalculator::mydata

  if(missing(Students))
    Students <- unique(gradecalculator::mydata$Students)


  degrees<- vector()
  complete<- vector()

  i <- is.na(DfDSE$Score)
  NonCompleteStudents<-unique(DfDSE$Students[i])


  for(Student in Students){
    i <- DfDSE$Student == Student
    scores<-DfDSE$Score[i]
    cfu<-DfDSE$Cfu[i]

    finaldegree <- weighted.mean(scores, cfu, na.rm = TRUE)*110/30
    degrees<- c(degrees,round(finaldegree, 2))

    if (is.element(Student, NonCompleteStudents)){

      complete <- c(complete, FALSE)
    }
    else{
      complete <- c(complete, TRUE)
    }

  }

  result <- data.frame(Students,degrees,complete)

  return(result)
}
