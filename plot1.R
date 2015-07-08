require("dplyr")
require("lubridate")

df <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE, 
               na.strings = "?", stringsAsFactors = FALSE)
names(df) <- tolower(names(df))
df$dt <- as.Date(df$date, "%d/%m/%Y")
df$dateTime <- dmy_hms(paste(df$date, df$time))
dfplt <- filter(df, df$dt == "2007-02-01" | df$dt == "2007-02-02")
rm(df)

#plot1 - hist
hist(dfplt$global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     xlim = c(0, 6), ylim = c(0, 1200))
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()

source("plot2.R")
source("plot3.R")
source("plot4.R")



