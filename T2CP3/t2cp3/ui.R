#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Análise de dados I - T2CP3"),
  
    
    # Show a plot of the generated distribution
    mainPanel(
      h2("Sobre os dados", align = "center"),
      p("Os dados que são a base da análise descrevem os gastos realizados pelos deputados brasileiros no ano de 2016. 
        Estes dados são abertos e disponibilizados pela própria câmara legislativa e podem ser encontrados neste link: 
        http://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/dados-abertos-cota-parlamentar", align = "justify"),
      p("Para conhecer o que está descrito no conjunto de dados, basta acessar este outro link:
        http://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/dados-abertos-cota-parlamentar", align = "justify"),
      br(),
      
      h2("Análise", align = "center"),
      p("O gráfico a seguir faz uma relação dos gastos de cada estado brasileiro pela sua quantidade de representantes. O mesmo possui duas variáveis quantitativas e duas categóricas, sendo elas respectivamente: a quantidade de deputados(mensurada pelo eixo x), a soma dos gastos(mensurada pelo eixo y), o estado em questão(marcado pelos pontos no gráfico) e as regiões do Brasil(mostrado usando cores e descritas na legenda à direita do gráfico). 
        Com este gráfico temos como objetivo principal notar como é a função de crescimento dos gastos conforme o aumento da quantidade de deputados e, em segundo plano, queremos observar também se alguma região possui estados com forte semelhança nos índices de gasto e quantidade de deputados.", align = "justify"),
      p("Então, como essa relação acontece na sua região? Qual desses pontos é seu estado? Os estados da sua região possuem valores de gasto e/ou quantidade de deputados parecidos?"),
      p("Fique à vontade para ampliar e analisar melhor qualquer parte do gráfico!"),
      br(),
      
      plotlyOutput("trendPlot"),
      br(),
      
      p("Com a visualização podemos notar um crescimento contínuo dos gastos conforme aumenta a quantidade de deputados, seguindo uma linha em comum de crescimento. Portanto, os estados que mais possuem deputados são os que mais gastam. Além disso vemos uma forte concentração perto do ponto (0, 0), o que nos faz concluir que muitos estados possuem um número parecido de representantes. E, por fim, notamos uma concentração dos pontos azuis e pretos, indicando que os estados das regiões Norte e Centro-Oeste possuem valores aproximados de quantidade de deputados e de gasto total.", align = "justify"),
      br(),
      
      h2("Interatividade do gráfico", align = "center"),
      p("Como visto em sala de aula, podemos utilizar vários recursos para facilitar a visualização. Neste gráfico os recursos de interatividade utilizados foram: zoom, brush, hover e filtragem pelas regiões clicando nos nomes mostrados na legenda.", align = "justify")
    )
  )
)
