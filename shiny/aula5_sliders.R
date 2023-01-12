library(shiny)

ui <- fluidPage(
  titlePanel("Demonstração de slide bar"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("Desliza", "Select the value from slider", min = 0, max = 20,
                  value = c(1, 2), animate = T, step = 0.5)
    ),
    mainPanel(
      
      textOutput("out")
    )
  
  )
)
    
server <- function(input, output) {
  
  output$out <- renderText(
    paste("A distância entre os valores selecionados é", input$Desliza[2] - input$Desliza[1]))
}


shinyApp(ui, server)


#funções importantes: sliderInput(animate = ): anima a barra de slider.
#Slider está dentro de sidebarPanel. sliderInput(step = ) permite ampliar ou reduzir 
#o intervalo entre os pontos da reta. 
#Caso se queira selecionar um intervalo, e não um valor fixo, pode-se criar um conjunto
#em sliderInput(value = c(x,y)).
