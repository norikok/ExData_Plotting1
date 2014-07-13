# Exploratory Data Analysis
# Course Project 1

# Download and unzip data file

setwd("/Users/jim/Desktop/coursera/ExData_Plotting1/")
zipName <- "data/exdata-data-household_power_consumption.zip"
txtName <- "data/household_power_consumption.txt"

# check if text (unzipped) file exists
if(!file.exists(txtName)) {

    # check if zip file exists
    if(!file.exists(zipName)) {

        # create directory if it does not exist
        if(!file.exists("data")) {
            dir.create("data") 
        }

        # download zip file
        fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileUrl, destfile = zipName, method = "curl")
    }

    # unzip to get text file
    unzip(zipName, exdir = "data")
}
