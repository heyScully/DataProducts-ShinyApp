# load packages
library(ggplot2)
library(datasets)
library(shiny)

data("Orange", package="datasets")
treeOptions <- c("Tree #1" = "1",
                 "Tree #2" = "2",
                 "Tree #3" = "3",
                 "Tree #4" = "4",
                 "Tree #5" = "5")

shinyUI(
  
  pageWithSidebar(
    
    headerPanel(
      "Data Products - Shiny Oranges App!"
         
                
    ),
    
    sidebarPanel(

      radioButtons(
        'treeID', "Select Tree", treeOptions),
      
      strong("Documentation"),
      p("This is a super-simple Shiny app that allows you 
        to  display a plot of age (in days) against trunk 
        circumference (in mm) for orange trees."),
      p("Simply select one of the five trees measured above, and the plot
        will update with the data for that tree."),
      p("The data used for this project is the 'Orange' data set in the 'datasets' package.")

      
    ),
    mainPanel(
      plotOutput("plot")
    )
    
  )
 
  
)
