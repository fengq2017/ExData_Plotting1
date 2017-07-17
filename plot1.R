dataFile <- "./household_power_consumption.txt"
power <- read.table(dataFile, header=TRUE, sep=";")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
globalActivePower <- as.numeric(subpower$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()