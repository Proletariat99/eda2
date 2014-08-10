eda_path <- "~/Google Drive/dev/R/coursera/eda2"
# hugefile <- "~/Google Drive/dev/R/coursera/eda/data/household_power_consumption.txt"
setwd(dir=eda_path)
# hugedat <- read.delim(hugefile, sep=";", na.strings="?", stringsAsFactors=FALSE)
# save(hugedat, file="~/Google Drive/dev/R/coursera/eda/hugedat_savefile.dat")
load(file="~/Google Drive/dev/R/coursera/eda2/hugedat_savefile.dat")
str(hugedat)
png(file="plot3.png", width=480, height=480, units="px")
# datelist <- as.Date(strptime(hugedat$Date, format="%d/%m/%Y"))
dev.set(2)
day1dat <- hugedat[datelist == "2007-02-01",]
day2dat <- hugedat[datelist == "2007-02-02",]
mydat <- rbind(day1dat, day2dat)
plot(mydat$Sub_metering_1, type="l", ylab="Energy Sub Metering", xlab="Day", axes=FALSE)
lines(mydat$Sub_metering_2, col="blue")
lines(mydat$Sub_metering_3, col="red")
axis(1, at=seq(0,2500, 1250), labels=c("Thurs", "Fri", "Sat"))
axis(2, at=seq(0,30,10), labels=seq(0,30,10))
dev.off()

