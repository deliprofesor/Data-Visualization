Sys.setlocale("LC_ALL", "en_US.UTF-8")

View(airquality)

plot( x = airquality$Ozone, y = airquality$Temp, 
        pch = 19, bty = "L",
        main = "Saçilim Grafigi ve Renkler",
        xlab =  "Ozon Degerleri",
        ylab = "Sicaklik Degerleri",
        )

plot( x = airquality$Ozone, y = airquality$Temp, 
        pch = 19, bty = "L",
        main = "Saçilim Grafigi ve Renkler",
        xlab =  "Ozon Degerleri",
        ylab = "Sicaklik Degerleri",
        col = "orange")

plot( x = airquality$Ozone, y = airquality$Temp, 
        pch = 19, bty = "L",
        main = "Saçilim Grafigi ve Renkler",
        xlab =  "Ozon Degerleri",
        ylab = "Sicaklik Degerleri",
        col = "blue")        

class(airquality$Month)
# ben bunu int olarak kullanamam yav faktör yapalım faktör seviyeleri old. için

#levels ile fact. seviyeli kontrol edilir.
levels(as.factor(airquality$Month))

#gruplara göre renklendirme 
plot( x = airquality$Ozone, y = airquality$Temp, 
        pch = 19, bty = "L",
        main = "Saçilim Grafigi ve Renkler",
        xlab =  "Ozon Degerleri",
        ylab = "Sicaklik Degerleri",
        col = c("blue", "orange", "pink", "gray", "black")[as.factor(airquality$Month)]
        
        ) 
c("blue", "orange", "pink", "gray", "black")[as.factor(airquality$Month)]

legend(x = "topright", legend = levels(as.factor(airquality$Month)) ,
                        col = c("blue", "orange", "pink", "gray", "black"),
                        pch = 19)
#mar marjindir yani boşluklar
#ilk parametre aşağısı için, ikincisi sol , üçüncüsü üst en son sağ            
par(mar= c(6,6,6,7), xpd = TRUE)

plot( x = airquality$Ozone, y = airquality$Temp, 
        pch = 19, bty = "L",
        main = "Saçilim Grafigi ve Renkler",
        xlab =  "Ozon Degerleri",
        ylab = "Sicaklik Degerleri",
        col = c("blue", "orange", "pink", "gray", "black")[as.factor(airquality$Month)]
        
        ) 
c("blue", "orange", "pink", "gray", "black")[as.factor(airquality$Month)]

legend(x = "topright", legend = levels(as.factor(airquality$Month)) ,
                        col = c("blue", "orange", "pink", "gray", "black"),
                        pch = 19,
                        inset = c(-0.2, 0.1)) # sol ve sağdaki mesafe ayari


