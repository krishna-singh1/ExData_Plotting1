par(mfrow= c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
with(file,{
  plot(Global_active_power~dateTime,ylab = "Global Active Power",
       xlab="",type =  "l")
  plot(Voltage~dateTime,ylab = "Voltage ",
       type =  "l")
  plot(Sub_metering_1~dateTime,type="l",
       ylab = "Energy sub metering",xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
  legend("topright",col= c("black","red","blue"),lwd=c(1,1,1),
         c("Sub_metering_1","Sub_metering_2","sub_metering_3"))
  plot(Global_reactive_power~dateTime, type="l", 
       ylab="Global_reactive_power ")
})

#save file and close device
dev.copy(png,"plot4.png",width=480,height=480)
dev.off()
