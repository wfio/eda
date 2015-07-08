#plot3 - overlay line
with(dfplt, plot(dfplt$dateTime, dfplt$sub_metering_1, type = 'l',
                 col = "black", ylab = "Energy Sub Metering",
                 xlab = "Days of Week"))
lines(dfplt$dateTime, dfplt$sub_metering_2, type = 'l', col = "red")
lines(dfplt$dateTime, dfplt$sub_metering_3, type = 'l', col = "blue")
legend("topright",col=c("black","red","blue" ),pch="",lty=1, lwd=2, bty="o",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = .8)
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()
