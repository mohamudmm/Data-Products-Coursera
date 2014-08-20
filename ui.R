library(shiny)
shinyUI(fluidPage(
        #application title
        titlePanel(h1("U.S Hospital Ranking",align = "center")),
        #
        sidebarLayout(
                
        sidebarPanel(selectInput("select", label = h3("Choose health condition"), 
                    choices = list("Heart Attack" = "heart attack", "Heart Failure" = "heart failure", "Pneumonia" = "pneumonia"), 
                   selected = 1),
        
        hr(),
        fluidRow(column(3, verbatimTextOutput("value")))
        ),
        mainPanel(h2("Hospital Ranking Table"),
                  tableOutput("view"))
)
)
)