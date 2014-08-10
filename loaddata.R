# This script reads the raw text data and writes a data frame with the
# neccessary observations only to disk in the working directory.

initial <- read.table("household_power_consumption.txt",
                      header = TRUE,
                      sep = ";",
                      na.strings = "?",
                      nrows = 5,
                      comment.char = "")
classes <- sapply(initial, class)
pcons <- read.table("household_power_consumption.txt",
                    header = TRUE,
                    sep = ";",
                    na.strings = "?",
                    colClasses = classes,
                    nrows = 2100000,
                    comment.char = "")


# Creating a new variable for the date and time
pcons$datetime <- as.POSIXct(paste(pcons$Date, pcons$Time),
                             format="%d/%m/%Y %H:%M:%S")


# Only 2 days are needed for the plots
pcons <- (subset(pcons,
                 datetime >= as.POSIXct("2007-02-01") &
                 datetime <= as.POSIXct("2007-02-02")))


# Dropping the original data and time variable and reordering the frame
pcons <- pcons[,c(10, 3:9)]


# Saving the frame to disk and dropping the temp objects
save(pcons, file="pcons.Rda")
rm(initial, classes, pcons)
