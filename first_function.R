add2 <- function(x, y){
  x+y
}

above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x, n = 10){
  use <- x > n
  x[use]
}

columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in seq_len(nc)){
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

f <- function(a, b){
  a ^ 2
}

test <- function(a, ...){
  tmp <- c(...)
  print(tmp)
  a
}

make.power <- function(n){
  pow <- function(x){
    x ** n
  }
  
  pow
}

cube <- make.power(3)
square <- make.power(2)

cube(3)
square(3)

ls()

ls(environment(cube))
ls(environment(square))

get('n', envir = environment(cube))
get('n', envir = environment(square))
