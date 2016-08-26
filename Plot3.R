# Set Working Directory
setwd("C:/Gopal/Coursera/ExploratoryDataAnalysis/Week1")

# Load the Data
data <- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

# Subset the Data
subsetData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Add a column of TimeStamp
subsetData$Timestamp <- strptime(paste(subsetData$Date, subsetData$Time), "%d/%m/%Y %H:%M:%S")

# PNG Graphics Device
png("ExData_Plotting1/Plot3.png", width = 480, height = 480)

# Plot the First Main Plot
plot(subsetData$Timestamp, subsetData$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")

# Annotate the Lines
lines(subsetData$Timestamp, subsetData$Sub_metering_2, col="red")

# Annotate the Lines
lines(subsetData$Timestamp, subsetData$Sub_metering_3, col="blue")

# Add the Legend
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

# Close the Graphics Device
dev.off()
