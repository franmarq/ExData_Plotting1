##read the data source, named "data2"
source ("Read data.R")

##plot 1.
hist(as.numeric(as.character(data2$Global_active_power)), 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")

##create a png file and close de device creator 
dev.copy(png,'plot1.png',  width = 480, height = 480)
dev.off()


