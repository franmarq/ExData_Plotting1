##Read the data
if(!file.exists('data.zip')){
    url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
    
    download.file(url,destfile = "data.zip")
}

##UnZip the file
unzip("data.zip")

##create a data object
data<-read.table("household_power_consumption.txt",header = TRUE, sep= ";")

##check the variables names
names(data)

##verify the class
lapply(data, class)

##Review the first 5 elements in the date variable
data$Date[1:5]

##Review the first 5 elements in the time variable
data$Date[1:5]

##combine date and time variables and after change the time format to yyyy-mm-dd hh:mm:ss
data$DateTime<-paste(data$Date, data$Time)
data$DateTime<-strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")

## create a subset only with the data for dates 2007-02-01 and 2007-02-02.
start<-which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
end<-which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
data2<-data[start:end,]

