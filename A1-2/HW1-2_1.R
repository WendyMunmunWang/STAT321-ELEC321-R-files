#===============Problem 1.4=====================================
#use numeration to represent different color in the array
#1 represents green ball
#2 represents red ball
#3 represents blue ball
urn <- c(1, 1, 1, 1, 1, 1, 
         2, 2, 2, 2, 2, 2, 
         3, 3, 3 ,3 ,3, 3, 
         3, 3)

simulate_size <- 100
iteration <- simulate_size
red_count <- 0
red_collect <- c()
while (iteration > 0){
  sample_balls <- sample(urn, 3)
  sample_table <- as.data.frame(table(sample_balls))
  red_count <- red_count + sample_table[1,]$Freq
  red_collect <- c(red_collect, sample_table[1,]$Freq)
  iteration <- iteration - 1
}
probability_red <- red_count / (3 * simulate_size)
expected_red <- probability_red * 3
plot(red_collect)