png(file = "plot4.png")
d<-read.csv("household_power_consumption.txt",sep=";")
d1<-d[d$Date =="1/2/2007",]
d2<-d[d$Date =="2/2/2007",]

par(mfrow=c(2,2))
plot(as.vector(cbind(d1$Global_active_power,d2$Global_active_power))/500,type="l",xaxt="n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
plot(as.numeric(cbind(as.vector(d1$Voltage),as.vector(d2$Voltage))),type="l",ylab="Voltage",xaxt="n",xlab="datetime")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
plot(as.numeric(cbind(as.vector(d1$Sub_metering_1),as.vector(d2$Sub_metering_1))),type="l",ylim=c(0,40),col="black",ylab="Energy sub metering",xaxt="n",xlab="")
par(new=TRUE)
plot(as.numeric(cbind(as.vector(d1$Sub_metering_2),as.vector(d2$Sub_metering_2))),type="l",ylim=c(0,40),col="red",ylab="Energy sub metering",xaxt="n",xlab="")
par(new=TRUE)
plot(as.numeric(cbind(as.vector(d1$Sub_metering_3),as.vector(d2$Sub_metering_3))),type="l",ylim=c(0,40),col="blue",ylab="Energy sub metering",xaxt="n",xlab="")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")
plot(as.numeric(cbind(as.vector(d1$Global_reactive_power),as.vector(d2$Global_reactive_power))),type="l",col="black",ylab="Global_reactive_power",xaxt="n",xlab="datetime")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off() 


