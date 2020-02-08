server <- function(input, output) {

  output$selected_var <- renderText({

    Students <- vector()
    Students <- input$text

    if(input$text != ""){
      unlist(weightedaverage(Students)$degrees)

    }
    else{
      print("")
    }

  })


}
