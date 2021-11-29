nums <- scan("input.txt", sep="\n")

findSolution <- function(list) {
  for (i in list) {
    for (j in list) {
      if (i + j == 2020) {
        return(i * j)
      }
    }
  }
}

print(findSolution(nums))
