Sys.setlocale("LC_ALL", "en_US.UTF-8") # Varsayılan kodlama olarak UTF-8 kullanma

View(iris)

hist(iris$Sepal.Length)
hist(
    iris$Sepal.Length,
    main = "Histogram Grafigi", # türkçe karakter sevmeyen R ' ı bende sevmem yav seveceksin o kadar
    xlab = "Degisken Degerler",
    ylab = "Frekans Degerleri ")


hist(
    iris$Sepal.Length,
    main = "Histogram Grafigi", # türkçe karakter sevmeyen R ' ı bende sevmem yav seveceksin o kadar
    xlab = "Degisken Degerler",
    ylab = "Frekans Degerleri ",
    breaks = 30 ) # kırılım noktası sayısı -- ideal görüntü bu yav :)

hist(
    iris$Sepal.Length,
    main = "Histogram Grafigi", # türkçe karakter sevmeyen R ' ı bende sevmem yav seveceksin o kadar
    xlab = "Degisken Degerler",
    ylab = "Frekans Degerleri ",
    breaks = 30,
    xlim = c(0,15) ) # kırılım noktası sayısı

hist(
    iris$Sepal.Length,
    main = "Histogram Grafigi", # türkçe karakter sevmeyen R ' ı bende sevmem yav seveceksin o kadar
    xlab = "Degisken Degerler",
    ylab = "Frekans Degerleri ",
    breaks = 30,
    xlim = c(0,15),
    ylim = c(0,30) ) 
    

