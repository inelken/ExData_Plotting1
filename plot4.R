hpc<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]
hpc$CDate=strptime(paste(hpc$Date,hpc$Time),format="%d/%m/%Y %H:%M:%S")
windows()
par(mfcol=c(2,2))
plot(hpc$CDate,hpc$Global_active_power,type="l",
     xlab="",ylab="Global Active Power")
plot(hpc$CDate,hpc$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(hpc$CDate,hpc$Sub_metering_2,type="l",col="red")
points(hpc$CDate,hpc$Sub_metering_3,type="l",col="blue")
legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty="solid",bty="n",cex=0.8)
plot(hpc$CDate,hpc$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(hpc$CDate,hpc$Global_reactive_power,type="l",
     xlab="datetime",ylab="Global_reactive_power")
dev.copy(png,file="plot4.png")
dev.off();