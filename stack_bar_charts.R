View(mtcars)

table(mtcars$gear, mtcars$cyl)

t <- table(mtcars$gear, mtcars$cyl)

par(mar=c(5.1, 5.1, 5.1,7), xpd = TRUE) # nolint: infix_spaces_linter, commas_linter, line_length_linter.
barplot(t,
    names.arg = c("4 Silindirli", "6 Silindirli", "8 Silindirli"), # nolint: indentation_linter, line_length_linter.
    axis.lty = 1,
    main = "Bar Grafigi",
    xlab = "Silindir Degerleri",
    ylab = "Frekans Degerleri",
    col = c("orange", "pink", "gray"),
    legend = c("3 Vitesli", "4 Vitesli","5 Vitesli"), # nolint: commas_linter.
    args.legend = list(bty = "o", # buradaki bty nin içindeki n none anlamına geliyor yav # nolint
                        horiz = TRUE, # nolint
                        xjust = 0.6,
                        yjust = -0.7),
) # nolint: trailing_whitespace_linter.



table(mtcars$cyl, mtcars$gear)

t <- table(mtcars$cyl, mtcars$gear)

par(mar=c(5.1, 5.1, 5.1,7), xpd = TRUE) # nolint: infix_spaces_linter, commas_linter, line_length_linter.
barplot(t,
    names.arg = c("3 Vitesli", "4 Vitesli","5 Vitesli"), # nolint: indentation_linter, line_length_linter, commas_linter.
    axis.lty = 1,
    main = "Bar Grafigi",
    xlab = "Silindir Degerleri",
    ylab = "Frekans Degerleri",
    col = c("orange", "pink", "gray"),
    legend = c("4 Silindirli", "6 Silindirli", "8 Silindirli"), # nolint: commas_linter, line_length_linter.
    args.legend = list(bty = "o", # buradaki bty nin içindeki n none anlamına geliyor yav # nolint
                        horiz = TRUE, # nolint
                        xjust = 0.6,
                        yjust = -0.6,
                        cex = 0.8),
)
