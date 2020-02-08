#' Weighted Average GUI
#'
#' This function reads the data into the dataframe and give us the trend of the final grades
#' @param Students it's the list of students which you want to calculate the final degree classification
#' @return the trend of the final degree classification
#' @export
#' @importFrom plotly plot_ly
#'
weightedaverageGUI<- function (Students){

  if(missing(Students))
    Students <- unique(gradecalculator::mydata$Students)

  df <- weightedaverage(Students)
  colors <- vector()

  for(completed in df$complete){

    colors <- c(colors, if(completed) "green" else "red")
  }

  p <- plot_ly(
    x = Students,
    y = df$degree,
    type = "bar",
    marker = list(color = colors)
  )

  return(p)
}
