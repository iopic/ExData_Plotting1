
#load in data and needed libraries. If don't have data in current working directory, it will download it for you
dir<-getwd() #get user working directory
source('download_and_read_in_data.R')

#plot2 - save to working directory
png("plot2.png",width=480,height=480)
with(data,plot(datetime,Global_active_power,type="n",ylab="Global Active Power (kilowatts)",xlab=""))
with(data,lines(datetime,Global_active_power))
dev.off()

