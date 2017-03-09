#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Active Rats Sighted During Inspection in New York"),
  
  # Sidebar with a slider input for year
  sidebarLayout(
    sidebarPanel(
       sliderInput("year",
                   "Select year for inspection:",
                   min = 2010,
                   max = 2017,
                   value = 2017,
                   sep="")
#       p(),
#       actionButton("reload", "Refresh")
    ),

    
    # Show a plot of the generated distribution
    mainPanel(
       p("Use the slider on the left to browse years and see locations of inspections that reported rat signtings."),
       p(),
       leafletOutput("ratmap")
    )
  )
))
