library(shiny)
shinyServer(
  function(input,output){
    var<-reactive({
      switch(input$var1,
             "iris"=names(iris),
             "mtcars"=names(mtcars)
            )
    })
    output$Vr<-renderUI({
      selectInput("variable","Choose the feature from iris data",choices = var())
    })
    output$Vr1<-renderUI({
      selectInput("variable1","Choose the feature from iris data",choices = var())
    })
    
    output$p<-renderPlot({
      attach(get(input$var1))
      plot(x=get(input$variable1),y=get(input$variable))
    })
    
  #  output$view<-renderTable(
  #    colm<-as.numeric(input$obs),
  #    head(iris,colm)
  #  )
    
       }
)
