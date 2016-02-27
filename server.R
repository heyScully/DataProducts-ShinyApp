# load packages
library(ggplot2)
library(datasets)
library(shiny)

data("Orange", package="datasets")


shinyServer(
  function(input,output){
    output$treeID <- renderText(input$treeID)
    output$plot <- renderPlot(
      ggplot(Orange[Orange$Tree==input$treeID,], 
        aes(Orange[Orange$Tree==input$treeID,]$circumference, 
            Orange[Orange$Tree==input$treeID,]$age))
      +geom_point()
      +geom_smooth()
      +ylab("Trunk Circumference (mm)")
      +xlab("Age (days)")
    )
    
  }
)