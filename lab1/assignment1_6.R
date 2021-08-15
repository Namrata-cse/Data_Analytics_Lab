#Design a simple calculator in R.


add <- function(x, y) {
  return(x + y)
}

subtract <- function(x, y) {
  return(x - y)
}

multiply <- function(x, y) {
  return(x * y)
}

divide <- function(x, y) {
  return(x / y)
}
modulus <-function(x,y){
  return(x %% y)
}
exponential <-function(x,y){
  return(x**y)
}

# take input from the user
print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Modulus")
print("6.Exponential")

choice <- as.integer(readline(prompt="Enter choice[1/2/3/4/5/6]: "))

num1 <- as.integer(readline(prompt="Enter first number: "))
num2 <- as.integer(readline(prompt="Enter second number: "))

operator <- switch(choice,"+","-","*","/","%","**")
result <- switch(choice, add(num1,num2), subtract(num1,num2), multiply(num1,num2), divide(num1,num2),modulus(num1,num2),exponential(num1,num2))

print(paste(num1,operator,num2,"=",result))

