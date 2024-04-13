
" 
lineer Dogru ve lowess dogrusu 
LOESS (Locally Weighted Scatterplot Smoothing), 
veri görselleştirme ve analizinde kullanilan bir regresyon yöntemidir.
LOESS yöntemi, veri noktalarini düz bir çizgi yerine daha yumuşak eğrilerle
ilişkilendirmek için kullanilir. Bu, veri noktalarinin yakin çevresindeki
verilere daha fazla agirlik verirken, uzak verilere daha az agirlikk vererek
daha esnek ve doğrusal olmayan ilişkileri yakalamayi amaçlar.
"
airquality <- na.omit(airquality)
par(mar = c(5,5,5,7.2), xpd = FALSE) # nolint

plot(x = airquality$Ozone , y = airquality$Temp, # nolint: commas_linter, trailing_whitespace_linter, line_length_linter. ozon bağimsiz temp bağimli degisken 
        main = "Ozon ve Sicaklik Iliskisi", # nolint
        xlab = "Ozon Degerleri",
        ylab = "Sicaklik Degerleri",
        pch = 19,
        col = c("blue", "orange", "pink","gray", "black")[as.factor(airquality$Month)], # nolint: line_length_linter, commas_linter.
        bty = "L",
        #cex = 2 # nokta boyutu  # nolint
        cex = airquality$Wind/10  # nolint
    ) # nolint

legend(x = "topright", legend = levels(as.factor(airquality$Month)),
                        title = "Aylar", # nolint
                        col = c("blue", "orange", "pink", "gray", "black"), # nolint
                        pch = 19,
                        inset = c(-0.1, 0)
)

# lineer model lm(y~x)
abline( lm(airquality$Temp ~ airquality$Ozone), lwd = 2 ,lty = "dotted", col = "orange") # nolint
#egri cizelim yav
lines(lowess(airquality$Ozone, airquality$Temp), lwd = 2, col = "blue")


par(xpd = TRUE) # nolint


legend(x = "topright", legend = c("Low","Medium", "High"), # nolint
        title = "Ruzgar Seviyeleri ", # nolint
        pch = 19,
        cex = 0.8,
        pt.cex = c(0.2, 0.9, 2), # sadece koyucağımız noktanın boyutunu etkiler
        inset = c(-0.35, 0.6)
        ) # nolint

lowess(airquality$Ozone, airquality$Temp)

# şimdi biraz manipulasyon yapalim  # nolint
# kayip gozlem yapalim canavar avina hazir miyiz yavvv
is.na(airquality$Ozone)
# bir verisetinde bulunan kayip gozlemleri çikarir tum na lara cap cap
# na.omit(airquality) # nolint