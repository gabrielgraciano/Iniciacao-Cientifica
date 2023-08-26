ui <- fluidPage(
  
 sliderInput('date', 'when should we deliver?', min = as.Date('2020-09-16', '%Y-%m-%d'),
             max = as.Date('2020-09-23', '%Y-%m-%d'), value = as.Date('2006-01-01', timeFormat="%Y-%m-%d"))

)

server <- function(input, output, session) {
  
  
}

shinyApp(ui, server)
