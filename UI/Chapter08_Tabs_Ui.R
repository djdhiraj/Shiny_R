#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
  titlePanel("this is the"),
  sidebarLayout(
    sidebarPanel(
      numericInput("n","Enter the number",1)
 
  ),
  mainPanel(
 
    uiOutput('tabs')
    
    
    
  
  )
 
  ))
)



  

