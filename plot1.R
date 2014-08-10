# Load the prepred data frame

load("pcons.Rda")

hist(pcons$Global_active_power,
     breaks = 12,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot1.png", bg = "transparent")
dev.off()
