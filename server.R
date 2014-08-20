library(shiny)
source("rank_all.R")

dataset1 <- rank_all("heart attack")
dataset2 <- rank_all("heart failure")
dataset3 <- rank_all("pneumonia")

shinyServer(function(input,output){
        #Input button for selection
       
       datasetInput <- reactive({
               switch(input$select,
                      "heart attack" = dataset1,
                      "heart failure" = dataset2,
                      "pneumonia" = dataset3
                       )
       })
       
        
        
        
        #select dataset  based on selections
        output$view <- renderTable({ 
                datasetInput()})
})
