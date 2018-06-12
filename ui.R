library(shinythemes)
library(datasets)
library(rsconnect)
InputData<-read.csv("D:/Analysis.csv")
# Use a fluid Bootstrap layout
fluidPage(    
  theme = shinytheme("slate"),
  
  # Give the page a title
  titlePanel("ONLINE SHOPPING ANALYSIS"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("category", "Select Category", 
                  choices=colnames(InputData)),
      
      
      hr(),
      helpText("Data")
      
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("storePlot")  
    )
    
  )
)
