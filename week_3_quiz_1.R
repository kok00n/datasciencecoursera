library(datasets)
data(iris)
?iris

# 1
round(tapply(iris$Sepal.Length, iris$Species, mean), 0)

# 2
head(iris)
apply(iris[, 1:4], 2, mean)

library(datasets)
data(mtcars)
?mtcars

# 3
tapply(mtcars$mpg, mtcars$cyl, mean)
?with
with(mtcars, tapply(mpg, cyl, mean))

sapply(split(mtcars$mpg, mtcars$cyl), mean)

# 4
pow_cyl <- sapply(split(mtcars$hp, mtcars$cyl), mean)
round(abs(pow_cyl['4'] - pow_cyl['8']), 0)

# 5
debug(ls)
ls()
