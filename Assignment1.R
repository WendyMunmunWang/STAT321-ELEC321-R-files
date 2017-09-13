#===============Problem 5(b)=====================================
simulateSize <- 100000
channel <- sample(c(1, 2, 3), size=simulateSize, replace=TRUE, prob=c(0.5, 0.3, 0.2))

channelTable <- as.data.frame(table(channel))
channelA <- channelTable[1,]$Freq / simulateSize
channelB <- channelTable[2,]$Freq / simulateSize
channelC <- channelTable[3,]$Freq / simulateSize

decodeA <- sample(c(1, 0), size=simulateSize, replace=TRUE, prob=c(0.8, 0.2))
decodeB <- sample(c(1, 0), size=simulateSize, replace=TRUE, prob=c(0.8, 0.2))
decodeC <- sample(c(1, 0), size=simulateSize, replace=TRUE, prob=c(0.8, 0.2))
decodeTableA <- as.data.frame(table(decodeA))
decodeTableB <- as.data.frame(table(decodeB))
decodeTableC <- as.data.frame(table(decodeC))
ProbDecodeA <- decodeTableA[2,]$Freq / simulateSize
ProbDecodeB <- decodeTableB[2,]$Freq / simulateSize
ProbDecodeC <- decodeTableC[2,]$Freq / simulateSize

P_A <- channelA * ProbDecodeA
P_B <- channelB * ProbDecodeB
P_C <- channelC * ProbDecodeC
P_total <- P_A + P_B + P_C
P_total

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



