library(shiny)
shinyUI(fluidPage(
  titlePanel("File Input"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file","Upload the file"), # fileinput() function is used to get the file upload contorl option
      helpText("Default max. file size is 5MB"),
      tags$hr(),
      h5(helpText("Select the read.table parameters below")),
      checkboxInput(inputId = 'header', label = 'Header', value = FALSE),
      checkboxInput(inputId = "stringAsFactors", "stringAsFactors", FALSE),
      br(),
      radioButtons(inputId = 'sep', label = 'Separator', choices = c(Comma=',',Semicolon=';',Tab='\t', Space=''), selected = ',')
    ),
    mainPanel(
      uiOutput("tb")
      
     
    )
    
  )
))
