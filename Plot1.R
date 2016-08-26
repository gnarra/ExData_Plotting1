# Set Working Directory
setwd("C:/Gopal/Coursera/ExploratoryDataAnalysis/Week1")

# Load the Data
data <- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

# Subset the Data
subsetData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# PNG Graphics Device
png("ExData_Plotting1/Plot1.png", width = 480, height = 480)

# Plot to the File
hist(subsetData$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main="Global Active Power")

# Close the Graphics Device
dev.off()
