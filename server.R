
library(shiny)
library(leaflet)
library(magrittr)
source('global.R', local=TRUE)

shinyServer(function(input, output) {
   
#  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    # x    <- rats$date 
    # bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    # hist(x, breaks = bins, col = 'darkgray', border = 'white')
#  })   
  
#   year_rats <- subset(rats, year == '2017')
    
   year  <- eventReactive(input$year, {
         subset(rats, year == input$year)
    })

    output$ratmap <- renderLeaflet({        
        year() %>%
  #      year_rats %>% 
        leaflet() %>%
        addTiles() %>%
        addMarkers(popup = year()$INSPECTION_DATE) %>%
        setView(lng = -73.89, lat = 40.73, zoom = 10)

    
  })
  
})
