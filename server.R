#library(shiny)
#library(UsingR)

# Define server logic required to draw a histogram for each of the MTCARS variables (columns), and
# and display mean and standard deviation, when selected.
data(mtcars)
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      hist(mtcars[,input$measure], xlab=input$measure, col='red',main="Histogram")
    })
    
    output$text1 <- renderText({
      paste("Mean:",mean(mtcars[,input$measure]))
    })
    output$text2 <- renderText({
      paste("Standard Deviation:",sd(mtcars[,input$measure]))
    })
    
  }
)