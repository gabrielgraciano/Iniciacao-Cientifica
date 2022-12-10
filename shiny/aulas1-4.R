library(shiny)

shinyUI(fluidPage(
  
  titlePanel(),
  sidebarLayout(
    sidebarPanel(),
    mainPanel()
    
  )
)

)
```

```{r}
library(shiny)

ui <- fluidPage(
  headerPanel(title = "demonstration of text input widget in shiny"),
  sidebarLayout(
    sidebarPanel(
      h4("Enter personal information"),
      
      textInput("name", "Enter your name", ""),
      textInput("Age", "Enter your age", ""),
      
      radioButtons("gender", "Select the  gender", list(c("Male", "Female")), "")
      
    ),
      
                 
                
    mainPanel(("Personal Information"),
              textOutput("myname"),
              textOutput("myage"),
              textOutput("mygender"))
    
  )


server <- function(input, output) {
  
  output$myname <- renderText(input$name)
  output$myage <- renderText(input$Age)
  output$mygender <- renderText(input$gender)
  
}

shinyApp(ui, server)

