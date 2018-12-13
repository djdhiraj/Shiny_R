library(shiny)
shinyServer(
  function(input,output){
    value<-reactiveValues(w1=0,w2=0,w3=0,w4=0,w5=0)
    observeEvent(input$Button1,{
      value$w1<-1
      value$w2<-0
      value$w3<-0
      value$w4<-0
      value$w5<-0
      
    })
    observeEvent(input$Button2,{
      value$w1<-0
      value$w2<-1
      value$w3<-0
      value$w4<-0
      value$w5<-0
      
    })
    observeEvent(input$Button3,{
      value$w1<-0
      value$w2<-0
      value$w3<-1
      value$w4<-0
      value$w5<-0
      
    })
    observeEvent(input$Button4,{
      value$w1<-0
      value$w2<-0
      value$w3<-0
      value$w4<-1
      value$w5<-0
      
    })
    observeEvent(input$Button5,{
      value$w1<-0
      value$w2<-0
      value$w3<-0
      value$w4<-0
      value$w5<-1
      
    })
    output$text<-renderText({
      if(value$w1)
      {
        paste("Buttion 1 press")
      }
      else
      if(value$w2){
        paste("Button 2 press")
      }
      else
      if(value$w3){
        paste("Button 3 press")
      }
      else
        if(value$w4){
          paste("Button 4 press")
        }
      else
        if(value$w5){
          paste("Button 5 press")
        }
      
    })
    
  }
)
