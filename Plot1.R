
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data[,1] <- as.Date(data$Date, format = "%d/%m/%Y")

subdata1 <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")

a