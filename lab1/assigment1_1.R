#1. WAP in R to find the highest of three numbers.

{
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
