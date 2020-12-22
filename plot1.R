epc <- read.table("household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")
epc <- subset(epc, Date %in% c("1/2/2007","2/2/2007"))
epc$Date <- as.Date(epc$Date, "%d/%m/%Y")
dateTime <- paste(epc$Date, epc$Time)
epc <- epc[,!(names(epc) %in% c("Date","Time"))]
epc <- cbind(dateTime, epc)
epc$dateTime <- as.POSIXct(dateTime)
png("plot1.png", width = 480, height = 480, units = "px")
hist(epc$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
