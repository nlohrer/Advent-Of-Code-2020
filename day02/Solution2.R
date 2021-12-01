data <- read.table("input", sep = ":")

#returns a vector with the lowest and highest number of times a letter should appear in a password as well as the number itself
splitPolicy <- function(code) {
  firstSplit <- unlist(strsplit(code, " "))
  letter <- firstSplit[2]
  numSplit <- unlist(strsplit(firstSplit[1], "-"))
  return(c(numSplit, letter))
}

checkValidity <- function(policyVector, password) {
  firstPosition <- as.numeric(policyVector[1])
  secondPosition <- as.numeric(policyVector[2])
  letter <- policyVector[3]
  
  splitPassword <- unlist(strsplit(password, ""))[-1]
  if ((splitPassword[firstPosition] == letter | splitPassword[secondPosition] == letter) & !(splitPassword[firstPosition] == letter & splitPassword[secondPosition] == letter)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

codes <- lapply(data[,1], splitPolicy)
passwords <- data[,2]

amountOfValidPasswords <- sum(mapply(checkValidity, codes, passwords))
print(amountOfValidPasswords)