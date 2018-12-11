library(shiny)
shinyServer(
  function(input,output){
    output$test1<-renderText(input$demo)
    output$view<-renderText({
      paste("first",input$obs,"obs is the",input$demo)
    })
   output$strs<-renderPrint({
     str(get(input$demo))
   })
    output$view<-renderTable({
      head(get(input$demo),n=input$obs)
    })
  
    
  #  output$view<-renderTable(
  #    colm<-as.numeric(input$obs),
  #    head(iris,colm)
  #  )
    
       }
)
