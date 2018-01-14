file<-read.table("household_power_consumption.txt",header=TRUE, sep = ";",na.strings = "?",
                 colClasses = c('character','character','numeric','numeric','numeric','numeric'
                                ,'numeric','numeric','numeric'))
str(file)
head(file)
#converting in character to dates
file$Date<- as.Date(file$Date,"%d/%m/%Y")

#subsetting the dataset
file<- subset(file,Date>=as.Date("2007-02-01") & Date<=as.Date("2007-2-2"))

#remove incomplete cases
file <-file[complete.cases(file),]

#combine date and time
dateTime<-paste(file$Date,file$Time)
dateTime <- setNames(dateTime,"DateTime")

#remove date and time column
file<- file[,!(names(file) %in% c("Date","Time"))]

#add date and time column
file<-cbind(dateTime,file)

#format date and time
file$dateTime <- as.POSIXct(dateTime)

