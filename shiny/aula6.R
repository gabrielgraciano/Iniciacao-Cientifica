library(shiny)

ui <- fluidPage(
  titlePanel("Demonstração de selectUI widget"),
  sidebarLayout(
    sidebarPanel(
      selectInput("state", "Selecione um estado",
                  c("São Paulo", "Rio de Janeiro","Paraná", "Amazonas", "Pará"), 
                  selected = "Pará", multiple = TRUE)
    ),
    mainPanel(
      paste("Você selecionou:"),
      textOutput("estado")
    )
  )
  )

server <- function(input, output){
  
  
  output$estado <- renderText(input$state[1:length(input$state)])
          
          
  
}

shinyApp(ui, server)
