par(mfrow = c(2,2))
plot(dfplt$dateTime, dfplt$global_active_power, type = 'l')
plot(dfplt$dateTime, dfplt$voltage, type = 'l', ylab = "Voltage (Hz)", 
     xlab = "dateTime")
with(dfplt, plot(dfplt$dateTime, dfplt$sub_metering_1, type = 'l',
                 col = "black"))
lines(dfplt$dateTime, dfplt$sub_metering_2, type = 'l', col = "red")
lines(dfplt$dateTime, dfplt$sub_metering_3, type = 'l', col = "blue")
legend("topright",col=c("black","red","blue" ),pch="",lty=1, lwd=2, bty="o",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.5)
plot(dfplt$dateTime, dfplt$global_reactive_power, type = 'l', col = 'black',
     ylab = "Global_reactive_power", xlab = "dateTime", ylim = c(0.0, 0.5))
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()