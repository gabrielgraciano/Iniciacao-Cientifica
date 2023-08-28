library(shiny)


ui <- fluidPage(
  textInput('name', "what's your name?"),
  textOutput('greeting')
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    paste('Hello,', input$name, '!')
  })
}
shinyApp(ui = ui, server = server)

# Bom monta um reactive graph de como cada parte da 
# aplicação shiny se relaciona. Existem relações de dependência.

# As reactive expressions recebem inputs e produzem outputs

# A ordem pela qual o reactive code é rodada depende apenas da relação gráfica 
# entre eles, e não da ordem em que aparecem no código.
