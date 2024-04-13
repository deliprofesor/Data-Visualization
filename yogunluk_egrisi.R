
hist(iris$Sepal.Length, 
    main = "Histogram Grafigi Yogunluk Egrisi",
    xlab = "Degerler",
    ylab = "Yogunluk Prob",
    prob = T,# yogunluk verisine cevirmek icin  prob parametresini true yapıyoruz yav
    col = "orange"
    ) 
lines(density(iris$Sepal.Length, adjust = 5))
# adjust verileri sadeleştirir kıvrımları azaltır

hist(iris$Sepal.Length, 
    main = "Histogram Grafigi Yogunluk Egrisi",
    xlab = "Degerler",
    ylab = "Yogunluk Prob",
    prob = T,# yogunluk verisine cevirmek icin  prob parametresini true yapıyoruz yav
    col = "orange"
    ) 
    # density eğri çizmede kullanıyoruz
lines(density(iris$Sepal.Length, adjust =1), 
    col = "blue", lwd = 2, lty = "dotted") # dotted noktalı


lines(density(iris$Sepal.Length, adjust =3), 
    col = "gray", lwd = 3)
