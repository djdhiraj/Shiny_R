library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Example"),
  sidebarPanel(
    sliderInput('mu','Guess at the mean',value = 70,min = 62,max=80,step = 0.5)
    ),
  mainPanel(
    plotOutput('newHist')
  )
))