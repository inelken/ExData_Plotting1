hpc<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]
hpc$CDate=strptime(paste(hpc$Date,hpc$Time),format="%d/%m/%Y %H:%M:%S")
windows()
plot(hpc$CDate,hpc$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(hpc$CDate,hpc$Sub_metering_2,type="l",col="red")
points(hpc$CDate,hpc$Sub_metering_3,type="l",col="blue")
legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty="solid",cex=0.9)
dev.copy(png,file="plot3.png")
dev.off();