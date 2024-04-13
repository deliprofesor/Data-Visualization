

par(mar=c(5,5,5,7), xpd = TRUE)

plot(x = airquality$Ozone, y = airquality$Temp,
    main = "Ozon ve Sicaklik Iliskisi",
    xlab = "Ozon Degerleri",
    ylab = "Sicaklik Degerleri",
    pch = 19,
    col = c("blue", "orange", "pink","gray", "black")[as.factor(airquality$Month)],
    bty = "L",
    #cex = 2 # nokta boyutu 
    cex = airquality$Wind/10
    )


legend(x = "topright", legend = levels(as.factor(airquality$Month)),
                        col = c("blue", "orange", "pink", "gray", "black"),
                        pch = 19,
                        inset = c(-0.1, 0)
)

# rüzgarları ayırdık
legend(x = "topright", legend = c("Low","Medium", "High"),
        title = "Ruzgar Seviyesi ",
        cex = 0.8,
        pt.cex = c(0.2, 0.9, 2), # sadece koyucağımız noktanın boyutunu etkiler
        pch = 19,
        inset = c(-0.1, 0.5)
        )
#pt.cex parametreleri         
min(airquality$Wind/10)
mean(airquality$Wind/10)
max(airquality$Wind/10)






