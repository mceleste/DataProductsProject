Tornado Monitor Application
========================================================
author: 
date: 02/21/2015

Introduction
========================================================

This application uses data from the National Weather Service listing tornado data since 1950 to 2011. The purpose of the application is to show the impact to population health from over 60 years of data in an easy and intuitive way.

The following data points can be displayed graphically on a map of the United States. 

- Location of where the tornado hit by year 
- Width of the tornado when it touches ground in feet
- The number of injuries caused by the tornado
- The number of fatalitied caused by the tornado

Application Layout
========================================================

The application displays circles on a map of the United States to show where tornadoes have occurred for a particular year. On the right side of the screen you will see a panel labeled "Control Panel". Towards the bottom of the screen there is another panel labeled "Summary". 

![Home page](home.png)

Using the Application - Control Panel
========================================================

### Year Viewed
When the application first opens it defaults to the year 1980. You can change the year by moving the slider on the control planel to the left or right. Also, there is the option to step through all the years by clicking on the "play" button.

### Size Variable
The size of the circles drawn on the map may represent either the Width, Injuries, or Fatalities of a tornado. 

### Color Variable
The color of the circles drawn on the map may represent either the Width, Injuries, or Fatalities of a tornado. Note that the legend below the map will display the maximum value for the variable representing the color. 


Using the Application - Summary / Map
========================================================

### Summary
The summary panel will display total numbers for the particular year selected. It displays the current year, total number of tornadoes that occured that year, the total number of injuries and fatalities.

### Map
Hovering over a circle of the map will display the data for that particular circle. If there are more than one occupying the same space a type of magnifier where the circles will be displayed in that space.

Tornado Impact in the United States
========================================================



Tornadoes have caused on average of 93 fatalities per year and an average of 1498 injuries per year. Below is a plot of how many tornadoes occur in the United States per year.   

![plot of chunk unnamed-chunk-2](TornadoMonitor-figure/unnamed-chunk-2-1.png) 

