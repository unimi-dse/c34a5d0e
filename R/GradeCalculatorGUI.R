#' GradeCalculatorGUI
#'
#' Runs a Graphical User Interface to calculate your final degree
#'
#' @return shiny app
#' @export
#'
GradeCalculatorGUI <- function(){

  shiny::runApp(system.file("shiny/GradeCalculatorApp", package = "gradecalculator"))

}
