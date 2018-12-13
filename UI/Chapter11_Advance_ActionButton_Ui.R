library(shiny)
shinyUI(fluidPage(
  titlePanel("Action Button exmaple"),
  sidebarLayout(
    sidebarPanel("this is a game"),
    mainPanel(
  actionButton("Button1","Class 1"),
  actionButton("Button2","Class 2"),
  actionButton("Button3","Class 3"),
  actionButton("Button4","Class 4"),
  actionButton("Button5","Class 5"),
  textOutput("text")
  ))
))
