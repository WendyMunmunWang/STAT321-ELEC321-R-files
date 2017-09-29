#===============Problem 7=====================================
p <- 0
twoEn_vec <- c()
fourEn_vec <- c()
p_vec <- c()
while (p < 1){
  p_twoEngine_arrive <- p + p^2
  p_fourEngine_arrive <- p^2 + p^3 + p^4
  twoEn_vec <- c(twoEn_vec, p_twoEngine_arrive)
  fourEn_vec <- c(fourEn_vec, p_fourEngine_arrive)
  p_vec <- c(p_vec, p)
  p <- p + 0.01
}

data <- structure(twoEn_vec, fourEn_vec, class = "data.frame")
colours <- c("blue", "grey")
barplot(as.matrix(data), main="4-engine plane vs 2-engine plane", beside = TRUE, col = colours)
