#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

server <- function(input, output) { 
  
   #Create the plots based on user's selection 
  output$graph2 <- renderPlot({
   if(input$spec == "Se")
   { 
       if (input$text == "PP")
         {
           plot(iris[1:50,4], iris[1:50,3], "p", pch=16, main=substitute(paste(bolditalic('Iris Data: Petal Width vs Petal Length'))), 
             xlab=substitute(paste(bold('Petal Width'))),ylab= substitute(paste(bold('Petal Length'))), col="skyblue")
           output$text1=renderText({
            paste("Correlation Value: ", cor(iris[1:50,4], iris[1:50,3]))
           })
        }
       if (input$text == "SS") 
         { 
           plot(iris[1:50,2], iris[1:50,1], "p",pch=16, main=substitute(paste(bolditalic('Iris Data: Sepal Width vs Sepal Length'))),
             xlab=substitute(paste(bold('Sepal Width'))),ylab= substitute(paste(bold('Sepal Length'))), col="orange")
          output$text1=renderText({
           paste("Correlation Value: ", cor(iris[1:50,2], iris[1:50,1]))
         })
         }
       if (input$text == "SPW") 
         { 
           plot(iris[1:50,2], iris[1:50,4], "p", pch=16,main=substitute(paste(bolditalic('Iris Data: Sepal Width vs Petal Width'))),
             xlab=substitute(paste(bold('Sepal Width'))),ylab= substitute(paste(bold('Petal Width'))), col="green")
           output$text1=renderText({
           paste("Correlation Value: ", cor(iris[1:50,2], iris[1:50,4]))
         })
         }
       if (input$text == "SPL") 
        { 
          plot(iris[1:50,1], iris[1:50,3], "p", pch=16,main=substitute(paste(bolditalic('Iris Data: Sepal Length vs Petal Length'))),
            xlab=substitute(paste(bold('Sepal Length'))),ylab= substitute(paste(bold('Petal Length'))), col="blue")
          output$text1=renderText({
           paste("Correlation Value: ", cor(iris[1:50,1], iris[1:50,3]))
         })
         }
    }
    if(input$spec == "Ve")
    { 
      if (input$text == "PP")
      {
        plot(iris[51:100,4], iris[51:100,3], "p", pch=16,main=substitute(paste(bolditalic('Iris Data: Petal Width vs Petal Length'))), 
             xlab=substitute(paste(bold('Petal Width'))),ylab= substitute(paste(bold('Petal Length'))), col="skyblue")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[51:100,4], iris[51:100,3]))
        })
        }
      if (input$text == "SS") 
      { 
        plot(iris[51:100,2], iris[51:100,1], "p", pch=16,main=substitute(paste(bolditalic('Iris Data: Sepal Width vs Sepal Length'))),
             xlab=substitute(paste(bold('Sepal Width'))),ylab= substitute(paste(bold('Sepal Length'))), col="orange")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[51:100,2], iris[51:100,1]))
        })
         }
      if (input$text == "SPW") 
      { 
        plot(iris[51:100,2], iris[51:100,4], "p", pch=16, main=substitute(paste(bolditalic('Iris Data: Sepal Width vs Petal Width'))),
             xlab=substitute(paste(bold('Sepal Width'))),ylab= substitute(paste(bold('Petal Width'))), col="green")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[51:100,2], iris[51:100,4]))
        })  
      }
      if (input$text == "SPL") 
      { 
        plot(iris[51:100,1], iris[51:100,3], "p", pch=16, main=substitute(paste(bolditalic('Iris Data: Sepal Length vs Petal Length'))),
             xlab=substitute(paste(bold('Sepal Length'))),ylab= substitute(paste(bold('Petal Length'))), col="blue")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[51:100,1], iris[51:100,3]))
        })
        }
    }
    if(input$spec == "Vi")
    { 
      if (input$text == "PP")
      {
        plot(iris[101:150,4], iris[101:150,3], "p", pch=16, main=substitute(paste(bolditalic('Iris Data: Petal Width vs Petal Length'))), 
             xlab=substitute(paste(bold('Petal Width'))),ylab= substitute(paste(bold('Petal Length'))), col="skyblue")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[101:150,4], iris[101:150,3]))
        })
        }
      if (input$text == "SS") 
      { 
        plot(iris[101:150,2], iris[101:150,1], "p",pch=16,  main=substitute(paste(bolditalic('Iris Data: Sepal Width vs Sepal Length'))),
             xlab=substitute(paste(bold('Sepal Width'))),ylab= substitute(paste(bold('Sepal Length'))), col="orange")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[101:150,2], iris[101:150,1]))
        })
      }
      if (input$text == "SPW") 
      { 
        plot(iris[101:150,2], iris[101:150,4], "p",pch=16,  main=substitute(paste(bolditalic('Iris Data: Sepal Width vs Petal Width'))),
             xlab=substitute(paste(bold('Sepal Width'))),ylab= substitute(paste(bold('Petal Width'))), col="green")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[101:150,2], iris[101:150,4]))
        })
       }
      if (input$text == "SPL") 
      { 
        plot(iris[101:150,1], iris[101:150,3], "p", pch=16, main=substitute(paste(bolditalic('Iris Data: Sepal Length vs Petal Length'))),
             xlab=substitute(paste(bold('Sepal Length'))),ylab= substitute(paste(bold('Petal Length'))), col="blue")
        output$text1=renderText({
          paste("Correlation Value: ", cor(iris[101:150,1], iris[101:150,3]))
        })
      }
    }
    
  }, 
  
  #define plot size (equal for all plots so it is inserted at the final of "if" sequences)
  height = 500, width = 700)
  
}



