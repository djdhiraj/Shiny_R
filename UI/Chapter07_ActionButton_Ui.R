#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
  titlePanel("this is the"),
  sidebarLayout(
    sidebarPanel(
     textInput("var1","Enter the first name"),
      textInput("var2","Enter the last name"),
      actionButton("var3","update name")
  ),
  mainPanel(
    textOutput("text1"),
    textOutput("text2")
    
    
    
  
  )
 
  ))
)



  

