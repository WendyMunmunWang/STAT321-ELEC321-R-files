#===============Problem 10 ========================================
#Since the problem does not state details, I am making my own assumptions here

#Assumptions:
#(1) Savings starts at $5000 and gets $5000 per month additional to his prior savings
#(2) the even game has 50:50 chance to win
#(3) assume if the person wins the game, he gets $200 (including the money that he puts in to play); if lost, he loses $100

#instructions to run the code:
#(1) Select all and run
#(2) Type gamble(10) or choose other numbers that are positive

gamble <- function(week_num){
  if(week_num < 0) { stop("week_num cannot go below 0") }
  salary <- 5000
  game_worth <- 100
  game_num <- 50
  savings <- 5000 
  i <- 0
  game_restrict_num <- 50
  savings_vec <- numeric()
  games_vec <- numeric()
  weeks_vec <- numeric()
  while (i < week_num){
    game_num <- game_restrict_num 
    if (is.integer(i/4)){  
      savings <- savings + salary 
      games_vec <- c(games_vec, 0) #no game, just getting salary update
      savings_vec <- c(savings_vec, savings) 
    }
    
    while (game_num > 0){
      #the person gets $5000 per month
      win_or_not <- sample(c(0,1), size=1, replace=TRUE, prob=c(0.5,0.5)) #1 is win, 0 is lost 
      if (win_or_not == 0){
        savings <- savings - 200
        if (savings < 0 ){ 
          #result <- data.frame(weeks_vec, games_vec, savings_vec)
          print("this person has no savings") 
          break
        }
      }
      else if (win_or_not == 1){
        savings <- savings + 200
      }
      #update savings for each game
      savings_vec <- c(savings_vec, savings)
      games_vec <- c(games_vec, game_restrict_num - game_num + 1)
      weeks_vec <- c(weeks_vec, i+1)
      game_num <- game_num - 1
    }
    if (savings < 0){ break } 
    i <- i + 1
  }
  result <- data.frame(weeks_vec, games_vec, savings_vec)
  result
}

  

