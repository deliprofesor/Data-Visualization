#heatmap grafigi

View(mtcars)
mtcars_1 <- as.matrix(mtcars)
heatmap(mtcars_1, scale = "column")
heatmap(mtcars_1, scale = "column", Colv = NA, Rowv = NA)

library(RColorBrewer)

heatmap(mtcars_1, scale = "column", Colv = NA, Rowv = NA,
        col = colorRampPalette(brewer.pal(9, "Blues"))(25))

legend("bottomright", legend = c("Min", "Ort","Max"),
        fill = colorRampPalette(brewer.pal(9, "Blues"))(3))
