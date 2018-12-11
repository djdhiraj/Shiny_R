#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
  titlePanel("this is the map"),
  sidebarLayout(
  sidebarPanel(
   selectInput("var1",label = "Select first variable data set",choices = c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.Length"=3,"Petal.Width"=4)),
    selectInput("var2",label = "Select second variable data set",choices = c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.Length"=3,"Petal.Width"=4)),
   radioButtons("var3",label = "select format",choices = c("png","pdf"))
  ),
  mainPanel(
    plotOutput("Plot"),
    downloadButton("down",label = "download the plot")
    
  )
)
)
)


  

