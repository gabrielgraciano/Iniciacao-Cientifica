#ui principal
library(shiny)
library(shinydashboard)
source('banana.R')
source('trocandonome.R')
source('protocolo.R')


menu
ui <- dashboardPage(
  dashboardHeader(title = "Garu"),
  dashboardSidebar(
    sidebarMenu(
      menuItem('Dashboard', tabName = 'dashboard', icon = icon('dashboard')),
      menuItem('Widgets', tabName = 'widgets', icon = icon('th'), startExpanded = T,
               menuSubItem('Protocolos', tabName = 'protocolo_si', icon = icon('pencil'))
      )
    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      banana,
      
      # Second tab content

      lapis
      
    )
  )
)

server <- function(input, output) {
  
  
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}


shinyApp(ui, server)

# Run the application 
shinyApp(ui = ui, server = server)


#protocolo.R

lapis <-
  tabItem(tabName = "protocolo_si",
          h2("testetesteteste"))

#trocandonome.R
mamao <- 
  tabItem(tabName = "widgets",
         h2("Widgets tab content"))

#banana.R
banana <-
  tabItem(tabName = "dashboard",
          fluidRow(
            box(plotOutput("plot1", height = 250)),
            
            box(
              title = "Controls",
              sliderInput("slider", "Number of observations:", 1, 100, 50)
            )
          )
  )
