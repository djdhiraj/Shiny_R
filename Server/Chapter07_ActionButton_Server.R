library(shiny)
shinyServer(
  function(input,output){
   
    output$text1<-renderText({
      input$var3
      isolate(paste("First name:",input$var1))
    })
    output$text2<-renderText({
      input$var3
      isolate(paste("Last name",input$var2))
    })
   
   }
)
 
