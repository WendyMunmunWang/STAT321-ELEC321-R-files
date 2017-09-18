#===============Problem 8 ========================================
f <- function(n) {
  if (n == 0){
    1
  }
  else if (n == 1){
    2
  }
  else {
    sum <- 0
    while (n >= 0){
      sum <- sum + f(n)
      n <- n - 1
    }
    sum
  }
}
f(20)