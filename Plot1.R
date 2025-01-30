
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data[,1] <- as.Date(data$Date, format = "%d/%m/%Y")

subdata1 <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")


subdata1$Global_active_power = as.numeric(subdata1$Global_active_power)
class(subdata1$Global_active_power)
hist(subdata1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
