hpc<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]
hpc$CDate=strptime(paste(hpc$Date,hpc$Time),format="%d/%m/%Y %H:%M:%S")
windows()
plot(hpc$CDate,hpc$Global_active_power,type="l",
     xlab="",ylab="Global Active Power (killowatts)")
dev.copy(png,file="plot2.png")
dev.off();