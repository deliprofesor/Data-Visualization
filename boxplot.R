View(mtcars)

boxplot(mtcars[, c("drat","wt")],# nolint: commas_linter."qsec"
        main = "Box Plot Grafigi",
        xlab = "Degiskenler",
        ylab = "Degerler",
        names = c("Drat Degiskeni" , "WT Degikeni "),
        col = c("orange", "cyan"),
        border = "gray",
        pch = 19,
        cex.axis = 0.7,
        range = 0.5,
        outline = F
)


boxplot(mtcars[, c("drat","wt")],# nolint: commas_linter."qsec"
        main = "Box PLot Grafigi",
        xlab = "Degiskenler",
        ylab = "Degerler",
        names = c("Drat Degiskeni" , "WT Degikeni "),
        col = c("orange", "cyan"),
        border = "gray",
        pch = 19,
        cex.axis = 0.7,
        range = 1.2,
        outline = T
)


boxplot( mtcars$mpg ~ mtcars$gear ,
        main = "Box PLot Grafigi",
        xlab = "Vites Degerleri",
        ylab = "MPG Degerleri",
        col = c("orange"),
        border = "gray",
        pch = 19,
        cex.axis = 0.9,
        outline = T
)

#silindir 
boxplot( mtcars$mpg ~ mtcars$gear*mtcars$cyl ,
        main = "Box PLot Grafigi",
        xlab = "Vites Degerleri",
        ylab = "MPG Degerleri",
        names =c("3V 4S","4V 4S","5V 4S",
                "3V 6S","4V 6S","5V 6S",
                "3V 8S","4V 8S","5V 8S"),
        col = c("orange"),
        border = "gray",
        pch = 19,
        cex.axis = 0.9,
        outline = T
)

#legend()
