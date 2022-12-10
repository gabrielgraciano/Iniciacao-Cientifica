library(shiny)

ui <- fluidPage(
  titlePanel("Demonstration of the selectInput UI widget in shiny"),
  sidebarLayout(
    sidebarPanel(
    selectInput("statenames", "Select the state", c("California", "Florida", "Texas", "New York", "Arizona"),
                selected = "Texas", selectize = TRUE, multiple = TRUE)
    ),
    mainPanel(
      textOutput("state")
    )
    
  ))

#Multiple = TRUE nos permite escolher mais de uma opção

server <- function(input, output){
  output$state <- renderText(input$statenames)
}

shinyApp(ui, server)
