#===============Problem 7=====================================
library(ggplot2)
library(reshape2)
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
df = melt(data.frame(A=twoEn_vec, B=fourEn_vec, p=p_vec), variable.name="metric")
ggplot(df, aes(p, value, fill=metric)) + geom_bar()

