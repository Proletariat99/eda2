eda_path <- "~/Google Drive/dev/R/coursera/eda2"
# hugefile <- "~/Google Drive/dev/R/coursera/eda/data/household_power_consumption.txt"
setwd(dir=eda_path)
# hugedat <- read.delim(hugefile, sep=";", na.strings="?", stringsAsFactors=FALSE)
# save(hugedat, file="~/Google Drive/dev/R/coursera/eda/hugedat_savefile.dat")
load(file="~/Google Drive/dev/R/coursera/eda2/hugedat_savefile.dat")
str(hugedat)
png(file="plot1.png", width=480, height=480, units="px")
h <- hist(hugedat$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", axes=FALSE)
mx <- max(h$counts)
mn <- 0
ticklocs <- seq(0, mx, mx/6)

axis(side=2, at=ticklocs, labels=as.integer(seq(0,1200,200)))
h
axis(side=1, at=seq(0,6,2), labels=seq(0,6,2))
dev.off()


# Date: Date in format dd/mm/yyyy
# Time: time in format hh:mm:ss
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
