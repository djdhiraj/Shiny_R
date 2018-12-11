library(shiny)
shinyServer(
  function(input,output){
    output$myhist<-renderPlot({
      colm<-as.numeric(input$var1)
      hist(iris[,colm],
           breaks=seq(0,max(iris[,colm]),l=input$var2+1),
           col=input$var3,main="Iris data set",xlab="input",ylab = "main data")
     } )
  }
)

