ui <- fluidPage(
  verbatimTextOutput('ex1'),
  textOutput('ex2'),
  verbatimTextOutput('ex3'),
  textOutput('ex4')
)

server <- function(input, output, session) {
  output$ex1 <- renderPrint(summary(mtcars))
  output$ex2 <- renderText("Good morning!")
  output$ex3 <- renderPrint(t.test(1:5, 2:6))
  output$ex4 <- renderText(str(lm(mpg ~ wt, data = mtcars)))
}

shinyApp(ui = ui, server = server)
