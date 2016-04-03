##read the data source, named "data2"
source ("Read data.R")

##plot 2
plot(data2$DateTime, as.numeric(as.character(data2$Global_active_power)),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")

##create a png file and close de device creator 
dev.copy(png,'plot2.png',  width = 480, height = 480)
dev.off()


