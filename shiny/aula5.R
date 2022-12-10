library(shiny)

ui <- fluidPage(
titlePanel("Demonstration of sliderInput widget in shiny"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slide", "select the value from slider", min = 0, max = 5, value = 2, 
                  animate = T, step=0.2)
      
      
    ),
    mainPanel(
      
      textOutput("out")
    )
    
  )
    
)

server <- function(input, output) {
  output$out <- renderText(
    paste("You selected the value as: ", input$slide))
}

shinyApp(ui, server)

#funções importantes: sliderInput(animate = ): anima a barra de slider.
#Slider está dentro de sidebarPanel. sliderInput(step = ) permite ampliar ou reduzir 
#o intervalo entre os pontos da reta. 
#Caso se queira selecionar um intervalo, e não um valor fixo, pode-se criar um conjunto
#em sliderInput(value = c(x,y)).
