#2. WAP in R to find display the sum of n natural numbers using loop.

num <- as.integer(readline(prompt = "Enter a number: "))
if(num < 0) {
  print("Enter a positive number")
} else {
  sum <- 0
  while(num > 0) {
    sum <- sum + num
    num <- num - 1
  }
  print(paste("The sum is", sum))
}

