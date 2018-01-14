with(file,{
      plot(Sub_metering_1~dateTime,type="l",
           ylab = "Energy sub metering",xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
})
legend("topright",col= c("black","red","blue"),lwd=c(1,1,1),
                          c("Sub_metering_1","Sub_metering_2","sub_metering_3"))

#save file and close device
dev.copy(png,"plot3.png",width=480,height=480)
dev.off()