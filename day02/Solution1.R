data <- read.table("input", sep = ":")
head(data)

#returns a vector with the lowest and highest number of times a letter should appear in a password as well as the number itself
splitPolicy <- function(code) {
  firstSplit <- unlist(strsplit(code, " "))
  letter <- firstSplit[2]
  numSplit <- unlist(strsplit(firstSplit[1], "-"))
  return(c(numSplit, letter))
}

checkValidity <- function(policyVector, password) {
  lowerBound <- as.numeric(policyVector[1])
  upperBound <- as.numeric(policyVector[2])
  letter <- policyVector[3]
  
  splitPassword <- unlist(strsplit(password, ""))
  letterAmount <- sum(splitPassword == letter)
  if (lowerBound <= letterAmount & letterAmount <= upperBound) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

codes <- lapply(data[,1], splitPolicy)
passwords <- data[,2]

amountOfValidPasswords <- sum(mapply(checkValidity, codes, passwords))
print(amountOfValidPasswords)