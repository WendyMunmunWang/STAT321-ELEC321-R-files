#(b)
lambda <- 42
p_accumulative <- ppois(45, lambda)
1-p_accumulative

#(c)
p_160 <- pbinom(160, size = 200, prob = 0.7745)
p_140 <- pbinom(140, size = 200, prob = 0.7745)
p <- p_160 - p_140