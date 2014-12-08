png(file = "plot3.png")
d<-read.csv("household_power_consumption.txt",sep=";")
d1<-d[d$Date =="1/2/2007",]
d2<-d[d$Date =="2/2/2007",]
plot(as.numeric(cbind(as.vector(d1$Sub_metering_1),as.vector(d2$Sub_metering_1))),type="l",ylim=c(0,40),col="black",ylab="Energy sub metering",xaxt="n",xlab="")
par(new=TRUE)
plot(as.numeric(cbind(as.vector(d1$Sub_metering_2),as.vector(d2$Sub_metering_2))),type="l",ylim=c(0,40),col="red",ylab="Energy sub metering",xaxt="n",xlab="")
par(new=TRUE)
plot(as.numeric(cbind(as.vector(d1$Sub_metering_3),as.vector(d2$Sub_metering_3))),type="l",ylim=c(0,40),col="blue",ylab="Energy sub metering",xaxt="n",xlab="")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off() 
