
#load in data and needed libraries. If don't have data in current working directory, it will download it for you
dir<-getwd() #get user working directory
source('download_and_read_in_data.R')

#plot4 - save to working directory
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(data,plot(datetime,Global_active_power,type="n",ylab="Global Active Power (kilowatts)",xlab=""))
with(data,lines(datetime,Global_active_power)) #plot 1 - top left

with(data,plot(datetime,Voltage,type="n",ylab="Voltage",xlab="datetime"))
with(data,lines(datetime,Voltage)) #plot 2 - top right

with(data,plot(datetime,Sub_metering_1,type="n",ylab="Energy sub metering",xlab=""))
with(data,lines(datetime,Sub_metering_1))
with(data,lines(datetime,Sub_metering_2, col="red"))
with(data,lines(datetime,Sub_metering_3, col="blue"))
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       bty="n",
       col=c('black','red','blue')) #plot 3 - bottom left
with(data,plot(datetime,Global_reactive_power,type="n",ylab="Global_reactive_power",xlab="datetime"))
with(data,lines(datetime,Global_reactive_power)) #plot 4 - bottom right
dev.off()