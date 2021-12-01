data <- scan("input", what = " ", sep = "\n")

treeAmount <- 0;
for (i in 1 : length(data)) {
  pointer <- (3 * (i - 1)) %% nchar(data[1]) + 1
  line <- unlist(strsplit(data[i], split = ""))
  if (line[pointer] == "#") {
    treeAmount <- treeAmount + 1
  }
}

print(treeAmount)