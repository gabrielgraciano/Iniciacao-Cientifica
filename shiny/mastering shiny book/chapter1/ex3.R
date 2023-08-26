library(shiny)

ui <- fluidPage(
  
  sliderInput('x', label = 'if x is', min = 0, max = 50, value = 30),
  sliderInput('y', label = 'and y is', min = 0, max = 50, value = 30), 'then, x
  times y is',
  textOutput('product')
)

server <- function(input, output, session) {
  
  output$product <- renderText({
    input$x * input$y
  })
}


shinyApp(ui = ui, server = server)
