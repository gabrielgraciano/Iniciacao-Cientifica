library(shiny)


ui <- fluidPage(
  
  textInput("name", '', placeholder = 'your name')
)


server <- function(input, output, session) {
  
  
}

shinyApp(ui, server)

