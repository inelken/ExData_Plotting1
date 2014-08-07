hpc<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]
windows()
hist(hpc$Global_active_power,main="Global Active Power",
     col="red",xlab="Global Active Power (killowatts)",
     ylab="Frequency")
dev.copy(png,file="plot1.png")
dev.off();