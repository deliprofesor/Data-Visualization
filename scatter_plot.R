#saçılım dağılımı
View(airquality)

plot(airquality$Ozone, bty = "L") # L görünümü için bty :)
plot(airquality$Ozone, pch = "b") # üçgen 2  artı 3
plot(airquality$Ozone, pch = "4") # 4 çarpı

plot(airquality$Ozone, pch = 19, type = 'h')  # 19 içi dolu pointler 
plot(airquality$Ozone, pch = 19, type = 'l') 
plot(airquality$Ozone, pch = 19, type = 'b') 
plot(airquality$Ozone, pch = 19, type = 'c') 
plot(airquality$Ozone, pch = 19, type = 'o') 
plot(airquality$Ozone, pch = 19, type = 's') 


plot( x = airquality$Ozone, y = airquality$Temp, pch = 19, type = "p")

# x ve y aynı uzunlukta veri setleri olmalı  
plot( x = airquality$Ozone, y = airquality$Temp, pch = 19, type = "p",
        main = "Saçilim Diyagrami",
        xlab = "Ozon Degerleri",
        ylab = "Sicaklik Degerleri",
        bty = "L")







