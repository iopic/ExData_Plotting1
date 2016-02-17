
#load in data and needed libraries. If don't have data in current working directory, it will download it for you
dir<-getwd() #get user working directory
source('download_and_read_in_data.R')

#plot3 - save to working directory
png("plot3.png",width=480,height=480)
with(data,plot(datetime,Sub_metering_1,type="n",ylab="Energy sub metering",xlab=""))
with(data,lines(datetime,Sub_metering_1))
with(data,lines(datetime,Sub_metering_2, col="red"))
with(data,lines(datetime,Sub_metering_3, col="blue"))
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       col=c('black','red','blue'))
dev.off()