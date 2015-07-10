plot4 <- function(infile) {
globalActivePower <- read.table(infile, header=TRUE, 
  stringsAsFactors = FALSE, na.strings="?", sep=";")
good <- globalActivePower[globalActivePower[1] == '1/2/2007' 
  | globalActivePower[1] == '2/2/2007' ,]

png("./plot4.png", width=480, height=480, bg="transparent")

par(mfrow=c(2,2))

# Top Left Plot
plot(good$Global_active_power, xaxt="n", xlab="", ylab="Global Active Power", 
  bg="transparent", type="o", pch=" ")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

# Top Right Plot
plot(good$Voltage, xaxt="n", xlab="datetime", ylab="Voltage", 
  bg="transparent", type="o", pch=" ")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

# Lower Left Plot
plot(good$Sub_metering_1, xaxt="n", xlab="", ylab="Energy sub metering", 
  bg="transparent", type="o", pch=" ", col="black")
lines(good$Sub_metering_2, col="red")
lines(good$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
  lty=c(1,1,1), col=c("black", "blue", "red"))
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

# Lower Right Plot
plot(good$Global_reactive_power, xaxt="n", xlab="datetime", 
  ylab="Global_reactive_power", bg="transparent", type="o", pch=" ")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

dev.off()
}
