# Exploratory Data Analysis
# Course Project 1

# Generate Plot 3

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

# (4) Generate line plots
dateTime <- strptime(paste(twoDays$Date, twoDays$Time), "%d/%m/%Y %H:%M:%S")
png(file = "plot3.png")
plot(dateTime, twoDays$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(dateTime, twoDays$Sub_metering_2, col = "red")
lines(dateTime, twoDays$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
