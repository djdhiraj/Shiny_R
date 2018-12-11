#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
  titlePanel("this is the"),
  sidebarLayout(
    sidebarPanel(
      selectInput("demo","choose the maine",choices = c("iris","mtcars","pressure")),
      numericInput("obs","Number of obs",6),
      submitButton("Update")
     ),
  
  mainPanel(
    h2("Select the main"),
    verbatimTextOutput("strs"),
  textOutput("test1"),
  tableOutput("view")
  )
  
  )
 
  ))



  

