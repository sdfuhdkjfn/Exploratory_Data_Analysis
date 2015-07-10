plot2 <- function(infile) {
globalActivePower <- read.table(infile, header=TRUE, 
  stringsAsFactors = FALSE, na.strings="?", sep=";")
good <- globalActivePower[globalActivePower[1] == '1/2/2007' 
  | globalActivePower[1] == '2/2/2007' ,]
png("./plot2.png", width=480, height=480, bg="transparent")
plot(good$Global_active_power, xaxt="n", xlab="", 
     ylab="Global Active Power (kilowatts)", bg="transparent", type="o", pch=" ")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
}