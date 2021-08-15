#2. WAP in R to find display the sum of n natural numbers using loop.

num <- as.integer(readline(prompt = "Enter a number: "))
sum <- 0
for(i in 1:num)
    {
      sum <- sum+i;
      
    }
print(paste("The sum is", sum))




