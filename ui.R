library(shiny)
library(shinythemes)

shinyUI(
  
  navbarPage(NULL, id="nav", theme = shinytheme("spacelab"),
             
             tabPanel("Tornado Population Impact",                      
                      htmlOutput("storm_map")
                      ),
             div(class="outer",
                 
                 tags$head(
                
                   includeCSS("styles.css")
                   
                 ),
                
          fixedPanel(id ="year_display", cursor=NULL, height = 180, width = 250, top = 425,                     
                     h3( "Summary" ) ,
                     h4( textOutput("DisplayYear") ) ,
                     h4( textOutput("NumberTornado") ),
                     h4( textOutput("NumberInjuries") ),
                     h4( textOutput("NumberFatalities") )  ),
             
             absolutePanel(id = "controls", fixed = TRUE, draggable = FALSE,
                           top = 60, left = "auto", right = 50, bottom = "auto",
                           width = 330, height = "auto",
                           
                           h2("Control Panel"),
                           
                           sliderInput("Year", "Year Viewed", 
                                       min=1950, max=2011, value=1980, step=1,
                                       sep="", animate=TRUE),
                         
                           selectInput( "sizevar", label = h3("Select size variable"), 
                                        choices = list( "Width (feet)" = "WIDTH",
                                                        "Fatalities" = "FATALITIES",
                                                        "Injuries" = "INJURIES" ), 
                                                      selected="WIDTH" ) ,
                          
                           selectInput( "colorvar", label = h3("Select color variable"),
                                        choices = list( "Width (feet)" = "WIDTH",
                                                        "Fatalities" = "FATALITIES",
                                                        "Injuries" = "INJURIES" ), 
                                                      selected="FATALITIES" )
             )
             
          )             
))