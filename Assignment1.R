#===============Problem 5(b)=====================================
channel <- sample(c(1, 2, 3), size=100, replace=TRUE, prob=c(0.5, 0.3, 0.2))
decode <- sample(c(1, 2, 3), size=100, replace=TRUE, prob=c(0.8, 0.9, 0.7))

channeltable <- table(channel)




#===============Problem 9 ========================================
for (i in 1:50){
  paulLostCounter <- 0
  paul <- 50
  linda <- 50
  #if dice == 1, then it's head; if dice == 0, then it's tail
  while (paul > 0 && linda > 0){
    dice <- sample(c(0,1), size=1, replace=TRUE, prob=c(0.5,0.5))
    if (dice == 0){ #tail
      paul <- paul - 2
      linda <- linda + 2
    } 
    else if (dice == 1) { #head
      linda <- linda - 2
      paul <- paul + 2
    } 
  }
  if (paul < 0) { inc(paulLostCounter) }
}



