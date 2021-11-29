nums <- scan("input.txt", sep="\n")

findSolution <- function(list) {
  for (i in list) {
    for (j in list) {
      for (k in list) {
        if (i + j + k == 2020) {
          return(i * j * k)
        }
      }
    }
  }
}

print(findSolution(nums))
