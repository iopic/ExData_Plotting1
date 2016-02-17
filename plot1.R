
#load in data and needed libraries. If don't have data in current working directory, it will download it for you
dir<-getwd() #get user working directory
source('download_and_read_in_data.R')

#plot1 - save to working directory
png("plot1.png",width=480,height=480)
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()

