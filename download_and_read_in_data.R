#load required libraries
library(sqldf)
library(lubridate)

dir<-getwd() #get user working directory

#if data not already in working directory, download it
if (!"household_power_consumption.txt" %in% list.files(dir)){
  url<-"https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip" #set website url where data is stored
  
  download.file(url,"power_data.zip") #download zip file from website to working directory
  
  unzip("power_data.zip") #unzips file 
}

#parsese unzipped file for target dates (1/2/2007 and 2/2/2007)
data<-read.csv.sql("household_power_consumption.txt",sep=";",
                    sql="select * from file where Date=='1/2/2007' or Date=='2/2/2007' ",eol='\n')

##reformat date and time
data$datetime<-gsub(":","-",gsub("/","-",paste(data$Date,data$Time,sep='-'))) #replace colons and slashes with dashes
data$Date<-as.Date(data$Date,format="%d/%m/%Y") #format date
data$datetime<-dmy_hms(data$datetime) #format time
