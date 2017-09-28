#===============Problem 8(b)=====================================
iteration <- 0
stimulation_size <- 1000
result <- c()
while (iteration < stimulation_size){
  row_two <- c(0,1)
  row_three <- c()
  row_four <- c()
  row_five <- c()
  row_two_path <- sample(row_two, 1)
  if (row_two_path == 0){
    row_three <- c(0, 1)
  } else if (row_two_path == 1){
    row_three <- c(1, 2)
  }
  row_three_path <- sample(row_three, 1)
  if (row_three_path == 0 || row_three_path == 1){
    row_four <- c(0, 1, 2)
  } else if (row_three_path == 1 || row_three_path == 2){
    row_four <- c(2, 3, 4)
  }
  row_four_path <- sample(row_four, 1)
  if (row_four_path == 0 || row_four_path == 1 || row_four_path == 2){
    row_five <- c(0, 1, 2, 3)
  } else if (row_four_path == 2 || row_four_path == 3 || row_four_path == 4){
    row_five <- c(3, 4, 5)
  }
  row_five_path <- sample(row_five, 1) 
  result <- c(result, row_five_path)
  iteration <- iteration + 1
}
as.data.frame(table(result))
