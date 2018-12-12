library(shiny)
shinyServer(
  function(input,output){
    output$filedf<-renderTable({
      if(is.null(input$file)){return()}
      input$file
    })
    observeEvent(input$unzip,output$zipped<-renderTable({
      unzip(input$file$datapath)
    }))
 } )
