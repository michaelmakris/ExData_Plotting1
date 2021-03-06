#plot1
data <- read.csv("household_power_consumption.txt",skip=66637,nrows=2880,na.strings = "?",header=F,sep=";")
names(data) <- names(read.csv("household_power_consumption.txt", nrows=1,sep=";"))
data$Date <- as.Date(data$Date, format="%d/%m/%y")
data$Time <- strptime(data$Time, format="%H:%M:%S") 
png(filename="plot1.png", width=480, height=480)
hist(data$Global_active_power,col="#ff2500", xlab="Global Active Power (kilowatts)",main="Global Active Power",breaks = 12, ylim = c(0, 1200)) 
dev.off()
