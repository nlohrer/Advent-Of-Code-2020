data <- scan("input", what = " ", sep = "\n")

lineLength <- nchar(data[1])

treeAmount <- function(x) {
  amount <- 0
  for (i in 1 : length(data)) {
    pointer <- (x * (i - 1)) %% lineLength + 1
    
    line <- unlist(strsplit(data[i], split = ""))
    if (line[pointer] == "#") {
      amount <- amount + 1
    }
  }
  return(amount)
}

treeAmountLastSlope <- 0
for (i in seq(from = 1, to = length(data), by = 2)) {
  pointer <- floor((i - 1) / 2) %% lineLength + 1
  
  line <- unlist(strsplit(data[i], split = ""))
  if (line[pointer] == "#") {
    treeAmountLastSlope <- treeAmountLastSlope + 1
  }
}


product <- treeAmount(1) * treeAmount(3) * treeAmount(5) * treeAmount(7) * treeAmountLastSlope
print(product)