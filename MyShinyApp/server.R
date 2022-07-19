library(shiny)
library(datasets)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$phonePlot <- renderPlot({

        # Render a barplot
        barplot(WorldPhones[,input$region]*1000, 
                main=input$region,
                ylab="Number of Telephones",
                xlab="Year", col = "#56B4E9", border = "#E69F00")
    })
})
