#
# This is the user-interface definition of a Shiny web application. 
# This shiny application allows to compute plots that comparing data from iris data set.
# The user needs to select the analysis that he wants and the plot is shown automatically.
#


library(shiny)

# Define UI for application that draws a plot based on user's selection

shinyUI(navbarPage("Iris Data - A Basic Analysis",
        
         tabPanel("Analysis",            
  
  #Define the radiobuttons with the different options
  radioButtons(inputId = "spec", "Please select iris species:", c("Setosa" = "Se","Virginica" = "Vi","Versicolor" = "Ve")),
  
  radioButtons(inputId = "text", "Please select your analysis:", c("Petal Width vs Petal Length" = "PP", 
               "Sepal Width vs Sepal Length" = "SS","Sepal Width vs Petal Width" = "SPW", "Sepal Length vs Petal Length" = "SPL" )),
  
  #Define the output to use in Server.R
  mainPanel(
    span(textOutput("text1"),  style="color:red; font-weight: bold;"),
  plotOutput(outputId = "graph2"))
 ),
 
 tabPanel("Documentation",
          mainPanel(
            includeMarkdown("About.md")
          )
 )
)
)


