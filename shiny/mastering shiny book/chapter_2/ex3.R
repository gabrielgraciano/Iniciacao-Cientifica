library(shiny)


ui <- fluidPage(
  
 sliderInput('slider', 'select the interval', min = 0, max = 100, step = 5, value = 0, 
             animate = TRUE)

)

server <- function(input, output, session) {
  
  
}

shinyApp(ui, server)

