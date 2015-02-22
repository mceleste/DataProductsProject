library(lubridate)
library(googleVis)

# read data file
storm <- read.csv(bzfile("repdata_data_StormData.csv.bz2","r"))

## Modify storm dataframe
storm$year <- year( mdy_hms(storm$BGN_DATE) )

tornado = storm[storm$EVTYPE == "tornado", ]
