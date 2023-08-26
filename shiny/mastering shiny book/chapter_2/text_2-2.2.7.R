animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

ui <- fluidPage(
  
  textInput("name", "What's your name?"),
  passwordInput("password", "What's your password?"),
  textAreaInput("story", "Tell me about yourself", rows = 3),
  
  numericInput("num", "Number one", value = 0, min = 0, max = 100),
  sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
  sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100),
  
  dateInput("dob", "When were you born?"),
  dateRangeInput("holiday", "When do you want to go on vacation next?"),
  
  selectInput("state", "What's your favourite state?", state.name, multiple = TRUE),
  radioButtons("animal", "What's your favourite animal?", animals),
  checkboxGroupInput("animal", "What animals do you like?", animals),
  
  radioButtons("rb", "Choose one:",
               choiceNames = list(
                 icon("angry"),
                 icon("smile"),
                 icon("sad-tear")
               ),
               choiceValues = list("angry", "happy", "sad")
  ),
  'ola',
  checkboxInput("cleanup", "Clean up?", value = TRUE),
  checkboxInput("shutdown", "Shutdown?"),
  
  actionButton("click", "Click me!", class = "btn-danger"),
  actionButton("drink", "Drink me!", icon = icon("cocktail"),  class = "btn-success")
  )


server <- function(input, output, session) {
  
  
}

shinyApp(ui, server)
