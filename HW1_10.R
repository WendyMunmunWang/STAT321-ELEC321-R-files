#===============Problem 10 ========================================
#Since the problem does not state details, I am making my own assumptions here

#Assumptions:
#(1) Since this person is "very wealthy", then I would assume he has a lot of savings, and gets $5000 per month additional to his prior savings
#(2) the even game has 50:50 chance to win
#(3) assume if the person wins the game, he gets $200 (including the money that he puts in to play); if lost, he loses $100


gamble <- function(week_num){
  if(week_num < 0) { stop("week_num cannot go below 0") }
  salary <- 5000
  game_worth <- 100
  game_num <- 0
  savings <- Inf 
  i <- 0
  while (i < week_num){
    win_or_not <- sample(c(0,1), size=1, replace=TRUE, prob=c(0.5,0.5)) #1 is win, 0 is lost 
    if (win_or_not == 0){
      
    }
  }
}

  

