#plot2 - line
plot(dfplt$dateTime, dfplt$global_active_power, type = 'l')
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()
