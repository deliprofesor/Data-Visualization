View(mtcars)

table(mtcars$gear)

yuz <- prop.table(table(mtcars$gear))
yuz

# Değişken isimlerini tanımla (names fonksiyonundan kaçınmak için değiştirildi)
vites_names <- c("3 Vitesli", "4 Vitesli", "5 Vitesli") 

# Yüzdeleri hesapla ve string formatına dönüştür (%s formatı kullanılacak)
t <- sprintf("%s = %s%s", vites_names, as.character(yuz * 100), "%")

# Pasta grafiğini çiz
pie(yuz,
    main = "Viteslerin Pasta Grafigi",
    clockwise = TRUE,
    labels = t,
    col = c("orange", "pink", "cyan"),
    init.angle = 180,
    border = "black",
    lty = 4,
    radius = 1.1
)
