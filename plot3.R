# Load the prepred data frame

load("pcons.Rda")

plot(pcons$datetime, pcons$Sub_metering_1,
     type= "o",
     pch = "",
     col = "black",
     xlab = "",
     ylab = "Energy sub metering")

lines(pcons$datetime, pcons$Sub_metering_2,
     type= "o",
     pch = "",
     col = "red",
     xlab = "",
     ylab = "")

lines(pcons$datetime, pcons$Sub_metering_3,
     type= "o",
     pch = "",
     col = "blue",
     xlab = "",
     ylab = "")

legend("topright",
       lty = 1,
       cex = 0.8,
       y.intersp  = 0.85,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"))

dev.copy(png, file = "plot3.png", bg = "transparent")
dev.off()
