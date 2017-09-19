#===============Problem 8 ========================================
f <- function(n) {
  if (n == 0){ (1) }
  else if (n == 1){ (2) }
  else {
   return (f(n-1) + f(n-2))
  }
}

p_n <- function(n){
  f(n) / 2^n
}


vec <- numeric()
row <- numeric()
n <- 2
while (n <= 25){
  row <- c(row, n)
  vec <- c(vec, p_n(n))
  n <- n + 1
}
result <- data.frame(row, vec)
result