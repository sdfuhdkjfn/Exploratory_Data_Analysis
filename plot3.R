plot3 <- function(infile) {
globalActivePower <- read.table(infile, header=TRUE, 
  stringsAsFactors = FALSE, na.strings="?", sep=";")
good <- globalActivePower[globalActivePower[1] == '1/2/2007' 
  | globalActivePower[1] == '2/2/2007' ,]
png("./plot3.png", width=480, height=480)
plot(good$Sub_metering_1, xaxt="n", xlab="", ylab="Energy sub metering", 
  type="o", pch=" ", col="black")
lines(good$Sub_metering_2, col="red")
lines(good$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  lty=c(1,1,1), col=c("black", "blue", "red"))
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
}
