# Load the prepred data frame

load("pcons.Rda")

par(mfrow = c(2, 2), cex = 0.5)
with(pcons, {
        plot(datetime, Global_active_power,
             type= "o",
             pch = "",
             xlab = "",
             ylab = "Global Active Power")
        plot(datetime, Voltage,
             type= "o",
             pch = "")
        plot(datetime, Sub_metering_1,
             type= "o",
             pch = "",
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
               bty = "n",
               xjust = 1,
               y.intersp  = 0.85,
               # cex =
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col = c("black", "red", "blue"))
        plot(datetime, Global_reactive_power,
             type= "o",
             pch = "")
})

dev.copy(png, file = "plot4.png", bg = "transparent")
dev.off()
