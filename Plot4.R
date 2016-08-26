# Set Working Directory
setwd("C:/Gopal/Coursera/ExploratoryDataAnalysis/Week1")

# Load the Data
data <- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

# Subset the Data
subsetData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Add a column of TimeStamp
subsetData$Timestamp <- strptime(paste(subsetData$Date, subsetData$Time), "%d/%m/%Y %H:%M:%S")

# PNG Graphics Device
png("ExData_Plotting1/Plot4.png", width = 480, height = 480)

# Create a Matrix of 2x2
par(mfrow=c(2,2))

# Plot First Graph (Same as Plot 2)
plot(subsetData$Timestamp, subsetData$Global_active_power, ylab="Global Active Power", xlab="", type="l")

# Plot Second Graph (datetime vs voltage)
plot(subsetData$Timestamp, subsetData$Voltage, xlab="datetime", ylab="Voltage", type="l")

# Plot Third Graph (Same as Plot 3)
plot(subsetData$Timestamp, subsetData$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(subsetData$Timestamp, subsetData$Sub_metering_2, col="red")
lines(subsetData$Timestamp, subsetData$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

# Plot the Fourth Graph
plot(subsetData$Timestamp, subsetData$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

dev.off()