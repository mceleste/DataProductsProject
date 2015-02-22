library(shiny)

shinyServer(function(input, output, session) {
  
  TheYear <- reactive({
    input$Year
  })
  
  SizeVar <- reactive({
    input$sizevar
  })
  
  ColorVar <- reactive({
    input$colorvar
  })

  output$DisplayYear <- renderText({
    paste("Year", TheYear(), sep=": ")
    
  })
  
  output$NumberTornado <- renderText({
    paste("Number of tornadoes", nrow(storm_data[storm_data$year == TheYear() & storm_data$EVTYPE == "TORNADO", ]), sep=": ")
  })
  
  output$NumberInjuries <- renderText({
    paste("Total Injuries", sum(storm_data$INJURIES[storm_data$year == TheYear() & storm_data$EVTYPE == "TORNADO"]), sep=": ")
  })
  
  output$NumberFatalities <- renderText({
    paste("Total Fatalities", sum(storm_data$FATALITIES[storm_data$year == TheYear() & storm_data$EVTYPE == "TORNADO"]), sep=": ")
  })
  
  ### Render Map
  output$storm_map <- renderGvis({
    
    ## Convert and create longitude and latitude values
    storm_data$LatLong <- paste( storm_data$LATITUDE / 100, -1*storm_data$LONGITUDE / 100, sep=":")
    
    map_storm_data <- storm_data[ storm_data$year == TheYear() , ]
    
    map_storm_data <- map_storm_data[ map_storm_data$EVTYPE == "TORNADO",  ]
    
    gvisGeoChart( map_storm_data, 
                  "LatLong", sizevar=SizeVar(), colorvar=ColorVar(), options=list(region="US") )  
    
  })
  
})