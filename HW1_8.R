#===============Problem 8 ========================================
#f_n = f_{n-1} + f_{n-2} function
f <- function(n) {
  if (n == 0){ (1) }
  else if (n == 1){ (2) }
  else {
   return (f(n-1) + f(n-2))
  }
}

#probability function for successive heads never appear
#@param {integer} n [the nu]
p_n <- function(n){
  f(n) / 2^n
}


probability <- numeric()
toss_num <- numeric()
n <- 2
while (n <= 25){
  toss_num <- c(toss_num, n)
  probability <- c(probability, p_n(n))
  n <- n + 1
}
result <- data.frame(toss_num, probability)
result