
png(file = "plot1.png")
d<-read.csv("household_power_consumption.txt",sep=";")
d1<-d[d$Date =="1/2/2007",]
d2<-d[d$Date =="2/2/2007",]
hist(cbind(d1$Global_active_power,d2$Global_active_power)/500,col='Red',main="Global Active Power",xlab="Global Active Power (kilowatts)")
#dev.copy(png, file = "plot1.png") 
dev.off() 
