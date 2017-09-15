#===============Problem 5(b)=====================================
simulateSize <- 1000
channel <- sample(c(1, 2, 3), size=simulateSize, replace=TRUE, prob=c(0.5, 0.3, 0.2))

channelTable <- as.data.frame(table(channel))
channelA <- channelTable[1,]$Freq / simulateSize
channelB <- channelTable[2,]$Freq / simulateSize
channelC <- channelTable[3,]$Freq / simulateSize

decodeA <- sample(c(1, 0), size=channelTable[1,]$Freq, replace=TRUE, prob=c(0.8, 0.2))
decodeB <- sample(c(1, 0), size=channelTable[2,]$Freq, replace=TRUE, prob=c(0.8, 0.2))
decodeC <- sample(c(1, 0), size=channelTable[3,]$Freq, replace=TRUE, prob=c(0.8, 0.2))
decodeTableA <- as.data.frame(table(decodeA))
decodeTableB <- as.data.frame(table(decodeB))
decodeTableC <- as.data.frame(table(decodeC))
ProbDecodeA <- decodeTableA[2,]$Freq / channelTable[1,]$Freq
ProbDecodeB <- decodeTableB[2,]$Freq / channelTable[2,]$Freq
ProbDecodeC <- decodeTableC[2,]$Freq / channelTable[3,]$Freq

P_A <- channelA * ProbDecodeA
P_B <- channelB * ProbDecodeB
P_C <- channelC * ProbDecodeC
P_total <- P_A + P_B + P_C
P_total



