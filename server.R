library(datasets)
library(ggplot2)
library(rsconnect)
InputData<-read.csv("D:/Analysis.csv")

# Define a server deployApp()for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$storePlot <- renderPlot({
    
    
    # Render a barplot
    ggplot(InputData, aes_string(x=input$category)) +
      geom_bar(width=0.5,colour="red")+theme(axis.title.x = element_text(angle=70,vjust=0.5,color="red"))+theme_bw()
    
  })
}

