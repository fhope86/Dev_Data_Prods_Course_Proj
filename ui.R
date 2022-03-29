# library(shiny)

# Define UI for application that draws a histogram and displays the mean and standard deviation
# for the user selected MTCARS variable (column)
shinyUI(pageWithSidebar(
  headerPanel("Explore MTCARS dataset"),
  sidebarPanel(
    selectInput("measure", "Select Measure (Column):",choices=colnames(mtcars)),
  ),
  mainPanel(
    plotOutput('newHist'),
    verbatimTextOutput("text1"),
    verbatimTextOutput("text2")
  )
))