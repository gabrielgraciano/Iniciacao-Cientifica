library(shiny)

ui <- fluidPage(
  
  textInput('name', 'what is your name?'),
  numericInput('age', 'How old are you?', value = NA),
  textOutput('greeting')
)

server <- function(input, output, session) {
  
  output$greeting <- renderText({
    paste0("Hello, ", input$name, 'you are ', input$age)
  })
}


shinyApp(ui = ui, server = server)
