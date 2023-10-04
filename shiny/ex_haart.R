 #Libraries----
library(shiny)
library(shinydashboard)
library(ggplot2)
library(tidyverse)
library(patchwork)
library*

ui <- 
    dashboardPage(
  dashboardHeader(title = 'Exercício Haart'),
  dashboardSidebar(
    sidebarMenu(
      menuItem('Proposta', tabName = 'proposta'),
      menuItem('Exercício 1', tabName = 'ex1'),
      menuItem('Exercício 2', tabName = 'ex2'),
      menuItem('Exercício 3', tabName = 'ex3'),
      menuItem('Exercício 4', tabName = 'ex4'),
      menuItem('Exercício 5', tabName = 'ex5'),
      menuItem('Exercício 6', tabName = 'ex6'),
      menuItem('Exercício 7', tabName = 'ex7'),
      menuItem('Exercício 8', tabName = 'ex8'),
      menuItem('Exercício 9', tabName = 'ex9'),
      menuItem('Exercício 10', tabName = 'ex10'))
    ),
  
  #Dashboard Body ----
  dashboardBody(
    tabItems(
      
      tabItem(tabName = "proposta",
              fluidPage(
                mainPanel(
                  h2("Resposta dos exercícios!"))
                )
              ),
      #Exercício 1----
      tabItem(tabName = 'ex1',
              fluidPage(
                sidebarLayout(
                  sidebarPanel(
                    selectInput('var', label = 'Escolha uma variável', choices = colnames(dados_haart), selectize = FALSE)),
                  mainPanel(
                    h2('Resposta do exercício 1'),
                    br(),
                    h4('Calcule as medidas-resumos adequadas às variáveis e apresente os resultados em uma única tabela.'),
                    verbatimTextOutput('sum')
                  )
                )
              )
      ),
      
      #Exercício 2----            
      tabItem(tabName = 'ex2',
              fluidPage(
                sidebarLayout(
                  sidebarPanel(
                    selectInput('haart_sim_nao', label = 'Com ou sem tratamento?', choices = c('Com', 'Sem'), selectize = FALSE),
                    selectInput('selected_column', label = 'Escolha uma variável', choices = colnames(dados_haart), selectize = FALSE)
                  ),
                  mainPanel(
                    h2('Resposta do exercício 2'),
                    br(),
                    h4('Calcule as medidas-resumos adequadas às variáveis por grupo (haart) e apresente os resultados em uma única tabela.'),
                    verbatimTextOutput('ex2')
                  )
                )
              )
      ),
      #Exercício 3----
      tabItem(tabName = 'ex3',
              fluidPage(
                sidebarLayout(
                  sidebarPanel(
                    selectInput('ex3_class', label = 'Selecione a classificação', choices = c('A', 'B', 'C', 'N', 'Todas'), selectize = FALSE)),
                mainPanel(
                  h2('Resposta do exercício 3'),
                  br(),
                  h4('Construa um gráfico para visualizar a distribuição do uso de HAART segundo classificação clínico-laboratorial da doença no final do seguimento. '),
                  plotOutput('graf3')
                )
                )
              )
      ),
            
      #Exercício 4----
      tabItem(tabName = 'ex4',
              fluidPage(
                sidebarLayout(
                  sidebarPanel(
                    selectInput('ex4_class', label = 'Selecione a classificação', choices = c('Sim', 'Não', 'Ambos'), selectize = FALSE)),
                  mainPanel(
                    h2('Resposta do exercício 4'),
                    br(),
                    h4('Construa um gráfico para visualizar a distribuição do número de internações por uso de HAART.'),
                    plotOutput('graf4')
                  )
                )
              )
      ),
      

             
      #Exercício 5----
      tabItem(tabName = 'ex5',
              fluidPage(
                sidebarLayout(
                  sidebarPanel(
                    selectInput('ex5_class', label = 'Selecione a classificação', choices = c('Sim', 'Não', 'Ambos'), selectize = FALSE)),
                  mainPanel(
                    h2('Resposta do exercício 5'),
                    br(),
                    h4('Construa um gráfico para visualizar a distribuição de linfócito T-CD4+ no início do seguimento nos grupos de crianças que usaram ou não HAART.'),
                    plotOutput('graf5')
                  )
                )
              )
      ),
      
      #Exercício 6----
  
  tabItem(tabName = 'ex6',
          fluidPage(
            sidebarLayout(
              sidebarPanel(
                selectInput('ex6_class', label = 'Selecione a classificação HAART', choices = c('Sim', 'Não', 'Ambos'), selectize = FALSE)),
              mainPanel(
                h2('Resposta do exercício 6'),
                br(),
                h4('Construa um gráfico para visualizar a distribuição de linfócito T-CD4+ no final do seguimento nos grupos de crianças que usaram ou não HAART.'),
                plotOutput('graf6')
              )
            )
          )
  ),
  
      # Exercício 7 ----
  tabItem(tabName = 'ex7',
          fluidPage(
            sidebarLayout(
              sidebarPanel(
                selectInput('ex7_class', label = 'Selecione a classificação seguimento', choices = c('Início', 'Final', 'Ambos'), selectize = FALSE)),
              mainPanel(
                h2('Resposta do exercício 7'),
                br(),
                h4('Construa um gráfico para visualizar a distribuição da carga viral no início e no final do seguimento no grupo de crianças que usaram HAART.'),
                plotOutput('graf7')
              )
            )
          )
  ),
  
      #Exercício 8----
  tabItem(tabName = 'ex8',
          fluidPage(
            sidebarLayout(
              sidebarPanel(
                selectInput('ex8_class', label = 'Selecione a classificação seguimento', choices = c('Início', 'Final', 'Ambos'), selectize = FALSE)),
              mainPanel(
                h2('Resposta do exercício 8'),
                br(),
                h4('Construa um gráfico para visualizar a distribuição da carga viral no início e no final do seguimento no grupo de crianças que não usaram HAART.'),
                plotOutput('graf8')
              )
            )
          )
  ),
      #Exercício 9----
  tabItem(tabName = 'ex9',
          fluidPage(
            sidebarLayout(
              sidebarPanel(
                selectInput('ex9_class', label = 'Selecione a classificação seguimento', choices = c('Início', 'Final', 'Ambos'), selectize = FALSE)),
              mainPanel(
                h2('Resposta do exercício 9'),
                br(),
                h4('Construa um gráfico para visualizar a relação entre os valores de linfócito T-CD4+ e carga viral no início do seguimento no grupo de crianças que usaram HAART.'),
                plotOutput('graf9')
              )
            )
          )
  ),
      #Exercício 10----
  tabItem(tabName = 'ex10',
          fluidPage(
            sidebarLayout(
              sidebarPanel(
                selectInput('ex10_class', label = 'Selecione a classificação seguimento', choices = c('Início', 'Final', 'Ambos'), selectize = FALSE)),
              mainPanel(
                h2('Resposta do exercício 10'),
                br(),
                h4('Construa um gráfico para visualizar a relação entre os valores de linfócito T-CD4+ e carga viral no início do seguimento no grupo de crianças que não usaram HAART.'),
                plotOutput('graf10')
              )
            )
          )
          
  
  )

 
)
)
)
    
    

  

 



#Server----

server <- function(input, output){

#Exercício 1----  
  output$sum <- renderPrint({
    
    selected_variable <- input$var
    if (is.numeric(dados_haart[[selected_variable]])) {
      
      summary_stats <- summary(dados_haart[[selected_variable]])
      summary_stats
      
    } else {
      table_stats <- table(dados_haart[[selected_variable]])
      percent_data <- prop.table(table_stats) * 100
      percent_data <- data.frame( N = table_stats, Percentual = percent_data)
      return(percent_data)
    }
  })
#Exercício 2----
  
  filtered_data <- reactive({
    if(input$haart_sim_nao == 'Com'){
     subset_data <- subset(dados_haart, haart == 'Sim')
    } else {
      subset_data <- subset(dados_haart, haart == 'Não')
    }
    subset_data
  })
  
  summary_stats <- reactive ({
    selected_column <- input$selected_column
    summary_stats <- summary(filtered_data()[[selected_column]])
    summary_stats
  })
  
  output$ex2 <- renderPrint({
    if(!is.null(input$haart_sim_nao) && !is.null(input$selected_column)){
      cat('Medidas resumo para', input$haart_sim_nao, 'tratamento para', input$selected_column, ':\n')
      summary_stats()
    }
  })

#Exercicio 3 ----
  output$graf3 <- renderPlot({
    if (input$ex3_class == 'A'){
      dados_haart %>%
        na.omit()%>%
        filter(cdcult == 'A')%>%
        ggplot(aes(x = cdcult, fill = haart))+
        geom_bar(position = 'fill') +
        labs(title = '',
             x = 'Classificação clinico-laboratorial da doença no final do seguimento',
             y = 'Frequencia relativa') +
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                          labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else if (input$ex3_class == 'B'){
      dados_haart %>%
        na.omit()%>%
        filter(cdcult == 'B')%>%
        ggplot(aes(x = cdcult, fill = haart))+
        geom_bar(position = 'fill') +
        labs(title = '',
             x = 'Classificação clinico-laboratorial da doença no final do seguimento',
             y = 'Frequencia relativa') +
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                          labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else if (input$ex3_class == 'C'){
      dados_haart %>%
        na.omit()%>%
        filter(cdcult == 'C')%>%
        ggplot(aes(x = cdcult, fill = haart))+
        geom_bar(position = 'fill') +
        labs(title = '',
             x = 'Classificação clinico-laboratorial da doença no final do seguimento',
             y = 'Frequencia relativa') +
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                          labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else if (input$ex3_class == 'N'){
      dados_haart %>%
        na.omit()%>%
        filter(cdcult == 'N')%>%
        ggplot(aes(x = cdcult, fill = haart))+
        geom_bar(position = 'fill') +
        labs(title = '',
             x = 'Classificação clinico-laboratorial da doença no final do seguimento',
             y = 'Frequencia relativa') +
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                          labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else{
      dados_haart %>%
        na.omit()%>%
        ggplot(aes(x = cdcult, fill = haart))+
        geom_bar(position = 'fill') +
        labs(title = '',
             x = 'Classificação clinico-laboratorial da doença no final do seguimento',
             y = 'Frequencia relativa') +
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                          labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())
    }
  })

#Exercício 4----
  
  output$graf4 <- renderPlot({
    if (input$ex4_class == 'Sim'){
      dados_haart%>%
        filter(internou == 'Sim')%>%
        ggplot(aes(x = internou, fill = haart))+
        geom_bar(position = 'fill')+
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                          labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else if(input$ex4_class == 'Não'){
      dados_haart%>%
        filter(internou == 'Não')%>%
        ggplot(aes(x = internou, fill = haart))+
        geom_bar(position = 'fill')+
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                          labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else{
    dados_haart%>%
        ggplot(aes(x = internou, fill = haart))+
        geom_bar(position = 'fill')+
        scale_fill_manual(name = 'Haart', values = c('salmon', 'lightblue'),
                        labels = c('Não', 'Sim'))+
        theme_bw()+
        theme(panel.grid = element_blank())

    }
  })
  
  output$graf5 <- renderPlot({
    if(input$ex5_class == 'Sim'){
      dados_haart%>%
        filter(haart == 'Sim')%>%
        ggplot(aes(x = haart, y = cd4in, fill = haart))+
        scale_y_continuous(limits = c(0, 2600))+
        scale_fill_manual(name = 'Haart', values =  ('lightblue'))+
        geom_boxplot(outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else if(input$ex5_class == 'Não'){
      dados_haart%>%
        filter(haart == 'Não')%>%
        ggplot(aes(x = haart, y = cd4in, fill = haart))+
        scale_y_continuous(limits = c(0, 2600))+
        scale_fill_manual(name = 'Haart', values =  ('salmon'))+
        geom_boxplot(outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else {
      dados_haart%>%
        ggplot(aes(x = haart, y = cd4in, fill = haart))+
        scale_y_continuous(limits = c(0, 2600))+
        scale_fill_manual(name = 'Haart', values =  c('salmon', 'lightblue'))+
        geom_boxplot(outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())
    }
  })
  
  output$graf6 <- renderPlot({
    if(input$ex6_class == 'Sim'){
      dados_haart%>%
        filter(haart == 'Sim')%>%
        ggplot(aes(x = haart, y = cd4ult, fill = haart))+
        scale_y_continuous(limits = c(0, 2000))+
        scale_fill_manual(name = 'Haart', values =  c('lightblue'))+
        geom_boxplot(outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())
      
      
    } else if(input$ex6_class == 'Não'){
      dados_haart%>%
        filter(haart == 'Não')%>%
        ggplot(aes(x = haart, y = cd4ult, fill = haart))+
        scale_y_continuous(limits = c(0, 2000))+
        scale_fill_manual(name = 'Haart', values =  c('salmon'))+
        geom_boxplot(outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())
      
      
    } else {
      dados_haart%>%
        ggplot(aes(x = haart, y = cd4ult, fill = haart))+
        scale_y_continuous(limits = c(0, 2000))+
        scale_fill_manual(name = 'Haart', values =  c('salmon', 'lightblue'))+
        geom_boxplot(outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())
    }
  })
  
  output$graf7 <- renderPlot(
    if(input$ex7_class == 'Início') {
      dados_haart %>%
        filter(haart == 'Sim')%>%
        ggplot(aes(y = cvin))+
        geom_boxplot(fill = 'lightblue')+
        theme_bw()+
        theme(panel.grid = element_blank())+
        theme(axis.text.x = element_blank()) 
      
    } else if(input$ex7_class == 'Final') {
      dados_haart %>%
        filter(haart == 'Sim')%>%
        ggplot(aes(y = cvult))+
        geom_boxplot(fill = 'salmon')+
        theme_bw()+
        theme(panel.grid = element_blank())+
        theme(axis.text.x = element_blank())
    } else {
      dados_haart %>%
        gather("cv", "Valor", 19:20)%>%
        filter(haart == "Sim")%>%
        ggplot(aes(x = cv , y = Valor, fill = cv))+
        scale_y_continuous(limits = c(0, 500))+
        geom_boxplot(fill = c('lightblue', 'salmon'))+
        facet_grid(. ~ cv, scales = "free_x")+
        theme_bw()+
        theme(panel.grid = element_blank())
    }
  )
  
  output$graf8 <- renderPlot(
    if(input$ex8_class == 'Início') {
      dados_haart %>%
        filter(haart == 'Não')%>%
        ggplot(aes(y = cvin))+
        geom_boxplot(fill = 'lightblue', outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())+
        theme(axis.text.x = element_blank())
      
    } else if(input$ex8_class == 'Final') {
      dados_haart %>%
        filter(haart == 'Não')%>%
        ggplot(aes(y = cvult))+
        geom_boxplot(fill = 'salmon', outlier.shape = NA)+
        theme_bw()+
        theme(panel.grid = element_blank())+
        theme(axis.text.x = element_blank())
    } else {
      dados_haart %>%
        gather("cv", "Valor", 19:20)%>%
        filter(haart == "Não")%>%
        ggplot(aes(x = cv , y = Valor, fill = cv))+
        scale_y_continuous(limits = c(0, 400))+
        geom_boxplot(fill = c('lightblue', 'salmon'), outlier.shape = NA)+
        facet_grid(. ~ cv, scales = "free_x")+
        theme_bw()+
        theme(panel.grid = element_blank())
    }
  )
  
  output$graf9 <- renderPlot(
    
    if(input$ex9_class == 'Início'){
      dados_haart %>%
        filter(haart == 'Sim')%>%
        ggplot(aes(x = cd4in, y = cvin))+
        geom_point(color = 'blue', alpha = 0.7)+
        labs(title = 'Gráfico de Dispersão',
            x = 'Contagem CD4',
            y = 'Contagem Carga Viral')+
        theme_bw()+
        theme(panel.grid = element_blank())
    
  } else if(input$ex9_class == 'Final'){
    dados_haart %>%
      filter(haart == 'Sim')%>%
      ggplot(aes(x = cd4ult, y = cvult))+
      geom_point(color = 'red', alpha = 0.7)+
      labs(title = 'Gráfico de Dispersão',
           x = 'Contagem CD4',
           y = 'Contagem Carga Viral')+
      theme_bw()+
      theme(panel.grid = element_blank())
  } else {
    inicio <- dados_haart %>%
      filter(haart == 'Sim')%>%
      ggplot(aes(x = cd4in, y = cvin))+
      geom_point(color = 'blue', alpha = 0.7)+
      labs(title = 'Gráfico de Dispersão',
           x = 'Contagem CD4',
           y = 'Contagem Carga Viral')+
      theme_bw()+ 
      theme(panel.grid = element_blank())
    
    final <- dados_haart %>%
      filter(haart == 'Sim')%>%
      ggplot(aes(x = cd4ult, y = cvult))+
      geom_point(color = 'red', alpha = 0.7)+
      labs(title = 'Gráfico de Dispersão',
           x = 'Contagem CD4',
           y = 'Contagem Carga Viral')+
      theme_bw()+
      theme(panel.grid = element_blank())
    
    combinados <- inicio + final
    combinados
  })
  
  output$graf10 <- renderPlot(
    
    if(input$ex10_class == 'Início'){
      dados_haart %>%
        filter(haart == 'Não')%>%
        ggplot(aes(x = cd4in, y = cvin))+
        geom_point(color = 'blue', alpha = 0.7)+
        labs(title = 'Gráfico de Dispersão',
             x = 'Contagem CD4',
             y = 'Contagem Carga Viral')+
        theme_bw()+
        theme(panel.grid = element_blank())
      
    } else if(input$ex10_class == 'Final'){
      dados_haart %>%
        filter(haart == 'Não')%>%
        ggplot(aes(x = cd4ult, y = cvult))+
        geom_point(color = 'red', alpha = 0.7)+
        labs(title = 'Gráfico de Dispersão',
             x = 'Contagem CD4',
             y = 'Contagem Carga Viral')+
        theme_bw()+
        theme(panel.grid = element_blank())
    } else {
      inicio <- dados_haart %>%
        filter(haart == 'Não')%>%
        ggplot(aes(x = cd4in, y = cvin))+
        geom_point(color = 'blue', alpha = 0.7)+
        labs(title = 'Gráfico de Dispersão',
             x = 'Contagem CD4',
             y = 'Contagem Carga Viral')+
        theme_bw()+ 
        theme(panel.grid = element_blank())
      
      final <- dados_haart %>%
        filter(haart == 'Não')%>%
        ggplot(aes(x = cd4ult, y = cvult))+
        geom_point(color = 'red', alpha = 0.7)+
        labs(title = 'Gráfico de Dispersão',
             x = 'Contagem CD4',
             y = 'Contagem Carga Viral')+
        theme_bw()+
        theme(panel.grid = element_blank())
      
      combinados <- inicio + final
      combinados
    })
}


shinyApp(ui = ui, server = server)
