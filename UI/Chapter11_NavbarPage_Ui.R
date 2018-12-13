library(shiny)
shinyUI(
  navbarPage("text",
             navbarMenu("text3",tabPanel("books"),tabPanel("video")),
             tabPanel("taxt1"),tabPanel("text2"))
)
