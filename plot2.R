dataFile <- "./household_power_consumption.txt"
power <- read.table(dataFile, header=TRUE, sep=";")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
datetime <- strptime(paste(subpower$Date, subpower$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subpower$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()