#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
  titlePanel("this is the"),
  sidebarLayout(
    sidebarPanel(
      selectInput("var1","Select the Data",choices = c("iris","mtcars")),
      uiOutput("Vr"),
     uiOutput("Vr1")
  
  ),
  mainPanel(
    
    plotOutput("p")
  )
 
  ))
)



  

