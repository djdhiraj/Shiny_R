#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
    titlePanel(title=h4("Demostration of the selectInput UI widget in shiny")),
    sidebarLayout(
      sidebarPanel(
        selectInput("var1","Iris Data Set",choices = c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.length"=3,"Petal"=4)),
        sliderInput("var2","Select Histogram",min=5,max=10,value=15),
        radioButtons("var3","select histogram color",choices =c("Green","Red"))

      ),
      mainPanel(
       plotOutput("myhist")
      )
    )
  )
)

