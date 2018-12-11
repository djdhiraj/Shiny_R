#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
    titlePanel("Demostration of the selectInput UI widget in shiny"),
    sidebarLayout(
      sidebarPanel(
        selectInput("statenames","select the state",c("california","America"))
      ),
      mainPanel(
        textOutput("state")
      )
    )
  )
)
  
