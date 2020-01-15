library(shiny)
library(arules)
library(DBI)


shinyServer(function(input, output){
  
  output$mba <-renderPrint({
    rules <- apriori (alpa_phiminimart, parameter = list(support = as.numeric(input$sup), confidence = as.numeric(input$conf) ))
    inspect(rules)  
  })
  
})