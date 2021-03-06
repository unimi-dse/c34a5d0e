ui <- fluidPage(

  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),

  titlePanel(h1("Grade Calculator", align='center')),

  sidebarLayout(
    sidebarPanel("REMARK: Use the name which is in the csv file.
                 Type:
                 'Giorgia', 'Anna', 'Corrado', 'Alejandra', 'Andrea', 'Gerolamo'"),
    mainPanel(

      div(
        h1("Would you like to know your Final Grade Classification?", align='center'),
        textInput("text", h3("Insert your ID name")),
        submitButton("Calculate"),
        h1(textOutput("selected_var"), align='center', id = "Voto"),
      )
    )
  )

)
