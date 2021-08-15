#3. Write the above two programs in R using functions.

#to find the highest of three numbers.

Highestofthree <- function(){
  x <- as.integer(readline(prompt = "Enter first number :"))
  y <- as.integer(readline(prompt = "Enter second number :"))
  z <- as.integer(readline(prompt = "Enter third number :"))
  
  if (x > y) {
    if (x > z)
      print(paste("Greatest is :", x))
    else
      print(paste("Greatest is :", z))
  } else  {
    if (y > z)
      print(paste("Greatest is :", y))
    else{
      print(paste("Greatest is :", z))
    }
  }
  
}

#the sum of n natural numbers
sumofn <- function(){
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
}
# Function call
print("1.Highest of 3 numbers")
print("2.sum of n numbers \n")
choice <- as.integer(readline(prompt="enter your choice"))
if(choice == 1)
{
  Highestofthree()
}
elseif (choice == 2)
{
  sumofn()
}

