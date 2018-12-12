library(shiny)
shinyUI(fluidPage(
  fileInput("file","choose the file",accept = ".Zip"),
  actionButton("unzip","unzip files"),
  tableOutput("filedf"),
  tableOutput("zipped")
))
