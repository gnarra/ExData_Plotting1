# Set Working Directory
setwd("C:/Gopal/Coursera/ExploratoryDataAnalysis/Week1")

# Load the Data
data <- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

# Subset the Data
subsetData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Add a column of TimeStamp
subsetData$Timestamp <- strptime(paste(subsetData$Date, subsetData$Time), "%d/%m/%Y %H:%M:%S")

# PNG Graphics Device
png("ExData_Plotting1/Plot2.png", width = 480, height = 480)

plot(subsetData$Timestamp, subsetData$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")

# Close the Graphics Device
dev.off()
