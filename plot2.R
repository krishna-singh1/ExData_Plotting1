plot(file$Global_active_power~file$dateTime,ylab = "Global Active Power (kilowatts)",
      xlab="",type =  "l")

#save file and close device
dev.copy(png,"plot2.png",width=480,height=480)
dev.off()