ui <- fluidPage(

  titlePanel(h1("Grade Calculator", align='center')),

  sidebarLayout(
    sidebarPanel("by Giorgia Mazzi"),
    mainPanel(

      h1("Would you like to know your Final Grade Classification?", align='center'),
      textInput("text", h3("Insert your ID name")),
      submitButton("Calculate"),
      textOutput("selected_var")
    )
  )

)

server <- function(input, output) {

  output$selected_var <- renderText({
    Students <- vector()
    Students <- input$text
    weightedaverage(Students)
  })

}

shinyApp(ui = ui, server = server)
