
View(mtcars)

height = table(mtcars$cyl) # nolint: assignment_linter.

barplot(height, names.arg = c ("4Silindir", "6 Silindir", "8Silindir")) # nolint: function_left_parentheses_linter, line_length_linter.

barplot(height, names.arg = c ( "4Silindir", "6 Silindir", "8Silindir"),# nolint
        col = "orange", # nolint
        border = "blue"
        )  # nolint 


barplot(height, names.arg = c ( "4Silindir", "6 Silindir", "8Silindir"),# nolint
        col = "orange", # nolint
        border = "blue",
        horiz = TRUE,
        cex.axis = 0.8,
        cex.names = 0.8
        ) # nolint

barplot(height, names.arg = c ( "4Silindir", "6 Silindir", "8Silindir"),# nolint
        col = "orange", # nolint
        border = "blue",
        horiz = FALSE,
        cex.axis = 0.8,
        cex.names = 0.8,
        axis.lty = 3
        ) # nolint

grup_f <- function(x){ # nolint: paren_body_linter, brace_linter.

    cey <- quantile(x) # nolint
    result <- character(length(x)) # nolint: object_usage_linter.

    grup_1 <- which(x <= cey[2])  # nolint
    grup_2 <- which(x <= cey[3] & x > cey[2])  # nolint: object_usage_linter.
    grup_3 <- which(x <= cey[4] & x > cey[3]) # nolint: object_usage_linter.
    grup_4 <- which(x > cey[4] & x <= cey[5]) # nolint

    result[grup_1] <- "Grup 1 " # nolint: indentation_linter.
    result[grup_2] <- "Grup 2 "
    result[grup_3] <- "Grup 3 "
    result[grup_4] <- "Grup 4 "

    return(result) # nolint: indentation_linter.

}

result <- grup_f((mtcars$disp))

d <- table(result)
d

barplot(d, names.arg = c ( "Grup 1 ", "Grup 2", "Grup 3", "Grup 4"),# nolint
        col = "orange", # nolint
        border = "blue",
        horiz = FALSE,
        cex.axis = 0.8,
        cex.names = 0.8,
        axis.lty = 1
        ) # nolint

quantile(mtcars$mpg)[2]


result <- grup_f((mtcars$hp))

d <- table(result)
d

barplot(d, names.arg = c ( "Grup 1 ", "Grup 2", "Grup 3", "Grup 4"),# nolint
        col = "orange", # nolint
        border = "blue",
        horiz = FALSE,
        cex.axis = 0.8,
        cex.names = 0.8,
        axis.lty = 1
        ) # nolint

quantile(mtcars$mpg)[2]
