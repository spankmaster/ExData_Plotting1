png(file = "plot2.png")
d<-read.csv("household_power_consumption.txt",sep=";")
d1<-d[d$Date =="1/2/2007",]
d2<-d[d$Date =="2/2/2007",]
plot(as.vector(cbind(d1$Global_active_power,d2$Global_active_power))/500,type="l",xaxt="n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off() 

