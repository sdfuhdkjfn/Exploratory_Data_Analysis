plot1 <- function(infile) {
globalActivePower <- read.table(infile, header=TRUE, 
  stringsAsFactors = FALSE, na.strings="?", sep=";")
good <- globalActivePower[globalActivePower[1] == '1/2/2007' 
  | globalActivePower[1] == '2/2/2007' ,]
png("plot1.png", width=480, height=480)
hist(good$Global_active_power, col="#FF2500", 
  xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
}
