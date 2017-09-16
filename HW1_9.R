#===============Problem 9 ========================================
simulation <- 100
paulLostCounter <- 0
lindaLostCounter <- 0
for(i in seq(from=0, to=simulation, by=1)){
  paul <- 50
  linda <- 5000
  #if dice == 1, then it's head; if dice == 0, then it's tail
  while (paul > 0 && linda > 0){
    dice <- sample(c(0,1), size=1, replace=TRUE, prob=c(0.5,0.5)) #flip the coin
    if (dice == 0){ #tail, Linda wins
      paul <- paul - 2
      linda <- linda + 2
    } 
    else if (dice == 1) { #head, Paul wins
      linda <- linda - 2
      paul <- paul + 2
    } 
  }
  if (paul <= 0) { 
    paulLostCounter <- paulLostCounter + 1 
  }
  i <- i + 1;
}
probPualLost <- paulLostCounter / simulation
probPualLost #0.495 #0.91 #1.01