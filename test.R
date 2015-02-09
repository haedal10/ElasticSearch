c1 <- read.csv("C:/Users/damsoyu/Downloads/household_power_consumption.txt", header=T, sep=';')
head(c1)
hist(c1$Global_active_power)
strptime() and as.Date()


c1$Date <- as.Date(c1$Date)

#plot1
c1$Global_active_power <- as.numeric(c1$Global_active_power)
hist(c1$Global_active_power/1000,col="red",main="Global Active Power",breaks=15,xlim=c(0,6))

dev.off()
#plot2
plot(c1$Date,c1$Global_active_power)
#plot3

library(knitr)
knit("RGitHub.Rmd")

#plot4