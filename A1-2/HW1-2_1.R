#===============Problem 1.4=====================================
#use numeration to represent different color in the array
#1 represents green ball
#2 represents red ball
#3 represents blue ball
urn <- c(1, 1, 1, 1, 1, 1, 
         2, 2, 2, 2, 2, 2, 
         3, 3, 3 ,3 ,3, 3, 
         3, 3)

simulate_size <- 1000
iteration <- simulate_size
red_count <- 0
red_collect <- c()
while (iteration > 0){
  sample_balls <- sample(urn, 3)
  sample_table <- as.data.frame(table(sample_balls))
  if (sample_table[1,]$sample_balls == 1){
    red_count <- red_count + sample_table[1,]$Freq
    red_collect <- c(red_collect, sample_table[1,]$Freq)
  }
  iteration <- iteration - 1
}
red_df <- as.data.frame(table(red_collect)) #convert red_collect to see the frequency for how many red balls are picked
prob_red_1 <- red_df[1,]$Freq / simulate_size
prob_red_2 <- red_df[2,]$Freq / simulate_size
prob_red_3 <- red_df[3,]$Freq / simulate_size
prob_red_1 * 1 + prob_red_2 * 2 + prob_red_3 * 3