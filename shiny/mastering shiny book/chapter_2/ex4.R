library(shiny)



ui = fluidPage(
  selectInput('state', 'select a state', list(
    'East Coast' = list('NY', 'MR'),
    'West Coast' = list('AB', 'CD'),
    'South Coast' = list('BG', 'DJ')
  )
  ),
  textOutput('result')
)


server = function(input, output) {
  output$result <- renderText({
    paste("You chose", input$state)
  })
}


shinyApp(ui, server)
