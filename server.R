library(UsingR)
data("mtcars")
shinyServer(
  funtion(input,output){
    output$newHist<-renderPlot(
      {
        hist(mtcars$hp,xlab = 'cild height',main = 'hist')
      }
    )
  }
)