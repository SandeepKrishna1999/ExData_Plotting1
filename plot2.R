# The default settings of png are width = 480, height = 480, units = "px"
png("plot2.png")
plot(epc$dateTime, epc$Global_active_power, type = "l", 
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
