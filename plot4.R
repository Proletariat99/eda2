# Note, just load the saved file.

eda_path <- "~/Google Drive/dev/R/coursera/eda2"
# hugefile <- "~/Google Drive/dev/R/coursera/eda/data/household_power_consumption.txt"
setwd(dir=eda_path)
# hugedat <- read.delim(hugefile, sep=";", na.strings="?", stringsAsFactors=FALSE)
# save(hugedat, file="~/Google Drive/dev/R/coursera/eda/hugedat_savefile.dat")
load(file="~/Google Drive/dev/R/coursera/eda2/hugedat_savefile.dat")
str(hugedat)

# datelist <- as.Date(strptime(hugedat$Date, format="%d/%m/%Y"))
# datlist <- hugedat$Global_active_power
# png(file="plot4.png", width=480, height=480, units="px")
# dev.set(1)
dev.set(2)
par(mfrow=c(2,2))
plot(mydat$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="Day", axes=FALSE)
axis(1, at=seq(0,2500, 1250), labels=c("Thurs", "Fri", "Sat"))
plot(mydat$Voltage, type="l", axes=FALSE)
axis(1, at=seq(0,2500, 1250), labels=c("Thurs", "Fri", "Sat"))
plot(mydat$Sub_metering_1, type="l", ylab="Energy Sub Metering", xlab="Day", axes=FALSE)
axis(1, at=seq(0,2500, 1250), labels=c("Thurs", "Fri", "Sat"))
lines(mydat$Sub_metering_2, col="blue")
lines(mydat$Sub_metering_3, col="red")
plot(mydat$Global_reactive_power, type="l", axes=FALSE)
axis(1, at=seq(0,2500, 1250), labels=c("Thurs", "Fri", "Sat"))
axis(2, at=seq(0,0.5,0.1), labels=seq(0,0.5,0.1))
# dev.off()
