#===============Problem 3.4=====================================
tree_size <- 100
#1 is dead tree is detected by device A
A <- sample(x=c(1,0), tree_size, 0.8) 

#1 is dead tree is detected by device B
B <- sample(x=c(1,0), tree_size, 0.9) 

#1 is dead tree location is pinpointed by device A
A_locate <- sample(x=c(1,0), tree_size, 0.7) 

#1 is dead tree is pinpointed by device B
B_locate <- sample(x=c(1,0), tree_size, 0.4) 