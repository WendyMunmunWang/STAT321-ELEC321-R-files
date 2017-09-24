#===============Problem 6(b)=====================================
simulation_size <- 100
iteration <- 0
min_vec <- c()
while (iteration < simulation_size){
  drawn_chip <- sample(1:100, 5, replace=T)
  min_vec <- c(min_vec, min(drawn_chip))
  iteration <- iteration + 1
}
mean(min_vec)
var(min_vec)
plot(min_vec)