# Se digiar shinyapp + shift + tab o shiny já roda o básico do shinyapp

library(shiny)

ui <- fluidPage(
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)

# O comando ctrl + shift + enter permite inicializar o shinyapp diretamente

'
There are three main erros, which are:
- Unexpected error: easieste because it shows a traceback
- No errors, but incorrect values. Requires investigative skills
- Values correct but dont update the way expected. It is pretty challeging
because it is unique to Shiny'


' Tracebacks:
- when you get a traceback you may type traceback() to get
the sequence of calls that led to the problem but this cannot
be done in shiny. Instead you are supposed to read the error message carefully
and critically and always check if you are running the expected app and the expected
version of it'

'browser()
The function browser() allows you to launch a interactive debugger and
one advantage of it is that, since it is R code, you can make it conditional by combining
with if statement. This will allow you to run de debugger only for problematic inputs.


To be honest, i did not understand this part pretty well. At least i know that it exists
and when facing a bug I might try it. Debugging, at all, is the process of 
systematically comparing your expectations to reality until a mismatch is found'


' Once you eliminate the impossible, whatever remains, no matter how
improbable, must be the truth - Sherlock Holmes'


' A common courtesy when asking for help in blogs etc is to give a 
reproducible example (reprex), which is the smallest example that contains
the bug you are willing to fix

Some reprex tips:

- Use some data that everyone has, like mtcars or iris or even a new and short dataset
- If that does not work you may just turn your data into code with
dput(data) and it will generate the code that recreate data'

'It is not a huge concern for now, but would be nice if i read the
tidyverse style guide, which represents something like a grammar for R programming.
There is, also, the styler package'


















