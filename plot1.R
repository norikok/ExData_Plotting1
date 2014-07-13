# Exploratory Data Analysis
# Course Project 1

# Generate Plot 1

# (1) Download and unzip data if text file does not exist
setwd("/Users/jim/Desktop/coursera/ExData_Plotting1/")
txtName <- "data/household_power_consumption.txt"
if(!file.exists(txtName)) {
    source("download_data.R")
}

# (2) Load file
fullData <- read.table(txtName, header = TRUE, sep = ";", na.strings = "?")

# (3) Select data for relevant days
twoDays <- fullData[fullData$Date == "1/2/2007" | fullData$Date == "2/2/2007", ]

# (4) Plot histogram
png(file = "plot1.png")
hist(twoDays$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()
