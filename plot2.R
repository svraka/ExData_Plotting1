# Load the prepred data frame

load("pcons.Rda")

plot(pcons$datetime, pcons$Global_active_power,
     type= "o",
     pch = "",
     # main = "Global Active Power",
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     cex = 0.75)

dev.copy(png, file = "plot2.png", bg = "transparent")
dev.off()
