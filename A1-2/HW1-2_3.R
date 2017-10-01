#===============Problem 3.4=====================================
#Problem 3.1 Validation 
simulation_size <- 1000
iteration <- 0
prob_vec <- c()
while (iteration < simulation_size){
  tree_size <- 100
  #1 is dead tree is detected by device A
  A <- sample(x=c(1,0), tree_size, 0.8) 
  
  #1 is dead tree is detected by device B
  B <- sample(x=c(1,0), tree_size, 0.9) 
  index <- 1 #in R, vector index is 1 based
  freq <- 0
  while (index <= tree_size){
    if (B[index] == 1 || A[index] == 1){
      freq <- freq + 1
    }
    index <- index + 1
  }
  prob <- freq / tree_size
  prob_vec <- c(prob_vec, prob)
  iteration <- iteration + 1
}


#Problem 3.2 Validation 
iteration <- 0
prob_one_device <- c()
while (iteration < simulation_size){
  tree_size <- 100
  #1 is dead tree is detected by device A
  A <- sample(x=c(1,0), tree_size, 0.8) 
  
  #1 is dead tree is detected by device B
  B <- sample(x=c(1,0), tree_size, 0.9) 
  index <- 1 #in R, vector index is 1 based
  freq <- 0
  while (index <= tree_size){
    if ((B[index] == 1 || A[index] == 1) && !(B[index] == 1 && A[index] == 1)){
      freq <- freq + 1
    }
    index <- index + 1
  }
  prob <- freq / tree_size
  prob_one_device <- c(prob_one_device, prob)
  iteration <- iteration + 1
}
one_device_table <- as.data.frame(table(prob_one_device))
barplot(one_device_table$Freq, col = "darkgreen", names.arg = one_device_table$prob_one_device, xlab = "Probability", ylab = "Freqencies", main = "Q3.2 Simulation")


#Problem 3.3 Validation 
iteration <- 0
prob_locvec <- c()
while (iteration < simulation_size) {
  #1 is dead tree location is pinpointed by device A
  A_locate <- sample(x=c(1,0), tree_size, 0.7) 
  
  #1 is dead tree is pinpointed by device B
  B_locate <- sample(x=c(1,0), tree_size, 0.4) 
  index <- 1 #in R, vector index is 1 based
  freq <- 0
  while (index <= tree_size){
    if (B[index] == 1 && A[index] == 1){
      freq <- freq + 1
    }
    index <- index + 1
  }
  prob <- freq / tree_size
  prob_locvec <- c(prob_locvec, prob)
  iteration <- iteration + 1
}
location_table <- as.data.frame(table(prob_locvec))
barplot(location_table$Freq, col = "darkgreen", names.arg = location_table$prob_locvec, xlab = "Probability", ylab = "Freqencies", main = "Q3.3 Simulation")
