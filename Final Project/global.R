# get data

if(exists("rats")){
            loaded <- TRUE
    } else {

            rats <- read.csv("https://data.cityofnewyork.us/api/views/amyk-xiv9/rows.csv?accessType=DOWNLOAD", header = TRUE) 
            rats$date <- as.Date(rats$INSPECTION_DATE, format = "%m/%d/%Y")
            rats$year <- as.numeric(format(rats$date, format = "%Y"))}
